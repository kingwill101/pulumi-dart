enum Engagements {
  valueMVI("MVI"),
  valueMVP("MVP"),
  valueSUVP("SUVP"),
  valueMAPP("MAPP"),
  valueOther("Other");

  const Engagements(this.value);
  final String value;

  static Engagements fromValue(String value) {
    for (final item in Engagements.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Engagements value: $value');
  }
}

