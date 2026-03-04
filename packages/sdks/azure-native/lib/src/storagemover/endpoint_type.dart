/// The Endpoint resource type.
enum EndpointType {
  azureStorageBlobContainer("AzureStorageBlobContainer"),
  nfsMount("NfsMount"),
  azureStorageSmbFileShare("AzureStorageSmbFileShare"),
  smbMount("SmbMount");

  const EndpointType(this.wireValue);
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
