/// Immutable. The granularity (i.e. `MILLIS`) at which timestamps are stored in this table. Timestamps not matching the granularity will be rejected. If unspecified at creation time, the value will be set to `MILLIS`. Views: `SCHEMA_VIEW`, `FULL`.
enum TableGranularity {
  timestampGranularityUnspecified("TIMESTAMP_GRANULARITY_UNSPECIFIED"),
  millis("MILLIS");

  const TableGranularity(this.wireValue);
  final String wireValue;

  static TableGranularity fromValue(String value) {
    for (final item in TableGranularity.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TableGranularity value: $value');
  }
}

