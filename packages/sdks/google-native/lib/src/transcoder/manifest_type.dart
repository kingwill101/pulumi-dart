/// Required. Type of the manifest.
enum ManifestType {
  manifestTypeUnspecified("MANIFEST_TYPE_UNSPECIFIED"),
  hls("HLS"),
  dash("DASH");

  const ManifestType(this.wireValue);
  final String wireValue;

  static ManifestType fromValue(String value) {
    for (final item in ManifestType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManifestType value: $value');
  }
}
