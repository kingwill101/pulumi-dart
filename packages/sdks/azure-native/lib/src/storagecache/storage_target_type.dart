/// Type of the Storage Target.
enum StorageTargetType {
  valueNfs3("nfs3"),
  valueClfs("clfs"),
  valueUnknown("unknown"),
  valueBlobNfs("blobNfs");

  const StorageTargetType(this.wireValue);
  final String wireValue;

  static StorageTargetType fromValue(String value) {
    for (final item in StorageTargetType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageTargetType value: $value');
  }
}

