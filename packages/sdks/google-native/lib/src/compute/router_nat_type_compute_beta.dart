/// Indicates whether this NAT is used for public or private IP translation. If unspecified, it defaults to PUBLIC.
enum RouterNatTypeComputeBeta {
  private("PRIVATE"),
  public("PUBLIC");

  const RouterNatTypeComputeBeta(this.wireValue);
  final String wireValue;

  static RouterNatTypeComputeBeta fromValue(String value) {
    for (final item in RouterNatTypeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterNatTypeComputeBeta value: $value');
  }
}

