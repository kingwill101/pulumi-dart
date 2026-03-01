/// Replica failover mode in availability group.
enum Failover {
  automatic("Automatic"),
  manual("Manual");

  const Failover(this.value);
  final String value;

  static Failover fromValue(String value) {
    for (final item in Failover.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Failover value: $value');
  }
}

