/// State to which the execution snapshot status will be set if the task succeeds.
enum EnterpriseCrmEventbusProtoSuccessPolicyFinalState {
  unspecified("UNSPECIFIED"),
  succeeded("SUCCEEDED"),
  suspended("SUSPENDED");

  const EnterpriseCrmEventbusProtoSuccessPolicyFinalState(this.value);
  final String value;

  static EnterpriseCrmEventbusProtoSuccessPolicyFinalState fromValue(String value) {
    for (final item in EnterpriseCrmEventbusProtoSuccessPolicyFinalState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnterpriseCrmEventbusProtoSuccessPolicyFinalState value: $value');
  }
}

