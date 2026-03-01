/// Column data type logical hint.
enum ColumnDataTypeHintEnum {
  valueUri("uri"),
  valueGuid("guid"),
  valueArmPath("armPath"),
  valueIp("ip");

  const ColumnDataTypeHintEnum(this.value);
  final String value;

  static ColumnDataTypeHintEnum fromValue(String value) {
    for (final item in ColumnDataTypeHintEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ColumnDataTypeHintEnum value: $value');
  }
}

