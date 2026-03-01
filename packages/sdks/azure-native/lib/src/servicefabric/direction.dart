/// Network security rule direction.
enum Direction {
  valueInbound("inbound"),
  valueOutbound("outbound");

  const Direction(this.value);
  final String value;

  static Direction fromValue(String value) {
    for (final item in Direction.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Direction value: $value');
  }
}

