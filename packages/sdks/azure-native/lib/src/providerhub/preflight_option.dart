import 'package:pulumi/pulumi.dart' as pulumi;

enum PreflightOption implements pulumi.PulumiEnum<String> {
  none("None"),
  continueDeploymentOnFailure("ContinueDeploymentOnFailure"),
  defaultValidationOnly("DefaultValidationOnly");

  const PreflightOption(this.wireValue);
  @override
  final String wireValue;

  static PreflightOption fromValue(String value) {
    for (final item in PreflightOption.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PreflightOption value: $value');
  }
}
