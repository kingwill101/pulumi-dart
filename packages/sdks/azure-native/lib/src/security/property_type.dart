/// The data type of the compared operands (string, integer, floating point number or a boolean [true/false]]
enum PropertyType {
  valueString("String"),
  valueInteger("Integer"),
  valueNumber("Number"),
  valueBoolean("Boolean");

  const PropertyType(this.wireValue);
  final String wireValue;

  static PropertyType fromValue(String value) {
    for (final item in PropertyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PropertyType value: $value');
  }
}

