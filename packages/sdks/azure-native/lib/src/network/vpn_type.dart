import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of this virtual network gateway.
enum VpnType implements pulumi.PulumiEnum<String> {
  valuePolicyBased("PolicyBased"),
  valueRouteBased("RouteBased");

  const VpnType(this.wireValue);
  @override
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
