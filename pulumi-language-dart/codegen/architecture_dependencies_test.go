package codegen_test

import (
	"go/parser"
	"go/token"
	"os"
	"strconv"
	"strings"
	"testing"

	"github.com/stretchr/testify/require"
)

const codegenImportPrefix = "github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/"

var allowedInternalImports = map[string]map[string]bool{
	"dartir":   {},
	"darttext": {},
	"schemair": {},
	"render":   {"dartir": true, "darttext": true},
	"lower":    {"dartir": true, "darttext": true, "render": true, "schemair": true},
}

func TestCorePackageDependencyDirection(t *testing.T) {
	for packageName, allowed := range allowedInternalImports {
		packageName, allowed := packageName, allowed
		t.Run(packageName, func(t *testing.T) {
			for _, imported := range packageImports(t, packageName) {
				if !strings.HasPrefix(imported, codegenImportPrefix) {
					continue
				}
				dependency := strings.TrimPrefix(imported, codegenImportPrefix)
				require.Truef(t, allowed[dependency], "%s must not import %s", packageName, dependency)
			}
		})
	}
}

func TestCorePackagesDoNotImportSideEffectAPIs(t *testing.T) {
	for packageName := range allowedInternalImports {
		for _, imported := range packageImports(t, packageName) {
			require.NotContains(t, []string{"net/http", "os", "os/exec"}, imported,
				"%s core package must remain side-effect free", packageName)
		}
	}
}

func TestCodegenPlanningDoesNotImportSideEffectAPIs(t *testing.T) {
	for _, imported := range packageImports(t, ".") {
		require.NotContains(t, []string{"net/http", "os", "os/exec"}, imported,
			"codegen planning must receive host state as explicit inputs")
	}
}

func packageImports(t *testing.T, packageName string) []string {
	t.Helper()
	productionFile := func(info os.FileInfo) bool {
		return !strings.HasSuffix(info.Name(), "_test.go")
	}
	packages, err := parser.ParseDir(token.NewFileSet(), packageName, productionFile, parser.ImportsOnly)
	require.NoError(t, err)

	var imports []string
	for _, parsedPackage := range packages {
		for _, file := range parsedPackage.Files {
			for _, spec := range file.Imports {
				path, err := strconv.Unquote(spec.Path.Value)
				require.NoError(t, err)
				imports = append(imports, path)
			}
		}
	}
	return imports
}
