/// Mode of the patch rollout.
enum PatchRolloutModeOsconfigV1beta {
  modeUnspecified("MODE_UNSPECIFIED"),
  zoneByZone("ZONE_BY_ZONE"),
  concurrentZones("CONCURRENT_ZONES");

  const PatchRolloutModeOsconfigV1beta(this.wireValue);
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

