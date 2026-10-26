import 'package:pulumi/pulumi.dart' as pulumi;

/// This is deprecated and has no effect. Do not use.
enum ConditionSysComputeV1 implements pulumi.PulumiEnum<String> {
  ip("IP"),
  name("NAME"),
  noAttr("NO_ATTR"),
  region("REGION"),
  service("SERVICE");

  const ConditionSysComputeV1(this.wireValue);
  @override
  final String wireValue;

  static ConditionSysComputeV1 fromValue(String value) {
    for (final item in ConditionSysComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConditionSysComputeV1 value: $value');
  }
}
