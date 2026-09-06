import 'package:pulumi/pulumi.dart' as pulumi;

/// Mounting protocol to use for the storage account.
enum AzureStorageProtocol implements pulumi.PulumiEnum<String> {
  smb("Smb"),
  http("Http"),
  nfs("Nfs");

  const AzureStorageProtocol(this.wireValue);
  @override
  final String wireValue;

  static AzureStorageProtocol fromValue(String value) {
    for (final item in AzureStorageProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureStorageProtocol value: $value');
  }
}
