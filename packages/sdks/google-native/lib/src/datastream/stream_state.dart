import 'package:pulumi/pulumi.dart' as pulumi;

/// The state of the stream.
enum StreamState implements pulumi.PulumiEnum<String> {
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
  @override
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
