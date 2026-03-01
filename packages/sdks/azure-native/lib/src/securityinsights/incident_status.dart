/// The status of the incident
enum IncidentStatus {
  valueNew("New"),
  valueActive("Active"),
  valueClosed("Closed");

  const IncidentStatus(this.value);
  final String value;

  static IncidentStatus fromValue(String value) {
    for (final item in IncidentStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IncidentStatus value: $value');
  }
}

