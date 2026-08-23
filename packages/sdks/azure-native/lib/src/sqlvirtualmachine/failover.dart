/// Replica failover mode in availability group.
enum Failover {
  automatic("Automatic"),
  manual("Manual");

  const Failover(this.wireValue);
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
