/// Optional. The security mode of the routine, if defined. If not defined, the security mode is automatically determined from the routine's configuration.
enum RoutineSecurityMode {
  securityModeUnspecified("SECURITY_MODE_UNSPECIFIED"),
  definer("DEFINER"),
  invoker("INVOKER");

  const RoutineSecurityMode(this.wireValue);
  final String wireValue;

  static RoutineSecurityMode fromValue(String value) {
    for (final item in RoutineSecurityMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RoutineSecurityMode value: $value');
  }
}
