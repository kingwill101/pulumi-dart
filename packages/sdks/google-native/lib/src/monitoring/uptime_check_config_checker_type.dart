/// The type of checkers to use to execute the Uptime check.
enum UptimeCheckConfigCheckerType {
  checkerTypeUnspecified("CHECKER_TYPE_UNSPECIFIED"),
  staticIpCheckers("STATIC_IP_CHECKERS"),
  vpcCheckers("VPC_CHECKERS");

  const UptimeCheckConfigCheckerType(this.wireValue);
  final String wireValue;

  static UptimeCheckConfigCheckerType fromValue(String value) {
    for (final item in UptimeCheckConfigCheckerType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UptimeCheckConfigCheckerType value: $value');
  }
}

