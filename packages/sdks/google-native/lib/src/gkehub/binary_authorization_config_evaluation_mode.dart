/// Optional. Mode of operation for binauthz policy evaluation.
enum BinaryAuthorizationConfigEvaluationMode {
  evaluationModeUnspecified("EVALUATION_MODE_UNSPECIFIED"),
  disabled("DISABLED"),
  policyBindings("POLICY_BINDINGS");

  const BinaryAuthorizationConfigEvaluationMode(this.wireValue);
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
