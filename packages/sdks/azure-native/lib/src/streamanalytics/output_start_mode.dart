/// This property should only be utilized when it is desired that the job be started immediately upon creation. Value may be JobStartTime, CustomTime, or LastOutputEventTime to indicate whether the starting point of the output event stream should start whenever the job is started, start at a custom user time stamp specified via the outputStartTime property, or start from the last event output time.
enum OutputStartMode {
  valueJobStartTime("JobStartTime"),
  valueCustomTime("CustomTime"),
  valueLastOutputEventTime("LastOutputEventTime");

  const OutputStartMode(this.wireValue);
  final String wireValue;

  static OutputStartMode fromValue(String value) {
    for (final item in OutputStartMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OutputStartMode value: $value');
  }
}

