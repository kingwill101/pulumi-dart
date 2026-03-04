/// Specifies the move cost for the service.
enum MoveCost {
  zero("Zero"),
  low("Low"),
  medium("Medium"),
  high("High");

  const MoveCost(this.wireValue);
  final String wireValue;

  static MoveCost fromValue(String value) {
    for (final item in MoveCost.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MoveCost value: $value');
  }
}
