/// Destination type.
enum RoutingRuleDestinationType {
  valueAddressPrefix("AddressPrefix"),
  valueServiceTag("ServiceTag");

  const RoutingRuleDestinationType(this.wireValue);
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

