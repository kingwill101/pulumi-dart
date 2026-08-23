/// Required. Immutable. The type of the zone.
enum ZoneType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  raw("RAW"),
  curated("CURATED");

  const ZoneType(this.wireValue);
  final String wireValue;

  static ZoneType fromValue(String value) {
    for (final item in ZoneType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ZoneType value: $value');
  }
}
