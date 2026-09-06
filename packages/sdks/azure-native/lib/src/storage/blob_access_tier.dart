import 'package:pulumi/pulumi.dart' as pulumi;

/// The access tier of a storage blob.
enum BlobAccessTier implements pulumi.PulumiEnum<String> {
  valueHot("Hot"),
  valueCool("Cool"),
  valueArchive("Archive");

  const BlobAccessTier(this.wireValue);
  @override
  final String wireValue;

  static BlobAccessTier fromValue(String value) {
    for (final item in BlobAccessTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BlobAccessTier value: $value');
  }
}
