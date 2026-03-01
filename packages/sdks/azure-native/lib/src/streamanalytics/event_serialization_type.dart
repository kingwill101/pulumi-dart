/// Indicates the type of serialization that the input or output uses. Required on PUT (CreateOrReplace) requests.
enum EventSerializationType {
  valueCsv("Csv"),
  valueAvro("Avro"),
  valueJson("Json"),
  valueParquet("Parquet");

  const EventSerializationType(this.value);
  final String value;

  static EventSerializationType fromValue(String value) {
    for (final item in EventSerializationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EventSerializationType value: $value');
  }
}

