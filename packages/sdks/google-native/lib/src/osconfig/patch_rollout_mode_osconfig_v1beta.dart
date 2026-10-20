import 'package:pulumi/pulumi.dart' as pulumi;

/// Mode of the patch rollout.
enum PatchRolloutModeOsconfigV1beta implements pulumi.PulumiEnum<String> {
  modeUnspecified("MODE_UNSPECIFIED"),
  zoneByZone("ZONE_BY_ZONE"),
  concurrentZones("CONCURRENT_ZONES");

  const PatchRolloutModeOsconfigV1beta(this.wireValue);
  @override
  final String wireValue;

  static PatchRolloutModeOsconfigV1beta fromValue(String value) {
    for (final item in PatchRolloutModeOsconfigV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PatchRolloutModeOsconfigV1beta value: $value');
  }
}
