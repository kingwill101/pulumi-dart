import 'package:pulumi/pulumi.dart' as pulumi;

/// The Endpoint resource type.
enum EndpointType implements pulumi.PulumiEnum<String> {
  azureStorageBlobContainer("AzureStorageBlobContainer"),
  nfsMount("NfsMount"),
  azureStorageSmbFileShare("AzureStorageSmbFileShare"),
  smbMount("SmbMount");

  const EndpointType(this.wireValue);
  @override
  final String wireValue;

  static EndpointType fromValue(String value) {
    for (final item in EndpointType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EndpointType value: $value');
  }
}
