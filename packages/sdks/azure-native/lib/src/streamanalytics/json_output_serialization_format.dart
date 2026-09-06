import 'package:pulumi/pulumi.dart' as pulumi;

/// This property only applies to JSON serialization of outputs only. It is not applicable to inputs. This property specifies the format of the JSON the output will be written in. The currently supported values are 'lineSeparated' indicating the output will be formatted by having each JSON object separated by a new line and 'array' indicating the output will be formatted as an array of JSON objects. Default value is 'lineSeparated' if left null.
enum JsonOutputSerializationFormat implements pulumi.PulumiEnum<String> {
  valueLineSeparated("LineSeparated"),
  valueArray("Array");

  const JsonOutputSerializationFormat(this.wireValue);
  @override
  final String wireValue;

  static JsonOutputSerializationFormat fromValue(String value) {
    for (final item in JsonOutputSerializationFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JsonOutputSerializationFormat value: $value');
  }
}
