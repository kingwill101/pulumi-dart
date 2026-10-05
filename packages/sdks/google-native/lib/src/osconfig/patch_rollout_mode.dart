import 'package:pulumi/pulumi.dart' as pulumi;

/// Mode of the patch rollout.
enum PatchRolloutMode implements pulumi.PulumiEnum<String> {
  modeUnspecified("MODE_UNSPECIFIED"),
  zoneByZone("ZONE_BY_ZONE"),
  concurrentZones("CONCURRENT_ZONES");

  const PatchRolloutMode(this.wireValue);
  @override
  final String wireValue;

  static PatchRolloutMode fromValue(String value) {
    for (final item in PatchRolloutMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PatchRolloutMode value: $value');
  }
}
