import 'package:pulumi/pulumi.dart' as pulumi;

/// Encapsulation method on physical ports.
enum ExpressRoutePortsEncapsulation implements pulumi.PulumiEnum<String> {
  valueDot1Q("Dot1Q"),
  valueQinQ("QinQ");

  const ExpressRoutePortsEncapsulation(this.wireValue);
  @override
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
