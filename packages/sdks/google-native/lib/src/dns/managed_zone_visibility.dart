/// The zone's visibility: public zones are exposed to the Internet, while private zones are visible only to Virtual Private Cloud resources.
enum ManagedZoneVisibility {
  public("public"),
  private("private");

  const ManagedZoneVisibility(this.wireValue);
  final String wireValue;

  static ManagedZoneVisibility fromValue(String value) {
    for (final item in ManagedZoneVisibility.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedZoneVisibility value: $value');
  }
}
