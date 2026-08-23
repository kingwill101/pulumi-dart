package dartir

type PackageRegistration struct {
	IsExtension    bool
	PluginName     string
	PluginVersion  string
	DownloadURL    string
	PackageName    string
	PackageVersion string
	Value          []byte
}
