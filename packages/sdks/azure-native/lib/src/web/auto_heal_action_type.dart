/// Predefined action to be taken.
enum AutoHealActionType {
  valueRecycle("Recycle"),
  valueLogEvent("LogEvent"),
  valueCustomAction("CustomAction");

  const AutoHealActionType(this.wireValue);
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

