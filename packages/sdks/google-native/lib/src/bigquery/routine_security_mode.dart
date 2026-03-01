/// Optional. The security mode of the routine, if defined. If not defined, the security mode is automatically determined from the routine's configuration.
enum RoutineSecurityMode {
  securityModeUnspecified("SECURITY_MODE_UNSPECIFIED"),
  definer("DEFINER"),
  invoker("INVOKER");

  const RoutineSecurityMode(this.value);
  final String value;

  static RoutineSecurityMode fromValue(String value) {
    for (final item in RoutineSecurityMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RoutineSecurityMode value: $value');
  }
}

