import 'package:pulumi/pulumi.dart' as pulumi;

/// Replica failover mode in availability group.
enum Failover implements pulumi.PulumiEnum<String> {
  automatic("Automatic"),
  manual("Manual");

  const Failover(this.wireValue);
  @override
  final String wireValue;

  static Failover fromValue(String value) {
    for (final item in Failover.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Failover value: $value');
  }
}
