/// Run interval unit of task execution. This is a required field when ExecutionTrigger.properties.type is 'OnSchedule'; this property should not be present when ExecutionTrigger.properties.type is 'RunOnce'
enum IntervalUnit {
  valueDays("Days");

  const IntervalUnit(this.wireValue);
  final String wireValue;

  static IntervalUnit fromValue(String value) {
    for (final item in IntervalUnit.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IntervalUnit value: $value');
  }
}
