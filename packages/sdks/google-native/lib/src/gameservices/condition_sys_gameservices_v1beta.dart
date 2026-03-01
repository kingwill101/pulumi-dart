/// Trusted attributes supplied by any service that owns resources and uses the IAM system for access control.
enum ConditionSysGameservicesV1beta {
  noAttr("NO_ATTR"),
  region("REGION"),
  service("SERVICE"),
  name("NAME"),
  ip("IP");

  const ConditionSysGameservicesV1beta(this.value);
  final String value;

  static ConditionSysGameservicesV1beta fromValue(String value) {
    for (final item in ConditionSysGameservicesV1beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConditionSysGameservicesV1beta value: $value');
  }
}

