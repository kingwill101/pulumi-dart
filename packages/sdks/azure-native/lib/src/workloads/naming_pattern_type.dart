/// The pattern type to be used for resource naming.
enum NamingPatternType {
  fullResourceName("FullResourceName");

  const NamingPatternType(this.wireValue);
  final String wireValue;

  static NamingPatternType fromValue(String value) {
    for (final item in NamingPatternType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NamingPatternType value: $value');
  }
}
