import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the move cost for the service.
enum MoveCost implements pulumi.PulumiEnum<String> {
  valueZero("Zero"),
  valueLow("Low"),
  valueMedium("Medium"),
  valueHigh("High");

  const MoveCost(this.wireValue);
  @override
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
