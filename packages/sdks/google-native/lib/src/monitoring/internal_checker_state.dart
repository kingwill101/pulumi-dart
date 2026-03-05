/// The current operational state of the internal checker.
enum InternalCheckerState {
  unspecified("UNSPECIFIED"),
  creating("CREATING"),
  running("RUNNING");

  const InternalCheckerState(this.wireValue);
  final String wireValue;

  static InternalCheckerState fromValue(String value) {
    for (final item in InternalCheckerState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InternalCheckerState value: $value');
  }
}

