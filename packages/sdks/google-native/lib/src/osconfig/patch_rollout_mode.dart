/// Mode of the patch rollout.
enum PatchRolloutMode {
  modeUnspecified("MODE_UNSPECIFIED"),
  zoneByZone("ZONE_BY_ZONE"),
  concurrentZones("CONCURRENT_ZONES");

  const PatchRolloutMode(this.wireValue);
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
