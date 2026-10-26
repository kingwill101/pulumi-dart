import 'package:pulumi/pulumi.dart' as pulumi;

/// The logs to use as input for the Replay.
enum GoogleCloudPolicysimulatorV1betaReplayConfigLogSource implements pulumi.PulumiEnum<String> {
  logSourceUnspecified("LOG_SOURCE_UNSPECIFIED"),
  recentAccesses("RECENT_ACCESSES");

  const GoogleCloudPolicysimulatorV1betaReplayConfigLogSource(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudPolicysimulatorV1betaReplayConfigLogSource fromValue(String value) {
    for (final item in GoogleCloudPolicysimulatorV1betaReplayConfigLogSource.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudPolicysimulatorV1betaReplayConfigLogSource value: $value');
  }
}
