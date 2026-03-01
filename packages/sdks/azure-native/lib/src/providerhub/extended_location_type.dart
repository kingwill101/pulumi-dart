/// The type.
enum ExtendedLocationType {
  notSpecified("NotSpecified"),
  customLocation("CustomLocation"),
  edgeZone("EdgeZone"),
  arcZone("ArcZone");

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

