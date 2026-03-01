/// The type of this virtual network gateway.
enum VpnType {
  valuePolicyBased("PolicyBased"),
  valueRouteBased("RouteBased");

  const VpnType(this.value);
  final String value;

  static VpnType fromValue(String value) {
    for (final item in VpnType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VpnType value: $value');
  }
}

