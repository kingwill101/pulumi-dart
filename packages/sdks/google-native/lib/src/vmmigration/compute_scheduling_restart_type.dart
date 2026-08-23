/// Whether the Instance should be automatically restarted whenever it is terminated by Compute Engine (not terminated by user). This configuration is identical to `automaticRestart` field in Compute Engine create instance under scheduling. It was changed to an enum (instead of a boolean) to match the default value in Compute Engine which is automatic restart.
enum ComputeSchedulingRestartType {
  restartTypeUnspecified("RESTART_TYPE_UNSPECIFIED"),
  automaticRestart("AUTOMATIC_RESTART"),
  noAutomaticRestart("NO_AUTOMATIC_RESTART");

  const ComputeSchedulingRestartType(this.wireValue);
  final String wireValue;

  static ComputeSchedulingRestartType fromValue(String value) {
    for (final item in ComputeSchedulingRestartType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ComputeSchedulingRestartType value: $value');
  }
}
