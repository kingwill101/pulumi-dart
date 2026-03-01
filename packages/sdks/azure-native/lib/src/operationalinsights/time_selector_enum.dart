/// The time cursor used in Summary rules bins processing, e.g. TimeGenerated.
enum TimeSelectorEnum {
  valueTimeGenerated("TimeGenerated");

  const TimeSelectorEnum(this.value);
  final String value;

  static TimeSelectorEnum fromValue(String value) {
    for (final item in TimeSelectorEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TimeSelectorEnum value: $value');
  }
}

