/// Indicates whether this NAT is used for public or private IP translation. If unspecified, it defaults to PUBLIC.
enum RouterNatType {
  private("PRIVATE"),
  public("PUBLIC");

  const RouterNatType(this.value);
  final String value;

  static RouterNatType fromValue(String value) {
    for (final item in RouterNatType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterNatType value: $value');
  }
}

