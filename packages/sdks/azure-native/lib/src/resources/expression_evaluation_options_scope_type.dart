import 'package:pulumi/pulumi.dart' as pulumi;

/// The scope to be used for evaluation of parameters, variables and functions in a nested template.
enum ExpressionEvaluationOptionsScopeType implements pulumi.PulumiEnum<String> {
  valueNotSpecified("NotSpecified"),
  valueOuter("Outer"),
  valueInner("Inner");

  const ExpressionEvaluationOptionsScopeType(this.wireValue);
  @override
  final String wireValue;

  static ExpressionEvaluationOptionsScopeType fromValue(String value) {
    for (final item in ExpressionEvaluationOptionsScopeType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExpressionEvaluationOptionsScopeType value: $value');
  }
}
