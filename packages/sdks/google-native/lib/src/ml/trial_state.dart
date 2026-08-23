/// The detailed state of a trial.
enum TrialState {
  stateUnspecified("STATE_UNSPECIFIED"),
  requested("REQUESTED"),
  active("ACTIVE"),
  completed("COMPLETED"),
  stopping("STOPPING");

  const TrialState(this.wireValue);
  final String wireValue;

  static TrialState fromValue(String value) {
    for (final item in TrialState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TrialState value: $value');
  }
}
