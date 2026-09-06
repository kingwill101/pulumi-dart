import 'package:pulumi/pulumi.dart' as pulumi;

/// This is a required field, it specifies the format for the inventory files.
enum Format implements pulumi.PulumiEnum<String> {
  valueCsv("Csv"),
  valueParquet("Parquet");

  const Format(this.wireValue);
  @override
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
