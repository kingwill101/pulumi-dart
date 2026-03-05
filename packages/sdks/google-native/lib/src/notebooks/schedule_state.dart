enum ScheduleState {
  stateUnspecified("STATE_UNSPECIFIED"),
  enabled("ENABLED"),
  paused("PAUSED"),
  disabled("DISABLED"),
  updateFailed("UPDATE_FAILED"),
  initializing("INITIALIZING"),
  deleting("DELETING");

  const ScheduleState(this.wireValue);
  final String wireValue;

  static ScheduleState fromValue(String value) {
    for (final item in ScheduleState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScheduleState value: $value');
  }
}

