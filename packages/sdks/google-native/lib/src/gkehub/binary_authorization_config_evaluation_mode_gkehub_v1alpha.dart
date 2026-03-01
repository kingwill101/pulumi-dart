/// Optional. Mode of operation for binauthz policy evaluation.
enum BinaryAuthorizationConfigEvaluationModeGkehubV1alpha {
  evaluationModeUnspecified("EVALUATION_MODE_UNSPECIFIED"),
  disabled("DISABLED"),
  policyBindings("POLICY_BINDINGS");

  const BinaryAuthorizationConfigEvaluationModeGkehubV1alpha(this.value);
  final String value;

  static BinaryAuthorizationConfigEvaluationModeGkehubV1alpha fromValue(String value) {
    for (final item in BinaryAuthorizationConfigEvaluationModeGkehubV1alpha.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BinaryAuthorizationConfigEvaluationModeGkehubV1alpha value: $value');
  }
}

