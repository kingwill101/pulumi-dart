/// The zone's visibility: public zones are exposed to the Internet, while private zones are visible only to Virtual Private Cloud resources.
enum ManagedZoneVisibilityDnsV1beta2 {
  public("public"),
  private("private");

  const ManagedZoneVisibilityDnsV1beta2(this.wireValue);
  final String wireValue;

  static ManagedZoneVisibilityDnsV1beta2 fromValue(String value) {
    for (final item in ManagedZoneVisibilityDnsV1beta2.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedZoneVisibilityDnsV1beta2 value: $value');
  }
}
