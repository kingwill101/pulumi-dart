import 'package:pulumi/pulumi.dart' as pulumi;

/// Column data type.
enum ColumnTypeEnum implements pulumi.PulumiEnum<String> {
  valueString("string"),
  valueInt("int"),
  valueLong("long"),
  valueReal("real"),
  valueBoolean("boolean"),
  valueDateTime("dateTime"),
  valueGuid("guid"),
  valueDynamic("dynamic");

  const ColumnTypeEnum(this.wireValue);
  @override
  final String wireValue;

  static ColumnTypeEnum fromValue(String value) {
    for (final item in ColumnTypeEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ColumnTypeEnum value: $value');
  }
}
