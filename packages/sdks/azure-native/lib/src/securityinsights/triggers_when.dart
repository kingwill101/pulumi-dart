enum TriggersWhen {
  valueCreated("Created"),
  valueUpdated("Updated");

  const TriggersWhen(this.value);
  final String value;

  static TriggersWhen fromValue(String value) {
    for (final item in TriggersWhen.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TriggersWhen value: $value');
  }
}

