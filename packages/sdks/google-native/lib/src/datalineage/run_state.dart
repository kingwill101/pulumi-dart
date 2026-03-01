/// Required. The state of the run.
enum RunState {
  unknown("UNKNOWN"),
  started("STARTED"),
  completed("COMPLETED"),
  failed("FAILED"),
  aborted("ABORTED");

  const RunState(this.value);
  final String value;

  static RunState fromValue(String value) {
    for (final item in RunState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RunState value: $value');
  }
}

