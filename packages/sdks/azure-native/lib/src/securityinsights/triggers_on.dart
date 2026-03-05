enum TriggersOn {
  valueIncidents("Incidents"),
  valueAlerts("Alerts");

  const TriggersOn(this.wireValue);
  final String wireValue;

  static TriggersOn fromValue(String value) {
    for (final item in TriggersOn.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TriggersOn value: $value');
  }
}

