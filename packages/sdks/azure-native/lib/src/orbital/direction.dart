import 'package:pulumi/pulumi.dart' as pulumi;

/// Direction (Uplink or Downlink).
enum Direction implements pulumi.PulumiEnum<String> {
  valueUplink("Uplink"),
  valueDownlink("Downlink");

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
