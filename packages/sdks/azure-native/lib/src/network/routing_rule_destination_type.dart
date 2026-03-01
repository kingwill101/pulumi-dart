/// Destination type.
enum RoutingRuleDestinationType {
  valueAddressPrefix("AddressPrefix"),
  valueServiceTag("ServiceTag");

  const RoutingRuleDestinationType(this.value);
  final String value;

  static RoutingRuleDestinationType fromValue(String value) {
    for (final item in RoutingRuleDestinationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RoutingRuleDestinationType value: $value');
  }
}

