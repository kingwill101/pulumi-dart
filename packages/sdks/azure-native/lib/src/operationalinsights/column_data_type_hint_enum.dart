import 'package:pulumi/pulumi.dart' as pulumi;

/// Column data type logical hint.
enum ColumnDataTypeHintEnum implements pulumi.PulumiEnum<String> {
  uri("uri"),
  guid("guid"),
  armPath("armPath"),
  ip("ip"),
  vector16("vector16");

  const ColumnDataTypeHintEnum(this.wireValue);
  @override
  final String wireValue;

  static ColumnDataTypeHintEnum fromValue(String value) {
    for (final item in ColumnDataTypeHintEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ColumnDataTypeHintEnum value: $value');
  }
}
