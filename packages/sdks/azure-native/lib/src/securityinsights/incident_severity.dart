/// The severity of the incident
enum IncidentSeverity {
  valueHigh("High"),
  valueMedium("Medium"),
  valueLow("Low"),
  valueInformational("Informational");

  const IncidentSeverity(this.value);
  final String value;

  static IncidentSeverity fromValue(String value) {
    for (final item in IncidentSeverity.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IncidentSeverity value: $value');
  }
}

