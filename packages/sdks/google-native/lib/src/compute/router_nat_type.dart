/// Indicates whether this NAT is used for public or private IP translation. If unspecified, it defaults to PUBLIC.
enum RouterNatType {
  private("PRIVATE"),
  public("PUBLIC");

  const RouterNatType(this.wireValue);
  final String wireValue;

  static RouterNatType fromValue(String value) {
    for (final item in RouterNatType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterNatType value: $value');
  }
}
