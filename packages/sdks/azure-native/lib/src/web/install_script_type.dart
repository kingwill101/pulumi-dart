/// Type of the install script.
enum InstallScriptType {
  remoteAzureBlob("RemoteAzureBlob"),
  platformStorage("PlatformStorage");

  const InstallScriptType(this.wireValue);
  final String wireValue;

  static InstallScriptType fromValue(String value) {
    for (final item in InstallScriptType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstallScriptType value: $value');
  }
}
