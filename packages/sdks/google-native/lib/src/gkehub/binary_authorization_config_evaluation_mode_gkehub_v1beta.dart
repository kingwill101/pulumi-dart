import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. Mode of operation for binauthz policy evaluation.
enum BinaryAuthorizationConfigEvaluationModeGkehubV1beta implements pulumi.PulumiEnum<String> {
  evaluationModeUnspecified("EVALUATION_MODE_UNSPECIFIED"),
  disabled("DISABLED"),
  policyBindings("POLICY_BINDINGS");

  const BinaryAuthorizationConfigEvaluationModeGkehubV1beta(this.wireValue);
  @override
  final String wireValue;

  static BinaryAuthorizationConfigEvaluationModeGkehubV1beta fromValue(String value) {
    for (final item in BinaryAuthorizationConfigEvaluationModeGkehubV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BinaryAuthorizationConfigEvaluationModeGkehubV1beta value: $value');
  }
}
