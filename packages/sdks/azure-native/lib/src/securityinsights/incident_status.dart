/// The status of the incident
enum IncidentStatus {
  valueNew("New"),
  valueActive("Active"),
  valueClosed("Closed");

  const IncidentStatus(this.wireValue);
  final String wireValue;

  static IncidentStatus fromValue(String value) {
    for (final item in IncidentStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IncidentStatus value: $value');
  }
}
