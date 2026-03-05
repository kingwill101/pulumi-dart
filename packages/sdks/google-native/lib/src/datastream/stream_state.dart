/// The state of the stream.
enum StreamState {
  stateUnspecified("STATE_UNSPECIFIED"),
  notStarted("NOT_STARTED"),
  running("RUNNING"),
  paused("PAUSED"),
  maintenance("MAINTENANCE"),
  failed("FAILED"),
  failedPermanently("FAILED_PERMANENTLY"),
  starting("STARTING"),
  draining("DRAINING");

  const StreamState(this.wireValue);
  final String wireValue;

  static StreamState fromValue(String value) {
    for (final item in StreamState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StreamState value: $value');
  }
}

