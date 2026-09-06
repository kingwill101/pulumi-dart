import 'package:pulumi/pulumi.dart' as pulumi;

/// License type for bringing your own license scenario.
enum IntegrationRuntimeLicenseType implements pulumi.PulumiEnum<String> {
  valueBasePrice("BasePrice"),
  valueLicenseIncluded("LicenseIncluded");

  const IntegrationRuntimeLicenseType(this.wireValue);
  @override
  final String wireValue;

  static IntegrationRuntimeLicenseType fromValue(String value) {
    for (final item in IntegrationRuntimeLicenseType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IntegrationRuntimeLicenseType value: $value');
  }
}
