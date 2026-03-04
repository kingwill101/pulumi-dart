/// The current state of the environment.
enum EnvironmentState {
  stateUnspecified("STATE_UNSPECIFIED"),
  creating("CREATING"),
  running("RUNNING"),
  updating("UPDATING"),
  deleting("DELETING"),
  error("ERROR");

  const EnvironmentState(this.wireValue);
  final String wireValue;

  static EnvironmentState fromValue(String value) {
    for (final item in EnvironmentState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnvironmentState value: $value');
  }
}
