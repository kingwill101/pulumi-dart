/// Specifies how each file's POSIX group ID (GID) attribute should be handled by the transfer. By default, GID is not preserved. Only applicable to transfers involving POSIX file systems, and ignored for other transfers.
enum MetadataOptionsGid {
  gidUnspecified("GID_UNSPECIFIED"),
  gidSkip("GID_SKIP"),
  gidNumber("GID_NUMBER");

  const MetadataOptionsGid(this.wireValue);
  final String wireValue;

  static MetadataOptionsGid fromValue(String value) {
    for (final item in MetadataOptionsGid.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MetadataOptionsGid value: $value');
  }
}
