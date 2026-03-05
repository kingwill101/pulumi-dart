/// The type of this virtual network gateway.
enum VpnType {
  valuePolicyBased("PolicyBased"),
  valueRouteBased("RouteBased");

  const VpnType(this.wireValue);
  final String wireValue;

  static VpnType fromValue(String value) {
    for (final item in VpnType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VpnType value: $value');
  }
}

