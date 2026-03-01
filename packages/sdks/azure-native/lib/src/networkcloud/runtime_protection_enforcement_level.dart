/// The mode of operation for runtime protection.
enum RuntimeProtectionEnforcementLevel {
  valueAudit("Audit"),
  valueDisabled("Disabled"),
  valueOnDemand("OnDemand"),
  valuePassive("Passive"),
  valueRealTime("RealTime");

  const RuntimeProtectionEnforcementLevel(this.value);
  final String value;

  static RuntimeProtectionEnforcementLevel fromValue(String value) {
    for (final item in RuntimeProtectionEnforcementLevel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RuntimeProtectionEnforcementLevel value: $value');
  }
}

