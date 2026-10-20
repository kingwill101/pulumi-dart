import 'package:pulumi/pulumi.dart' as pulumi;

/// The output format of the Dataproc Metastore service's logs.
enum TelemetryConfigLogFormatMetastoreV1alpha implements pulumi.PulumiEnum<String> {
  logFormatUnspecified("LOG_FORMAT_UNSPECIFIED"),
  legacy("LEGACY"),
  json("JSON");

  const TelemetryConfigLogFormatMetastoreV1alpha(this.wireValue);
  @override
  final String wireValue;

  static TelemetryConfigLogFormatMetastoreV1alpha fromValue(String value) {
    for (final item in TelemetryConfigLogFormatMetastoreV1alpha.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TelemetryConfigLogFormatMetastoreV1alpha value: $value');
  }
}
