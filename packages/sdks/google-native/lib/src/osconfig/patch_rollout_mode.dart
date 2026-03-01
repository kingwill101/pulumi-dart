/// Mode of the patch rollout.
enum PatchRolloutMode {
  modeUnspecified("MODE_UNSPECIFIED"),
  zoneByZone("ZONE_BY_ZONE"),
  concurrentZones("CONCURRENT_ZONES");

  const PatchRolloutMode(this.value);
  final String value;

  static PatchRolloutMode fromValue(String value) {
    for (final item in PatchRolloutMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PatchRolloutMode value: $value');
  }
}

