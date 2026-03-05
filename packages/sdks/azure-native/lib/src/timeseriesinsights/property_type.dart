/// The type of the property.
enum PropertyType {
  valueString("String");

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

