/// Encapsulation method on physical ports.
enum ExpressRoutePortsEncapsulation {
  valueDot1Q("Dot1Q"),
  valueQinQ("QinQ");

  const ExpressRoutePortsEncapsulation(this.wireValue);
  final String wireValue;

  static ExpressRoutePortsEncapsulation fromValue(String value) {
    for (final item in ExpressRoutePortsEncapsulation.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExpressRoutePortsEncapsulation value: $value');
  }
}
