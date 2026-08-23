/// Immutable. The type of data this data collector will collect.
enum DataCollectorType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  integer("INTEGER"),
  float("FLOAT"),
  string_("STRING"),
  boolean("BOOLEAN"),
  datetime("DATETIME");

  const DataCollectorType(this.wireValue);
  final String wireValue;

  static DataCollectorType fromValue(String value) {
    for (final item in DataCollectorType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataCollectorType value: $value');
  }
}
