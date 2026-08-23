enum ScanConfigTargetPlatformsItemWebsecurityscannerV1beta {
  targetPlatformUnspecified("TARGET_PLATFORM_UNSPECIFIED"),
  appEngine("APP_ENGINE"),
  compute("COMPUTE"),
  cloudRun("CLOUD_RUN"),
  cloudFunctions("CLOUD_FUNCTIONS");

  const ScanConfigTargetPlatformsItemWebsecurityscannerV1beta(this.wireValue);
  final String wireValue;

  static ScanConfigTargetPlatformsItemWebsecurityscannerV1beta fromValue(String value) {
    for (final item in ScanConfigTargetPlatformsItemWebsecurityscannerV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScanConfigTargetPlatformsItemWebsecurityscannerV1beta value: $value');
  }
}
