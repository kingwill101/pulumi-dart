import 'package:pulumi/pulumi.dart' as pulumi;

/// The format of the file
enum FileFormat implements pulumi.PulumiEnum<String> {
  valueCSV("CSV"),
  valueJSON("JSON"),
  valueUnspecified("Unspecified");

  const FileFormat(this.wireValue);
  @override
  final String wireValue;

  static FileFormat fromValue(String value) {
    for (final item in FileFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FileFormat value: $value');
  }
}
