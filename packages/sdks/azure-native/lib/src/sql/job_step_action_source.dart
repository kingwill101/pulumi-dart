/// The source of the action to execute.
enum JobStepActionSource {
  valueInline("Inline");

  const JobStepActionSource(this.wireValue);
  final String wireValue;

  static JobStepActionSource fromValue(String value) {
    for (final item in JobStepActionSource.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobStepActionSource value: $value');
  }
}

