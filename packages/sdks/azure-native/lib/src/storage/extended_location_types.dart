/// The type of the extended location.
enum ExtendedLocationTypes {
  valueEdgeZone("EdgeZone");

  const ExtendedLocationTypes(this.wireValue);
  final String wireValue;

  static ExtendedLocationTypes fromValue(String value) {
    for (final item in ExtendedLocationTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExtendedLocationTypes value: $value');
  }
}

