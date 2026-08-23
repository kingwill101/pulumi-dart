/// State to which the execution snapshot status will be set if the task succeeds.
enum EnterpriseCrmEventbusProtoSuccessPolicyFinalState {
  unspecified("UNSPECIFIED"),
  succeeded("SUCCEEDED"),
  suspended("SUSPENDED");

  const EnterpriseCrmEventbusProtoSuccessPolicyFinalState(this.wireValue);
  final String wireValue;

  static EnterpriseCrmEventbusProtoSuccessPolicyFinalState fromValue(String value) {
    for (final item in EnterpriseCrmEventbusProtoSuccessPolicyFinalState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnterpriseCrmEventbusProtoSuccessPolicyFinalState value: $value');
  }
}
