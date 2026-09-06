import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of the install script.
enum InstallScriptType implements pulumi.PulumiEnum<String> {
  remoteAzureBlob("RemoteAzureBlob"),
  platformStorage("PlatformStorage");

  const InstallScriptType(this.wireValue);
  @override
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
