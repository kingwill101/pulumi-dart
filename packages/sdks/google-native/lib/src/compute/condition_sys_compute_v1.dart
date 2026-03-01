/// This is deprecated and has no effect. Do not use.
enum ConditionSysComputeV1 {
  ip("IP"),
  name("NAME"),
  noAttr("NO_ATTR"),
  region("REGION"),
  service("SERVICE");

  const ConditionSysComputeV1(this.value);
  final String value;

  static ConditionSysComputeV1 fromValue(String value) {
    for (final item in ConditionSysComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConditionSysComputeV1 value: $value');
  }
}

