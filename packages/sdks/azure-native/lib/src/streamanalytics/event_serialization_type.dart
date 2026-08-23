/// Indicates the type of serialization that the input or output uses. Required on PUT (CreateOrReplace) requests.
enum EventSerializationType {
  valueCsv("Csv"),
  valueAvro("Avro"),
  valueJson("Json"),
  valueParquet("Parquet");

  const EventSerializationType(this.wireValue);
  final String wireValue;

  static EventSerializationType fromValue(String value) {
    for (final item in EventSerializationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EventSerializationType value: $value');
  }
}
