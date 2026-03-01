/// The extended location type.
enum ExtendedLocationType {
  valueEdgeZone("EdgeZone");

  const ExtendedLocationType(this.value);
  final String value;

  static ExtendedLocationType fromValue(String value) {
    for (final item in ExtendedLocationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExtendedLocationType value: $value');
  }
}

