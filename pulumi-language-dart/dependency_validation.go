package main

import (
	"fmt"
	"io"
	"net/http"
	"net/url"
	"os"
	"path/filepath"
	"strings"
	"time"
)

const defaultPubDevAPIBaseURL = "https://pub.dev/api/packages"

func isTruthyEnv(value string) bool {
	switch strings.ToLower(strings.TrimSpace(value)) {
	case "1", "true", "yes", "on":
		return true
	default:
		return false
	}
}

func shouldValidateDependencyPaths() bool {
	return isTruthyEnv(os.Getenv("PULUMI_DART_VALIDATE_DEPENDENCY_PATHS"))
}

func shouldValidatePubDevDependencies() bool {
	return isTruthyEnv(os.Getenv("PULUMI_DART_VALIDATE_PUBDEV"))
}

func dependencyPath(spec interface{}) (string, bool) {
	switch typed := spec.(type) {
	case map[string]string:
		path := strings.TrimSpace(typed["path"])
		return path, path != ""
	case map[string]interface{}:
		path, ok := typed["path"].(string)
		if !ok {
			return "", false
		}
		path = strings.TrimSpace(path)
		return path, path != ""
	default:
		return "", false
	}
}

func shouldValidateDependencyOnPubDev(spec interface{}) bool {
	switch typed := spec.(type) {
	case string:
		raw := strings.TrimSpace(typed)
		if raw == "" {
			return false
		}
		if strings.HasPrefix(raw, "path:") || strings.HasPrefix(raw, "git:") || strings.HasPrefix(raw, "sdk:") {
			return false
		}
		return true
	case map[string]string:
		if _, ok := typed["path"]; ok {
			return false
		}
		if _, ok := typed["git"]; ok {
			return false
		}
		if _, ok := typed["sdk"]; ok {
			return false
		}
		if _, ok := typed["hosted"]; ok {
			return false
		}
		if _, ok := typed["version"]; ok {
			return true
		}
	case map[string]interface{}:
		if _, ok := typed["path"]; ok {
			return false
		}
		if _, ok := typed["git"]; ok {
			return false
		}
		if _, ok := typed["sdk"]; ok {
			return false
		}
		if _, ok := typed["hosted"]; ok {
			return false
		}
		if _, ok := typed["version"]; ok {
			return true
		}
	}
	return false
}

func pubDevPackageExists(name string) (bool, error) {
	name = strings.TrimSpace(name)
	if name == "" {
		return false, nil
	}

	baseURL := strings.TrimSpace(os.Getenv("PULUMI_DART_PUBDEV_API_BASE_URL"))
	if baseURL == "" {
		baseURL = defaultPubDevAPIBaseURL
	}
	requestURL := strings.TrimRight(baseURL, "/") + "/" + url.PathEscape(name)

	client := &http.Client{Timeout: 10 * time.Second}
	resp, err := client.Get(requestURL)
	if err != nil {
		return false, fmt.Errorf("failed to query pub.dev for %s: %w", name, err)
	}
	defer resp.Body.Close()
	_, _ = io.Copy(io.Discard, resp.Body)

	switch resp.StatusCode {
	case http.StatusOK:
		return true, nil
	case http.StatusNotFound:
		return false, nil
	default:
		return false, fmt.Errorf("unexpected pub.dev status for %s: %d", name, resp.StatusCode)
	}
}

func validateGeneratedPubspecDependencies(pubspec PubSpec, packageDir string) error {
	packageName := strings.TrimSpace(pubspec.Name)
	if packageName == "" {
		return nil
	}
	if _, hasSelfDependency := pubspec.Dependencies[packageName]; hasSelfDependency {
		return fmt.Errorf("generated pubspec has a self dependency on %q", packageName)
	}

	validatePaths := shouldValidateDependencyPaths()
	validatePubDev := shouldValidatePubDevDependencies()
	if !validatePaths && !validatePubDev {
		return nil
	}

	for depName, spec := range pubspec.Dependencies {
		depName = strings.TrimSpace(depName)
		if depName == "" {
			continue
		}

		if validatePaths {
			if rawPath, ok := dependencyPath(spec); ok {
				resolved := rawPath
				if !filepath.IsAbs(resolved) {
					resolved = filepath.Join(packageDir, resolved)
				}
				if _, err := os.Stat(resolved); err != nil {
					return fmt.Errorf(
						"dependency %q path does not exist: %s",
						depName,
						filepath.Clean(resolved),
					)
				}
			}
		}

		if validatePubDev && shouldValidateDependencyOnPubDev(spec) {
			exists, err := pubDevPackageExists(depName)
			if err != nil {
				return err
			}
			if !exists {
				return fmt.Errorf("dependency %q was not found on pub.dev", depName)
			}
		}
	}

	return nil
}
