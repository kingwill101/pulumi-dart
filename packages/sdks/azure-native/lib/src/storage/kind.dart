import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. Indicates the type of storage account.
enum Kind implements pulumi.PulumiEnum<String> {
  valueStorage("Storage"),
  valueStorageV2("StorageV2"),
  valueBlobStorage("BlobStorage"),
  valueFileStorage("FileStorage"),
  valueBlockBlobStorage("BlockBlobStorage");

  const Kind(this.wireValue);
  @override
  final String wireValue;

  static Kind fromValue(String value) {
    for (final item in Kind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Kind value: $value');
  }
}
