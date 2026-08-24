package main

import (
	"encoding/json"
	"fmt"
	"os"
	"path/filepath"
	"strings"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen"
	pulumirpc "github.com/pulumi/pulumi/sdk/v3/proto/go"
	"gopkg.in/yaml.v3"
)

func buildGeneratedPackagePubspec(
	req *pulumirpc.GeneratePackageRequest,
	schemaResult generatedPackageSchemaResult,
	packageName string,
	rawSchema string,
) (codegen.PubSpec, error) {
	required := requiredDartDependencies(
		schemaResult.packageSpec,
		rawSchema,
		schemaResult.spec.Name,
		req.GetDirectory(),
	)
	localDependencies := dartPackageLocalDependencies(req.GetLocalDependencies(), required)
	if strings.TrimSpace(localDependencies["pulumi"]) == "" {
		if path := inferLocalPulumiDependencyFromProject(req.GetDirectory()); path != "" {
			localDependencies["pulumi"] = path
		}
	}
	pubspec := codegen.BuildGeneratedPubspec(packageName, localDependencies, required, configuredPulumiDependency())
	if shouldUseWorkspaceResolution(req.GetDirectory()) {
		pubspec.Resolution = "workspace"
		applyWorkspacePulumiDependencyVersion(&pubspec, req.GetDirectory())
	}
	applyLocalPathPublishPolicy(&pubspec)
	codegen.ApplyPackageMetadataToPubspec(&pubspec, schemaResult.spec)
	if configured := strings.TrimSpace(os.Getenv("PULUMI_DART_FALSE_SECRETS")); configured != "" {
		if err := json.Unmarshal([]byte(configured), &pubspec.FalseSecrets); err != nil {
			return codegen.PubSpec{}, fmt.Errorf("invalid PULUMI_DART_FALSE_SECRETS JSON: %w", err)
		}
	}
	if publishTo := strings.TrimSpace(os.Getenv("PULUMI_DART_PUBLISH_TO")); publishTo != "" {
		pubspec.PublishTo = publishTo
	}
	if strings.TrimSpace(pubspec.Description) == "" {
		pubspec.Description = fmt.Sprintf("A Pulumi SDK package for %s.", schemaResult.spec.Name)
	}
	pubspec.Version = codegen.GeneratedSDKPackageVersion(
		schemaResult.spec.Version,
		os.Getenv("PULUMI_DART_SDK_VERSION"),
		os.Getenv("PULUMI_DART_SDK_VERSION_SUFFIX"),
	)
	if err := validateGeneratedPubspecDependencies(pubspec, req.GetDirectory()); err != nil {
		return codegen.PubSpec{}, err
	}
	return pubspec, nil
}

func writeGeneratedPubspec(directory string, generated codegen.PubSpec, record func(string)) error {
	if err := os.MkdirAll(directory, 0o700); err != nil {
		return fmt.Errorf("failed to create SDK directory: %w", err)
	}
	path := filepath.Join(directory, "pubspec.yaml")
	if _, err := os.Stat(path); os.IsNotExist(err) {
		contents, marshalErr := yaml.Marshal(generated)
		if marshalErr != nil {
			return fmt.Errorf("failed to marshal generated pubspec.yaml: %w", marshalErr)
		}
		if writeErr := os.WriteFile(path, contents, 0o600); writeErr != nil {
			return fmt.Errorf("failed to write generated pubspec.yaml: %w", writeErr)
		}
		record(path)
		return nil
	} else if err != nil {
		return fmt.Errorf("failed to check existing pubspec.yaml: %w", err)
	}
	return updateExistingGeneratedPubspec(path, generated)
}

func updateExistingGeneratedPubspec(path string, generated codegen.PubSpec) error {
	existing, err := readAndParsePubspec(path)
	if err != nil {
		return fmt.Errorf("failed to parse existing pubspec.yaml: %w", err)
	}
	mutated := applyGeneratedPulumiDependency(existing, &generated)
	mutated = applyLocalPathPublishPolicy(existing) || mutated
	missing := missingRequiredDependencies(existing, generated.Dependencies)
	if len(missing) > 0 && !shouldUpdateExistingPubspec() {
		return fmt.Errorf("existing pubspec.yaml is missing required dependencies: %s (add to dependencies or dependency_overrides, or set PULUMI_DART_UPDATE_EXISTING_PUBSPEC=true)", strings.Join(missing, ", "))
	}
	if len(missing) > 0 {
		mutated = true
		if existing.Dependencies == nil {
			existing.Dependencies = map[string]interface{}{}
		}
		for _, name := range missing {
			existing.Dependencies[name] = generated.Dependencies[name]
		}
	}
	if !mutated {
		return nil
	}
	contents, err := yaml.Marshal(existing)
	if err != nil {
		return fmt.Errorf("failed to marshal updated existing pubspec.yaml: %w", err)
	}
	if err := os.WriteFile(path, contents, 0o600); err != nil {
		return fmt.Errorf("failed to update existing pubspec.yaml: %w", err)
	}
	return nil
}
