/// This is a required field, it specifies the format for the inventory files.
enum Format {
  valueCsv("Csv"),
  valueParquet("Parquet");

  const Format(this.wireValue);
  final String wireValue;

  static Format fromValue(String value) {
    for (final item in Format.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Format value: $value');
  }
}

