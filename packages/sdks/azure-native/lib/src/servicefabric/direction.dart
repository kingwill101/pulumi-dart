import 'package:pulumi/pulumi.dart' as pulumi;

/// Network security rule direction.
enum Direction implements pulumi.PulumiEnum<String> {
  valueInbound("inbound"),
  valueOutbound("outbound");

  const Direction(this.wireValue);
  @override
  final String wireValue;

  static Direction fromValue(String value) {
    for (final item in Direction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Direction value: $value');
  }
}
