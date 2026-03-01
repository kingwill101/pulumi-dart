enum MonthOfYear {
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

  const MonthOfYear(this.value);
  final String value;

  static MonthOfYear fromValue(String value) {
    for (final item in MonthOfYear.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MonthOfYear value: $value');
  }
}

