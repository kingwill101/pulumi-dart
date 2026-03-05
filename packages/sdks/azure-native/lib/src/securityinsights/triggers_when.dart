enum TriggersWhen {
  valueCreated("Created"),
  valueUpdated("Updated");

  const TriggersWhen(this.wireValue);
  final String wireValue;

  static TriggersWhen fromValue(String value) {
    for (final item in TriggersWhen.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TriggersWhen value: $value');
  }
}

