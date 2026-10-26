import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. Mode of operation for binauthz policy evaluation.
enum BinaryAuthorizationConfigEvaluationMode implements pulumi.PulumiEnum<String> {
  evaluationModeUnspecified("EVALUATION_MODE_UNSPECIFIED"),
  disabled("DISABLED"),
  policyBindings("POLICY_BINDINGS");

  const BinaryAuthorizationConfigEvaluationMode(this.wireValue);
  @override
  final String wireValue;

  static BinaryAuthorizationConfigEvaluationMode fromValue(String value) {
    for (final item in BinaryAuthorizationConfigEvaluationMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BinaryAuthorizationConfigEvaluationMode value: $value');
  }
}
