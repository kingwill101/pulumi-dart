/// Column data type logical hint.
enum ColumnDataTypeHintEnum {
  valueUri("uri"),
  valueGuid("guid"),
  valueArmPath("armPath"),
  valueIp("ip");

  const ColumnDataTypeHintEnum(this.wireValue);
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
