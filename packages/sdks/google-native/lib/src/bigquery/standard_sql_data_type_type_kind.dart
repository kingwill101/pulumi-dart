/// Required. The top level type of this field. Can be any GoogleSQL data type (e.g., "INT64", "DATE", "ARRAY").
enum StandardSqlDataTypeTypeKind {
  typeKindUnspecified("TYPE_KIND_UNSPECIFIED"),
  int64("INT64"),
  bool_("BOOL"),
  float64("FLOAT64"),
  string_("STRING"),
  bytes("BYTES"),
  timestamp("TIMESTAMP"),
  date("DATE"),
  time("TIME"),
  datetime("DATETIME"),
  interval("INTERVAL"),
  geography("GEOGRAPHY"),
  numeric("NUMERIC"),
  bignumeric("BIGNUMERIC"),
  json("JSON"),
  array("ARRAY"),
  struct("STRUCT"),
  range("RANGE");

  const StandardSqlDataTypeTypeKind(this.wireValue);
  final String wireValue;

  static StandardSqlDataTypeTypeKind fromValue(String value) {
    for (final item in StandardSqlDataTypeTypeKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StandardSqlDataTypeTypeKind value: $value');
  }
}
