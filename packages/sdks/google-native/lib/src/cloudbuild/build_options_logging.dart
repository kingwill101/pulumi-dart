import 'package:pulumi/pulumi.dart' as pulumi;

/// Option to specify the logging mode, which determines if and where build logs are stored.
enum BuildOptionsLogging implements pulumi.PulumiEnum<String> {
  loggingUnspecified("LOGGING_UNSPECIFIED"),
  legacy("LEGACY"),
  gcsOnly("GCS_ONLY"),
  stackdriverOnly("STACKDRIVER_ONLY"),
  cloudLoggingOnly("CLOUD_LOGGING_ONLY"),
  none("NONE");

  const BuildOptionsLogging(this.wireValue);
  @override
  final String wireValue;

  static BuildOptionsLogging fromValue(String value) {
    for (final item in BuildOptionsLogging.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BuildOptionsLogging value: $value');
  }
}
