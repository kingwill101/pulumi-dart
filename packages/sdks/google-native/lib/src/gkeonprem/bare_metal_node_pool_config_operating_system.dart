import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the nodes operating system (default: LINUX).
enum BareMetalNodePoolConfigOperatingSystem implements pulumi.PulumiEnum<String> {
  operatingSystemUnspecified("OPERATING_SYSTEM_UNSPECIFIED"),
  linux("LINUX");

  const BareMetalNodePoolConfigOperatingSystem(this.wireValue);
  @override
  final String wireValue;

  static BareMetalNodePoolConfigOperatingSystem fromValue(String value) {
    for (final item in BareMetalNodePoolConfigOperatingSystem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BareMetalNodePoolConfigOperatingSystem value: $value');
  }
}
