import 'package:pulumi/pulumi.dart' as pulumi;

/// This is deprecated and has no effect. Do not use.
enum ConditionSysComputeBeta implements pulumi.PulumiEnum<String> {
  ip("IP"),
  name("NAME"),
  noAttr("NO_ATTR"),
  region("REGION"),
  service("SERVICE");

  const ConditionSysComputeBeta(this.wireValue);
  @override
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
