import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. Mode of operation for binauthz policy evaluation.
enum BinaryAuthorizationConfigEvaluationModeGkehubV1alpha implements pulumi.PulumiEnum<String> {
  evaluationModeUnspecified("EVALUATION_MODE_UNSPECIFIED"),
  disabled("DISABLED"),
  policyBindings("POLICY_BINDINGS");

  const BinaryAuthorizationConfigEvaluationModeGkehubV1alpha(this.wireValue);
  @override
  final String wireValue;

  static BinaryAuthorizationConfigEvaluationModeGkehubV1alpha fromValue(String value) {
    for (final item in BinaryAuthorizationConfigEvaluationModeGkehubV1alpha.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BinaryAuthorizationConfigEvaluationModeGkehubV1alpha value: $value');
  }
}
