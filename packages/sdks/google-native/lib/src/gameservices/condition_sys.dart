/// Trusted attributes supplied by any service that owns resources and uses the IAM system for access control.
enum ConditionSys {
  noAttr("NO_ATTR"),
  region("REGION"),
  service("SERVICE"),
  name("NAME"),
  ip("IP");

  const ConditionSys(this.wireValue);
  final String wireValue;

  static ConditionSys fromValue(String value) {
    for (final item in ConditionSys.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConditionSys value: $value');
  }
}
