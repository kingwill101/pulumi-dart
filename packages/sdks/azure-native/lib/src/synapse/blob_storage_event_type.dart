/// The name of blob storage event type to process.
enum BlobStorageEventType {
  valueMicrosoftStorageBlobCreated("Microsoft.Storage.BlobCreated"),
  valueMicrosoftStorageBlobRenamed("Microsoft.Storage.BlobRenamed");

  const BlobStorageEventType(this.wireValue);
  final String wireValue;

  static BlobStorageEventType fromValue(String value) {
    for (final item in BlobStorageEventType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BlobStorageEventType value: $value');
  }
}
