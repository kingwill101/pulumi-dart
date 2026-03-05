/// The status of the task
enum IncidentTaskStatus {
  valueNew("New"),
  valueCompleted("Completed");

  const IncidentTaskStatus(this.wireValue);
  final String wireValue;

  static IncidentTaskStatus fromValue(String value) {
    for (final item in IncidentTaskStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IncidentTaskStatus value: $value');
  }
}

