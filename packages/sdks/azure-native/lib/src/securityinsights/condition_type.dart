enum ConditionType {
  valueProperty("Property"),
  valuePropertyArray("PropertyArray"),
  valuePropertyChanged("PropertyChanged"),
  valuePropertyArrayChanged("PropertyArrayChanged"),
  valueBoolean("Boolean");

  const ConditionType(this.value);
  final String value;

  static ConditionType fromValue(String value) {
    for (final item in ConditionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConditionType value: $value');
  }
}

