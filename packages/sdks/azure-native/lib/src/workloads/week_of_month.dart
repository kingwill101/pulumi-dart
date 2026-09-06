import 'package:pulumi/pulumi.dart' as pulumi;

enum WeekOfMonth implements pulumi.PulumiEnum<String> {
  valueFirst("First"),
  valueSecond("Second"),
  valueThird("Third"),
  valueFourth("Fourth"),
  valueLast("Last"),
  valueInvalid("Invalid");

  const WeekOfMonth(this.wireValue);
  @override
  final String wireValue;

  static WeekOfMonth fromValue(String value) {
    for (final item in WeekOfMonth.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WeekOfMonth value: $value');
  }
}
