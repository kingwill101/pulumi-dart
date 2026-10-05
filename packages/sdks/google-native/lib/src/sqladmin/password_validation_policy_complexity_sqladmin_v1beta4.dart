import 'package:pulumi/pulumi.dart' as pulumi;

/// The complexity of the password.
enum PasswordValidationPolicyComplexitySqladminV1beta4 implements pulumi.PulumiEnum<String> {
  complexityUnspecified("COMPLEXITY_UNSPECIFIED"),
  complexityDefault("COMPLEXITY_DEFAULT");

  const PasswordValidationPolicyComplexitySqladminV1beta4(this.wireValue);
  @override
  final String wireValue;

  static PasswordValidationPolicyComplexitySqladminV1beta4 fromValue(String value) {
    for (final item in PasswordValidationPolicyComplexitySqladminV1beta4.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PasswordValidationPolicyComplexitySqladminV1beta4 value: $value');
  }
}
