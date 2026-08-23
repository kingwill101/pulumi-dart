/// Specifies the move cost for the service.
enum MoveCost {
  valueZero("Zero"),
  valueLow("Low"),
  valueMedium("Medium"),
  valueHigh("High");

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
