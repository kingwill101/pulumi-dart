enum ConditionType {
  valueProperty("Property"),
  valuePropertyArray("PropertyArray"),
  valuePropertyChanged("PropertyChanged"),
  valuePropertyArrayChanged("PropertyArrayChanged"),
  valueBoolean("Boolean");

  const ConditionType(this.wireValue);
  final String wireValue;

  static ConditionType fromValue(String value) {
    for (final item in ConditionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConditionType value: $value');
  }
}

