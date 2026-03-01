/// Optional. Mode of operation for binauthz policy evaluation.
enum BinaryAuthorizationConfigEvaluationModeGkehubV1beta {
  evaluationModeUnspecified("EVALUATION_MODE_UNSPECIFIED"),
  disabled("DISABLED"),
  policyBindings("POLICY_BINDINGS");

  const BinaryAuthorizationConfigEvaluationModeGkehubV1beta(this.value);
  final String value;

  static BinaryAuthorizationConfigEvaluationModeGkehubV1beta fromValue(String value) {
    for (final item in BinaryAuthorizationConfigEvaluationModeGkehubV1beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BinaryAuthorizationConfigEvaluationModeGkehubV1beta value: $value');
  }
}

