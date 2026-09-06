import 'package:pulumi/pulumi.dart' as pulumi;

/// Predefined action to be taken.
enum AutoHealActionType implements pulumi.PulumiEnum<String> {
  valueRecycle("Recycle"),
  valueLogEvent("LogEvent"),
  valueCustomAction("CustomAction");

  const AutoHealActionType(this.wireValue);
  @override
  final String wireValue;

  static AutoHealActionType fromValue(String value) {
    for (final item in AutoHealActionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoHealActionType value: $value');
  }
}
