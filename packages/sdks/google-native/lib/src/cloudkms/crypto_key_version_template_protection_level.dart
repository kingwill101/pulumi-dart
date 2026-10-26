import 'package:pulumi/pulumi.dart' as pulumi;

/// ProtectionLevel to use when creating a CryptoKeyVersion based on this template. Immutable. Defaults to SOFTWARE.
enum CryptoKeyVersionTemplateProtectionLevel implements pulumi.PulumiEnum<String> {
  protectionLevelUnspecified("PROTECTION_LEVEL_UNSPECIFIED"),
  software("SOFTWARE"),
  hsm("HSM"),
  external("EXTERNAL"),
  externalVpc("EXTERNAL_VPC");

  const CryptoKeyVersionTemplateProtectionLevel(this.wireValue);
  @override
  final String wireValue;

  static CryptoKeyVersionTemplateProtectionLevel fromValue(String value) {
    for (final item in CryptoKeyVersionTemplateProtectionLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CryptoKeyVersionTemplateProtectionLevel value: $value');
  }
}
