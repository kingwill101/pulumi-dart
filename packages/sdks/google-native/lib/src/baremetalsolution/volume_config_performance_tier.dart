/// Performance tier of the Volume. Default is SHARED.
enum VolumeConfigPerformanceTier {
  volumePerformanceTierUnspecified("VOLUME_PERFORMANCE_TIER_UNSPECIFIED"),
  volumePerformanceTierShared("VOLUME_PERFORMANCE_TIER_SHARED"),
  volumePerformanceTierAssigned("VOLUME_PERFORMANCE_TIER_ASSIGNED"),
  volumePerformanceTierHt("VOLUME_PERFORMANCE_TIER_HT");

  const VolumeConfigPerformanceTier(this.wireValue);
  final String wireValue;

  static VolumeConfigPerformanceTier fromValue(String value) {
    for (final item in VolumeConfigPerformanceTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VolumeConfigPerformanceTier value: $value');
  }
}
