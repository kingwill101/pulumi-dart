import 'package:pulumi/pulumi.dart' as pulumi;

/// Immutable. Specifies CA configuration.
enum FeatureSpecProvisionGoogleCa implements pulumi.PulumiEnum<String> {
  googleCaProvisioningUnspecified("GOOGLE_CA_PROVISIONING_UNSPECIFIED"),
  disabled("DISABLED"),
  enabled("ENABLED"),
  enabledWithManagedCa("ENABLED_WITH_MANAGED_CA"),
  enabledWithDefaultCa("ENABLED_WITH_DEFAULT_CA");

  const FeatureSpecProvisionGoogleCa(this.wireValue);
  @override
  final String wireValue;

  static FeatureSpecProvisionGoogleCa fromValue(String value) {
    for (final item in FeatureSpecProvisionGoogleCa.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FeatureSpecProvisionGoogleCa value: $value');
  }
}
