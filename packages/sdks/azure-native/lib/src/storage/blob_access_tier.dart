/// The access tier of a storage blob.
enum BlobAccessTier {
  valueHot("Hot"),
  valueCool("Cool"),
  valueArchive("Archive");

  const BlobAccessTier(this.value);
  final String value;

  static BlobAccessTier fromValue(String value) {
    for (final item in BlobAccessTier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BlobAccessTier value: $value');
  }
}

