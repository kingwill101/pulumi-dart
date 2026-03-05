/// Network security rule direction.
enum Direction {
  valueInbound("inbound"),
  valueOutbound("outbound");

  const Direction(this.wireValue);
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

