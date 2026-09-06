import 'package:pulumi/pulumi.dart' as pulumi;

/// Column data type logical hint.
enum ColumnDataTypeHintEnum implements pulumi.PulumiEnum<String> {
  valueUri("uri"),
  valueGuid("guid"),
  valueArmPath("armPath"),
  valueIp("ip");

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
