import 'package:pulumi/pulumi.dart' as pulumi;

/// Tactic of the assessment
enum Tactics implements pulumi.PulumiEnum<String> {
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
  @override
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
