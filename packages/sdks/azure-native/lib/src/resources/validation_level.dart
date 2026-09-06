import 'package:pulumi/pulumi.dart' as pulumi;

/// The validation level of the deployment stack
enum ValidationLevel implements pulumi.PulumiEnum<String> {
  template("Template"),
  provider("Provider"),
  providerNoRbac("ProviderNoRbac");

  const ValidationLevel(this.wireValue);
  @override
  final String wireValue;

  static ValidationLevel fromValue(String value) {
    for (final item in ValidationLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ValidationLevel value: $value');
  }
}
