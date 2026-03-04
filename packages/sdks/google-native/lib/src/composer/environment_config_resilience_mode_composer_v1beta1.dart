/// Optional. Resilience mode of the Cloud Composer Environment. This field is supported for Cloud Composer environments in versions composer-2.2.0-airflow-*.*.* and newer.
enum EnvironmentConfigResilienceModeComposerV1beta1 {
  resilienceModeUnspecified("RESILIENCE_MODE_UNSPECIFIED"),
  highResilience("HIGH_RESILIENCE");

  const EnvironmentConfigResilienceModeComposerV1beta1(this.wireValue);
  final String wireValue;

  static EnvironmentConfigResilienceModeComposerV1beta1 fromValue(
    String value,
  ) {
    for (final item in EnvironmentConfigResilienceModeComposerV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown EnvironmentConfigResilienceModeComposerV1beta1 value: $value',
    );
  }
}
