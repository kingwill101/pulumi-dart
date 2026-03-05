/// The mode of operation for runtime protection.
enum RuntimeProtectionEnforcementLevel {
  valueAudit("Audit"),
  valueDisabled("Disabled"),
  valueOnDemand("OnDemand"),
  valuePassive("Passive"),
  valueRealTime("RealTime");

  const RuntimeProtectionEnforcementLevel(this.wireValue);
  final String wireValue;

  static RuntimeProtectionEnforcementLevel fromValue(String value) {
    for (final item in RuntimeProtectionEnforcementLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RuntimeProtectionEnforcementLevel value: $value');
  }
}

