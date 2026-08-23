/// This is deprecated and has no effect. Do not use.
enum ConditionSys {
  ip("IP"),
  name("NAME"),
  noAttr("NO_ATTR"),
  region("REGION"),
  service("SERVICE");

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
