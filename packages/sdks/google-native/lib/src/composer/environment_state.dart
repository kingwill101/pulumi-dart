/// The current state of the environment.
enum EnvironmentState {
  stateUnspecified("STATE_UNSPECIFIED"),
  creating("CREATING"),
  running("RUNNING"),
  updating("UPDATING"),
  deleting("DELETING"),
  error("ERROR");

  const EnvironmentState(this.value);
  final String value;

  static EnvironmentState fromValue(String value) {
    for (final item in EnvironmentState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnvironmentState value: $value');
  }
}

