/// The trigger type of the storage task assignment execution
enum TriggerType {
  valueRunOnce("RunOnce"),
  valueOnSchedule("OnSchedule");

  const TriggerType(this.wireValue);
  final String wireValue;

  static TriggerType fromValue(String value) {
    for (final item in TriggerType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TriggerType value: $value');
  }
}

