import 'package:pulumi/pulumi.dart' as pulumi;

/// Column data type.
enum ColumnTypeEnum implements pulumi.PulumiEnum<String> {
  string_("string"),
  int_("int"),
  long("long"),
  real("real"),
  boolean("boolean"),
  dateTime("dateTime"),
  guid("guid"),
  dynamic_("dynamic");

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
