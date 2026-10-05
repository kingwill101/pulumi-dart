import 'package:pulumi/pulumi.dart' as pulumi;

/// The state of the stream.
enum StreamStateDatastreamV1alpha1 implements pulumi.PulumiEnum<String> {
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
  @override
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
