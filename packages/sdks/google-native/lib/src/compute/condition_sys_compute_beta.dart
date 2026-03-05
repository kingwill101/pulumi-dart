/// This is deprecated and has no effect. Do not use.
enum ConditionSysComputeBeta {
  ip("IP"),
  name("NAME"),
  noAttr("NO_ATTR"),
  region("REGION"),
  service("SERVICE");

  const ConditionSysComputeBeta(this.wireValue);
  final String wireValue;

  static ConditionSysComputeBeta fromValue(String value) {
    for (final item in ConditionSysComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConditionSysComputeBeta value: $value');
  }
}

