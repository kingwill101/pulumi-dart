import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. Threat action override. For some threat types, only a subset of actions applies.
enum ThreatOverrideAction implements pulumi.PulumiEnum<String> {
  threatActionUnspecified("THREAT_ACTION_UNSPECIFIED"),
  defaultAction("DEFAULT_ACTION"),
  allow("ALLOW"),
  alert("ALERT"),
  deny("DENY");

  const ThreatOverrideAction(this.wireValue);
  @override
  final String wireValue;

  static ThreatOverrideAction fromValue(String value) {
    for (final item in ThreatOverrideAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ThreatOverrideAction value: $value');
  }
}
