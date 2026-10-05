import 'package:pulumi/pulumi.dart' as pulumi;

/// The logs to use as input for the Replay.
enum GoogleCloudPolicysimulatorV1ReplayConfigLogSource implements pulumi.PulumiEnum<String> {
  logSourceUnspecified("LOG_SOURCE_UNSPECIFIED"),
  recentAccesses("RECENT_ACCESSES");

  const GoogleCloudPolicysimulatorV1ReplayConfigLogSource(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudPolicysimulatorV1ReplayConfigLogSource fromValue(String value) {
    for (final item in GoogleCloudPolicysimulatorV1ReplayConfigLogSource.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudPolicysimulatorV1ReplayConfigLogSource value: $value');
  }
}
