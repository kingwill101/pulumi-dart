/// Schedule interval type
enum JobScheduleType {
  valueOnce("Once"),
  valueRecurring("Recurring");

  const JobScheduleType(this.wireValue);
  final String wireValue;

  static JobScheduleType fromValue(String value) {
    for (final item in JobScheduleType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobScheduleType value: $value');
  }
}

