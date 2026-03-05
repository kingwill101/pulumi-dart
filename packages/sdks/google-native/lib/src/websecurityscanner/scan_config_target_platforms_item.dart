enum ScanConfigTargetPlatformsItem {
  targetPlatformUnspecified("TARGET_PLATFORM_UNSPECIFIED"),
  appEngine("APP_ENGINE"),
  compute("COMPUTE"),
  cloudRun("CLOUD_RUN"),
  cloudFunctions("CLOUD_FUNCTIONS");

  const ScanConfigTargetPlatformsItem(this.wireValue);
  final String wireValue;

  static ScanConfigTargetPlatformsItem fromValue(String value) {
    for (final item in ScanConfigTargetPlatformsItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScanConfigTargetPlatformsItem value: $value');
  }
}

