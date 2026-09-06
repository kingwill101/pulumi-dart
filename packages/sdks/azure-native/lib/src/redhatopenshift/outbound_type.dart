import 'package:pulumi/pulumi.dart' as pulumi;

/// The OutboundType used for egress traffic.
enum OutboundType implements pulumi.PulumiEnum<String> {
  valueLoadbalancer("Loadbalancer"),
  valueUserDefinedRouting("UserDefinedRouting");

  const OutboundType(this.wireValue);
  @override
  final String wireValue;

  static OutboundType fromValue(String value) {
    for (final item in OutboundType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OutboundType value: $value');
  }
}
