/// Type of action being executed by the job step.
enum JobStepActionType {
  valueTSql("TSql");

  const JobStepActionType(this.wireValue);
  final String wireValue;

  static JobStepActionType fromValue(String value) {
    for (final item in JobStepActionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobStepActionType value: $value');
  }
}
