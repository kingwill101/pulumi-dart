import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. Type of the manifest.
enum ManifestType implements pulumi.PulumiEnum<String> {
  manifestTypeUnspecified("MANIFEST_TYPE_UNSPECIFIED"),
  hls("HLS"),
  dash("DASH");

  const ManifestType(this.wireValue);
  @override
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
