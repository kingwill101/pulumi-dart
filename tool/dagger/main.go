package main

import (
	"context"
	"encoding/json"
	"errors"
	"flag"
	"fmt"
	"os"
	"path/filepath"
	"strings"

	"dagger.io/dagger"
)

const (
	daggerVersion = "v0.21.8"
	dartVersion   = "3.11.0"
	goVersion     = "1.25.6"
	nodeVersion   = "22"
	pulumiVersion = "3.225.1"
	uvVersion     = "0.12.5"
	containerPath = "/opt/pulumi:/usr/lib/dart/bin:/usr/local/go/bin:/usr/local/bin:/usr/bin:/bin"
)

func main() {
	if err := run(context.Background(), os.Args[1:]); err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(1)
	}
}

func run(ctx context.Context, args []string) error {
	if len(args) == 0 {
		return usageError("missing command")
	}

	if args[0] == "status" {
		return runStatus(args[1:])
	}

	client, err := dagger.Connect(ctx, dagger.WithLogOutput(os.Stderr))
	if err != nil {
		return fmt.Errorf("connect to Dagger: %w", err)
	}
	defer client.Close()

	pipeline := &pipeline{client: client}
	switch args[0] {
	case "prepare":
		return pipeline.prepare(ctx, args[1:])
	case "integration":
		return pipeline.integration(ctx, args[1:])
	default:
		return usageError("unknown command %q", args[0])
	}
}

type pipeline struct {
	client *dagger.Client
}

func (p *pipeline) prepare(ctx context.Context, args []string) error {
	flags := flag.NewFlagSet("prepare", flag.ContinueOnError)
	flags.SetOutput(os.Stderr)
	source := flags.String("source", ".", "repository source directory")
	output := flags.String("output", ".dagger-ci", "host artifact directory")
	partitions := flags.Int("partitions", 8, "number of integration partitions")
	if err := flags.Parse(args); err != nil {
		return err
	}
	if flags.NArg() != 0 {
		return usageError("unexpected prepare arguments: %s", strings.Join(flags.Args(), " "))
	}
	if *partitions < 1 {
		return usageError("--partitions must be at least 1")
	}

	prepared := p.repositoryContainer(*source).
		WithExec([]string{"mkdir", "-p", "/out/bin"}).
		WithWorkdir("/src").
		WithExec([]string{"dart", "pub", "get"}).
		WithExec([]string{
			"dart", "compile", "exe", "tool/pulumi_dart.dart",
			"-o", "/out/bin/pulumi-dart-tool",
		}).
		WithExec([]string{
			"dart", "compile", "exe", "tool/kernel_launcher.dart",
			"-o", "/out/bin/pulumi-dart-kernel-launcher",
		}).
		WithWorkdir("/src/pulumi-language-dart").
		WithExec([]string{"go", "build", "-o", "/out/bin/pulumi-language-dart", "."}).
		WithWorkdir("/src/integration_tests").
		WithExec([]string{
			"go", "test", "-c",
			"-o", "/out/bin/pulumi-dart-integration-tests",
			"github.com/pulumi-dart/integration_tests",
		}).
		WithWorkdir("/src").
		WithExec([]string{
			"/out/bin/pulumi-dart-tool",
			"integration", "prewarm",
			"--root", "/src/integration_tests",
			"--output", "/out/prewarm",
			"--launcher-template", "/out/bin/pulumi-dart-kernel-launcher",
			"--dart-sdk-version", dartVersion,
			"--jobs", "4",
		})

	matrix, err := prepared.
		WithExec([]string{
			"/out/bin/pulumi-dart-tool",
			"integration", "matrix",
			"--package-dir", "/src/integration_tests",
			"--binary", "/out/bin/pulumi-dart-integration-tests",
			"--partitions", fmt.Sprint(*partitions),
		}).
		Stdout(ctx)
	if err != nil {
		return fmt.Errorf("build integration matrix: %w", err)
	}
	matrix = strings.TrimSpace(matrix)
	if !json.Valid([]byte(matrix)) {
		return fmt.Errorf("integration matrix is not valid JSON: %q", matrix)
	}

	artifacts := p.client.Directory().
		WithFile(
			"bin/pulumi-dart-tool",
			prepared.File("/out/bin/pulumi-dart-tool"),
		).
		WithFile(
			"bin/pulumi-language-dart",
			prepared.File("/out/bin/pulumi-language-dart"),
		).
		WithFile(
			"bin/pulumi-dart-integration-tests",
			prepared.File("/out/bin/pulumi-dart-integration-tests"),
		).
		WithDirectory("prewarm", prepared.Directory("/out/prewarm")).
		WithNewFile("matrix.json", matrix+"\n")

	outputPath, err := filepath.Abs(*output)
	if err != nil {
		return fmt.Errorf("resolve output path: %w", err)
	}
	if err := os.RemoveAll(outputPath); err != nil {
		return fmt.Errorf("remove stale output directory: %w", err)
	}
	if _, err := artifacts.Export(ctx, outputPath); err != nil {
		return fmt.Errorf("export prepared integration artifacts: %w", err)
	}

	// Keep stdout machine-readable: dagger-for-github exposes it as a step output.
	fmt.Println(matrix)
	return nil
}

func (p *pipeline) integration(ctx context.Context, args []string) error {
	flags := flag.NewFlagSet("integration", flag.ContinueOnError)
	flags.SetOutput(os.Stderr)
	source := flags.String("source", ".", "repository source directory")
	artifactsPath := flags.String("artifacts", ".dagger-ci", "prepared artifact directory")
	tests := flags.String("tests", "", "comma-separated integration test names")
	timeout := flags.String("timeout", "60m", "Go test timeout")
	parallel := flags.Int("parallel", 4, "Go test parallelism")
	cloud := flags.Bool("cloud", false, "require and mount the Pulumi access token")
	if err := flags.Parse(args); err != nil {
		return err
	}
	if flags.NArg() != 0 {
		return usageError("unexpected integration arguments: %s", strings.Join(flags.Args(), " "))
	}
	if strings.TrimSpace(*tests) == "" {
		return usageError("--tests is required")
	}
	if *parallel < 1 {
		return usageError("--parallel must be at least 1")
	}

	container := p.repositoryContainer(*source).
		WithDirectory("/artifacts", p.client.Host().Directory(*artifactsPath)).
		WithEnvVariable("PATH", "/artifacts/bin:"+containerPath).
		WithExec([]string{
			"chmod", "+x",
			"/artifacts/bin/pulumi-dart-tool",
			"/artifacts/bin/pulumi-language-dart",
			"/artifacts/bin/pulumi-dart-integration-tests",
		}).
		WithExec([]string{
			"find", "/artifacts/prewarm/bin", "-type", "f",
			"-exec", "chmod", "+x", "{}", "+",
		}).
		WithExec([]string{
			"/artifacts/bin/pulumi-dart-tool",
			"integration", "apply-prewarm",
			"--root", "/src/integration_tests",
			"--manifest", "/artifacts/prewarm/manifest.json",
			"--artifact-root", "/artifacts/prewarm",
		})

	if token := strings.TrimSpace(os.Getenv("PULUMI_ACCESS_TOKEN")); token != "" {
		container = container.WithSecretVariable(
			"PULUMI_ACCESS_TOKEN",
			p.client.SetSecret("pulumi-access-token", token),
		)
	} else if *cloud {
		return errors.New("PULUMI_ACCESS_TOKEN is required for cloud integration tests")
	}

	_, err := container.
		WithWorkdir("/src").
		WithExec([]string{
			"/artifacts/bin/pulumi-dart-tool",
			"integration", "run",
			"--package-dir", "/src/integration_tests",
			"--binary", "/artifacts/bin/pulumi-dart-integration-tests",
			"--tests", *tests,
			"--timeout", *timeout,
			"--parallel", fmt.Sprint(*parallel),
		}).
		Sync(ctx)
	if err != nil {
		return fmt.Errorf("run Dart integration partition: %w", err)
	}
	return nil
}

func (p *pipeline) repositoryContainer(source string) *dagger.Container {
	sourceDirectory := p.client.Host().Directory(source, dagger.HostDirectoryOpts{
		Exclude: []string{
			".git",
			".dagger-ci",
			".dart_tool",
			".gen",
			"thirdparty/pulumi",
		},
	})
	dartImage := p.client.Container().From("dart:" + dartVersion + "-sdk")
	nodeImage := p.client.Container().From("node:" + nodeVersion + "-bookworm-slim")
	uvImage := p.client.Container().From("ghcr.io/astral-sh/uv:" + uvVersion)

	container := p.client.Container().
		From("golang:"+goVersion+"-bookworm").
		WithDirectory("/usr/lib/dart", dartImage.Directory("/usr/lib/dart")).
		WithFile("/usr/local/bin/node", nodeImage.File("/usr/local/bin/node")).
		WithDirectory(
			"/usr/local/lib/node_modules",
			nodeImage.Directory("/usr/local/lib/node_modules"),
		).
		WithFile("/usr/local/bin/uv", uvImage.File("/uv")).
		WithFile("/usr/local/bin/uvx", uvImage.File("/uvx")).
		WithEnvVariable("PATH", containerPath).
		WithEnvVariable("CI", "true").
		WithEnvVariable("PUB_CACHE", "/root/.pub-cache").
		WithEnvVariable("UV_CACHE_DIR", "/root/.cache/uv").
		WithEnvVariable("PULUMI_HOME", "/root/.pulumi").
		WithEnvVariable("PULUMI_CONFIG_PASSPHRASE", "banana").
		WithEnvVariable("PULUMI_SKIP_UPDATE_CHECK", "true").
		WithMountedCache("/go/pkg/mod", p.client.CacheVolume("pulumi-dart-go-mod")).
		WithMountedCache("/root/.cache/go-build", p.client.CacheVolume("pulumi-dart-go-build")).
		WithMountedCache("/root/.pub-cache", p.client.CacheVolume("pulumi-dart-pub")).
		WithMountedCache("/root/.cache/uv", p.client.CacheVolume("pulumi-dart-uv")).
		WithMountedCache("/root/.pulumi/plugins", p.client.CacheVolume("pulumi-dart-plugins")).
		WithExec([]string{"apt-get", "update"}).
		WithExec([]string{
			"apt-get", "install", "-y", "--no-install-recommends",
			"ca-certificates",
			"curl",
			"git",
			"openssh-client",
			"python3",
			"python-is-python3",
			"unzip",
			"zip",
		}).
		WithExec([]string{"find", "/var/lib/apt/lists", "-mindepth", "1", "-delete"}).
		WithExec([]string{
			"ln", "-sf",
			"/usr/local/lib/node_modules/npm/bin/npm-cli.js",
			"/usr/local/bin/npm",
		}).
		WithExec([]string{
			"ln", "-sf",
			"/usr/local/lib/node_modules/npm/bin/npx-cli.js",
			"/usr/local/bin/npx",
		}).
		WithFile(
			"/tmp/pulumi.tar.gz",
			p.client.HTTP(
				"https://get.pulumi.com/releases/sdk/pulumi-v"+
					pulumiVersion+"-linux-x64.tar.gz",
			),
		).
		WithExec([]string{"mkdir", "-p", "/opt"}).
		WithExec([]string{"tar", "-xzf", "/tmp/pulumi.tar.gz", "-C", "/opt"}).
		WithExec([]string{"rm", "-f", "/tmp/pulumi.tar.gz"}).
		WithDirectory("/src", sourceDirectory).
		WithWorkdir("/src").
		WithExec([]string{"rm", "-rf", "thirdparty/pulumi"}).
		WithExec([]string{
			"git", "clone", "--depth", "1", "--branch", "v" + pulumiVersion,
			"https://github.com/pulumi/pulumi.git", "thirdparty/pulumi",
		})

	return container
}

func runStatus(args []string) error {
	flags := flag.NewFlagSet("status", flag.ContinueOnError)
	flags.SetOutput(os.Stderr)
	prepare := flags.String("prepare", "", "prepare job result")
	core := flags.String("core", "", "core matrix job result")
	cloud := flags.String("cloud", "", "cloud job result")
	if err := flags.Parse(args); err != nil {
		return err
	}
	if flags.NArg() != 0 {
		return usageError("unexpected status arguments: %s", strings.Join(flags.Args(), " "))
	}

	results := map[string]string{
		"prepare": *prepare,
		"core":    *core,
		"cloud":   *cloud,
	}
	for name, result := range results {
		if name == "cloud" && (result == "success" || result == "skipped") {
			continue
		}
		if result != "success" {
			return fmt.Errorf("%s integration job result was %q", name, result)
		}
	}
	fmt.Printf("Dagger integration CI succeeded (%s)\n", daggerVersion)
	return nil
}

func usageError(format string, args ...any) error {
	return fmt.Errorf(format+"\n\nusage:\n"+
		"  go run . prepare --source <repo> --output <dir> [--partitions 8]\n"+
		"  go run . integration --source <repo> --artifacts <dir> --tests <csv>\n"+
		"  go run . status --prepare <result> --core <result> --cloud <result>", args...)
}
