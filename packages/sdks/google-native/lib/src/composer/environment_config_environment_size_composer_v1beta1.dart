/// Optional. The size of the Cloud Composer environment. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
enum EnvironmentConfigEnvironmentSizeComposerV1beta1 {
  environmentSizeUnspecified("ENVIRONMENT_SIZE_UNSPECIFIED"),
  environmentSizeSmall("ENVIRONMENT_SIZE_SMALL"),
  environmentSizeMedium("ENVIRONMENT_SIZE_MEDIUM"),
  environmentSizeLarge("ENVIRONMENT_SIZE_LARGE");

  const EnvironmentConfigEnvironmentSizeComposerV1beta1(this.wireValue);
  final String wireValue;

  static EnvironmentConfigEnvironmentSizeComposerV1beta1 fromValue(String value) {
    for (final item in EnvironmentConfigEnvironmentSizeComposerV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnvironmentConfigEnvironmentSizeComposerV1beta1 value: $value');
  }
}

