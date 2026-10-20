import 'package:pulumi/pulumi.dart' as pulumi;

/// The output format of the Dataproc Metastore service's logs.
enum TelemetryConfigLogFormat implements pulumi.PulumiEnum<String> {
  logFormatUnspecified("LOG_FORMAT_UNSPECIFIED"),
  legacy("LEGACY"),
  json("JSON");

  const TelemetryConfigLogFormat(this.wireValue);
  @override
  final String wireValue;

  static TelemetryConfigLogFormat fromValue(String value) {
    for (final item in TelemetryConfigLogFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TelemetryConfigLogFormat value: $value');
  }
}
