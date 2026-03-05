enum WeekOfMonth {
  valueFirst("First"),
  valueSecond("Second"),
  valueThird("Third"),
  valueFourth("Fourth"),
  valueLast("Last"),
  valueInvalid("Invalid");

  const WeekOfMonth(this.wireValue);
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

