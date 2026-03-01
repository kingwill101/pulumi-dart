/// Optional. Mode of operation for binauthz policy evaluation.
enum BinaryAuthorizationConfigEvaluationMode {
  evaluationModeUnspecified("EVALUATION_MODE_UNSPECIFIED"),
  disabled("DISABLED"),
  policyBindings("POLICY_BINDINGS");

  const BinaryAuthorizationConfigEvaluationMode(this.value);
  final String value;

  static BinaryAuthorizationConfigEvaluationMode fromValue(String value) {
    for (final item in BinaryAuthorizationConfigEvaluationMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BinaryAuthorizationConfigEvaluationMode value: $value');
  }
}

