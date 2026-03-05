/// The output destination type.
enum JobStepOutputType {
  valueSqlDatabase("SqlDatabase");

  const JobStepOutputType(this.wireValue);
  final String wireValue;

  static JobStepOutputType fromValue(String value) {
    for (final item in JobStepOutputType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobStepOutputType value: $value');
  }
}

