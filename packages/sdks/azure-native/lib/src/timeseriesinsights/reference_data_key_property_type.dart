/// The type of the key property.
enum ReferenceDataKeyPropertyType {
  valueString("String"),
  valueDouble("Double"),
  valueBool("Bool"),
  valueDateTime("DateTime");

  const ReferenceDataKeyPropertyType(this.value);
  final String value;

  static ReferenceDataKeyPropertyType fromValue(String value) {
    for (final item in ReferenceDataKeyPropertyType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReferenceDataKeyPropertyType value: $value');
  }
}

