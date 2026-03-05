/// The current state of the environment.
enum EnvironmentStateComposerV1beta1 {
  stateUnspecified("STATE_UNSPECIFIED"),
  creating("CREATING"),
  running("RUNNING"),
  updating("UPDATING"),
  deleting("DELETING"),
  error("ERROR");

  const EnvironmentStateComposerV1beta1(this.wireValue);
  final String wireValue;

  static EnvironmentStateComposerV1beta1 fromValue(String value) {
    for (final item in EnvironmentStateComposerV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnvironmentStateComposerV1beta1 value: $value');
  }
}

