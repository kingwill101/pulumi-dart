/// Specifies the storage class to set on objects being transferred to Google Cloud Storage buckets. If unspecified, the default behavior is the same as STORAGE_CLASS_DESTINATION_BUCKET_DEFAULT.
enum MetadataOptionsStorageClass {
  storageClassUnspecified("STORAGE_CLASS_UNSPECIFIED"),
  storageClassDestinationBucketDefault(
    "STORAGE_CLASS_DESTINATION_BUCKET_DEFAULT",
  ),
  storageClassPreserve("STORAGE_CLASS_PRESERVE"),
  storageClassStandard("STORAGE_CLASS_STANDARD"),
  storageClassNearline("STORAGE_CLASS_NEARLINE"),
  storageClassColdline("STORAGE_CLASS_COLDLINE"),
  storageClassArchive("STORAGE_CLASS_ARCHIVE");

  const MetadataOptionsStorageClass(this.wireValue);
  final String wireValue;

  static MetadataOptionsStorageClass fromValue(String value) {
    for (final item in MetadataOptionsStorageClass.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MetadataOptionsStorageClass value: $value');
  }
}
