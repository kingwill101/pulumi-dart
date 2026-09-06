import 'package:pulumi/pulumi.dart' as pulumi;

/// Destination type.
enum RoutingRuleDestinationType implements pulumi.PulumiEnum<String> {
  valueAddressPrefix("AddressPrefix"),
  valueServiceTag("ServiceTag");

  const RoutingRuleDestinationType(this.wireValue);
  @override
  final String wireValue;

  static RoutingRuleDestinationType fromValue(String value) {
    for (final item in RoutingRuleDestinationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RoutingRuleDestinationType value: $value');
  }
}
