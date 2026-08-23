package dartir

type PackageRegistration struct {
	PluginName     string
	PluginVersion  string
	DownloadURL    string
	PackageName    string
	PackageVersion string
	Value          []byte
}
