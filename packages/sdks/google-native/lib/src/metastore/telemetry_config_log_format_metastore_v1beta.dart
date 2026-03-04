/// The output format of the Dataproc Metastore service's logs.
enum TelemetryConfigLogFormatMetastoreV1beta {
  logFormatUnspecified("LOG_FORMAT_UNSPECIFIED"),
  legacy("LEGACY"),
  json("JSON");

  const TelemetryConfigLogFormatMetastoreV1beta(this.wireValue);
  final String wireValue;

  static TelemetryConfigLogFormatMetastoreV1beta fromValue(String value) {
    for (final item in TelemetryConfigLogFormatMetastoreV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown TelemetryConfigLogFormatMetastoreV1beta value: $value',
    );
  }
}
