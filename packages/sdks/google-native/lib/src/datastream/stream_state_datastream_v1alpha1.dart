/// The state of the stream.
enum StreamStateDatastreamV1alpha1 {
  stateUnspecified("STATE_UNSPECIFIED"),
  created("CREATED"),
  running("RUNNING"),
  paused("PAUSED"),
  maintenance("MAINTENANCE"),
  failed("FAILED"),
  failedPermanently("FAILED_PERMANENTLY"),
  starting("STARTING"),
  draining("DRAINING");

  const StreamStateDatastreamV1alpha1(this.wireValue);
  final String wireValue;

  static StreamStateDatastreamV1alpha1 fromValue(String value) {
    for (final item in StreamStateDatastreamV1alpha1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StreamStateDatastreamV1alpha1 value: $value');
  }
}
