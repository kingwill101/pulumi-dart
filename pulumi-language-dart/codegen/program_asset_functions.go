package codegen

func lowerAssetBuiltin(name string, arguments []string) (string, error, bool) {
	constructors := map[string]string{
		"stringAsset":   "pulumi.StringAsset",
		"fileAsset":     "pulumi.FileAsset",
		"remoteAsset":   "pulumi.RemoteAsset",
		"fileArchive":   "pulumi.FileArchive",
		"remoteArchive": "pulumi.RemoteArchive",
		"assetArchive":  "pulumi.AssetArchive",
	}
	constructor, ok := constructors[name]
	if !ok {
		return "", nil, false
	}
	value, err := oneArgumentBuiltin(name, arguments, constructor)
	return value, err, true
}
