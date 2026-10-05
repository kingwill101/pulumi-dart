import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. The format of the public key.
enum PublicKeyFormat implements pulumi.PulumiEnum<String> {
  keyFormatUnspecified("KEY_FORMAT_UNSPECIFIED"),
  pem("PEM");

  const PublicKeyFormat(this.wireValue);
  @override
  final String wireValue;

  static PublicKeyFormat fromValue(String value) {
    for (final item in PublicKeyFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicKeyFormat value: $value');
  }
}
