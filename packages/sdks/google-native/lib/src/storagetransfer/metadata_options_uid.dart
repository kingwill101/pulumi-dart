/// Specifies how each file's POSIX user ID (UID) attribute should be handled by the transfer. By default, UID is not preserved. Only applicable to transfers involving POSIX file systems, and ignored for other transfers.
enum MetadataOptionsUid {
  uidUnspecified("UID_UNSPECIFIED"),
  uidSkip("UID_SKIP"),
  uidNumber("UID_NUMBER");

  const MetadataOptionsUid(this.wireValue);
  final String wireValue;

  static MetadataOptionsUid fromValue(String value) {
    for (final item in MetadataOptionsUid.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MetadataOptionsUid value: $value');
  }
}
