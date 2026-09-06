import 'package:pulumi/pulumi.dart' as pulumi;

enum MonthOfYear implements pulumi.PulumiEnum<String> {
  valueInvalid("Invalid"),
  valueJanuary("January"),
  valueFebruary("February"),
  valueMarch("March"),
  valueApril("April"),
  valueMay("May"),
  valueJune("June"),
  valueJuly("July"),
  valueAugust("August"),
  valueSeptember("September"),
  valueOctober("October"),
  valueNovember("November"),
  valueDecember("December");

  const MonthOfYear(this.wireValue);
  @override
  final String wireValue;

  static MonthOfYear fromValue(String value) {
    for (final item in MonthOfYear.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MonthOfYear value: $value');
  }
}
