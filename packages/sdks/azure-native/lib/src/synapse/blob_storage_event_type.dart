import 'package:pulumi/pulumi.dart' as pulumi;

/// The name of blob storage event type to process.
enum BlobStorageEventType implements pulumi.PulumiEnum<String> {
  valueMicrosoftStorageBlobCreated("Microsoft.Storage.BlobCreated"),
  valueMicrosoftStorageBlobRenamed("Microsoft.Storage.BlobRenamed");

  const BlobStorageEventType(this.wireValue);
  @override
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
