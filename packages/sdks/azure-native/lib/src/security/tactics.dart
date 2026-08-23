/// Tactic of the assessment
enum Tactics {
  valueReconnaissance("Reconnaissance"),
  valueResourceDevelopment("Resource Development"),
  valueInitialAccess("Initial Access"),
  valueExecution("Execution"),
  valuePersistence("Persistence"),
  valuePrivilegeEscalation("Privilege Escalation"),
  valueDefenseEvasion("Defense Evasion"),
  valueCredentialAccess("Credential Access"),
  valueDiscovery("Discovery"),
  valueLateralMovement("Lateral Movement"),
  valueCollection("Collection"),
  valueCommandAndControl("Command and Control"),
  valueExfiltration("Exfiltration"),
  valueImpact("Impact");

  const Tactics(this.wireValue);
  final String wireValue;

  static Tactics fromValue(String value) {
    for (final item in Tactics.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Tactics value: $value');
  }
}
