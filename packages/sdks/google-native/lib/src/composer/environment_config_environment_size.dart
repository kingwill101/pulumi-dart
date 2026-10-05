import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. The size of the Cloud Composer environment. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
enum EnvironmentConfigEnvironmentSize implements pulumi.PulumiEnum<String> {
  environmentSizeUnspecified("ENVIRONMENT_SIZE_UNSPECIFIED"),
  environmentSizeSmall("ENVIRONMENT_SIZE_SMALL"),
  environmentSizeMedium("ENVIRONMENT_SIZE_MEDIUM"),
  environmentSizeLarge("ENVIRONMENT_SIZE_LARGE");

  const EnvironmentConfigEnvironmentSize(this.wireValue);
  @override
  final String wireValue;

  static EnvironmentConfigEnvironmentSize fromValue(String value) {
    for (final item in EnvironmentConfigEnvironmentSize.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnvironmentConfigEnvironmentSize value: $value');
  }
}
