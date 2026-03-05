/// Required. Immutable. The type of field.
enum GoogleCloudDataplexV1SchemaPartitionFieldType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  boolean("BOOLEAN"),
  byte("BYTE"),
  int16("INT16"),
  int32("INT32"),
  int64("INT64"),
  float("FLOAT"),
  double_("DOUBLE"),
  decimal("DECIMAL"),
  string_("STRING"),
  binary("BINARY"),
  timestamp("TIMESTAMP"),
  date("DATE"),
  time("TIME"),
  record("RECORD"),
  null_("NULL");

  const GoogleCloudDataplexV1SchemaPartitionFieldType(this.wireValue);
  final String wireValue;

  static GoogleCloudDataplexV1SchemaPartitionFieldType fromValue(String value) {
    for (final item in GoogleCloudDataplexV1SchemaPartitionFieldType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDataplexV1SchemaPartitionFieldType value: $value');
  }
}

