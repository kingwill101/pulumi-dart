import 'package:pulumi/pulumi.dart' as pulumi;

/// Mode of operation for binauthz policy evaluation. If unspecified, defaults to DISABLED.
enum BinaryAuthorizationEvaluationMode implements pulumi.PulumiEnum<String> {
  evaluationModeUnspecified("EVALUATION_MODE_UNSPECIFIED"),
  disabled("DISABLED"),
  projectSingletonPolicyEnforce("PROJECT_SINGLETON_POLICY_ENFORCE");

  const BinaryAuthorizationEvaluationMode(this.wireValue);
  @override
  final String wireValue;

  static BinaryAuthorizationEvaluationMode fromValue(String value) {
    for (final item in BinaryAuthorizationEvaluationMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BinaryAuthorizationEvaluationMode value: $value');
  }
}
