/// Predefined action to be taken.
enum AutoHealActionType {
  valueRecycle("Recycle"),
  valueLogEvent("LogEvent"),
  valueCustomAction("CustomAction");

  const AutoHealActionType(this.value);
  final String value;

  static AutoHealActionType fromValue(String value) {
    for (final item in AutoHealActionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoHealActionType value: $value');
  }
}

