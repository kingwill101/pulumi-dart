import 'package:pulumi/pulumi.dart' as pulumi;

/// Where logs should be saved.
enum LogsPolicyDestination implements pulumi.PulumiEnum<String> {
  destinationUnspecified("DESTINATION_UNSPECIFIED"),
  cloudLogging("CLOUD_LOGGING"),
  path("PATH");

  const LogsPolicyDestination(this.wireValue);
  @override
  final String wireValue;

  static LogsPolicyDestination fromValue(String value) {
    for (final item in LogsPolicyDestination.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LogsPolicyDestination value: $value');
  }
}
