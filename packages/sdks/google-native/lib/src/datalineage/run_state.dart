/// Required. The state of the run.
enum RunState {
  unknown("UNKNOWN"),
  started("STARTED"),
  completed("COMPLETED"),
  failed("FAILED"),
  aborted("ABORTED");

  const RunState(this.wireValue);
  final String wireValue;

  static RunState fromValue(String value) {
    for (final item in RunState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RunState value: $value');
  }
}
