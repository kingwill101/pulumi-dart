import 'package:pulumi/pulumi.dart' as pulumi;

/// This is deprecated and has no effect. Do not use.
enum ConditionSys implements pulumi.PulumiEnum<String> {
  ip("IP"),
  name("NAME"),
  noAttr("NO_ATTR"),
  region("REGION"),
  service("SERVICE");

  const ConditionSys(this.wireValue);
  @override
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
