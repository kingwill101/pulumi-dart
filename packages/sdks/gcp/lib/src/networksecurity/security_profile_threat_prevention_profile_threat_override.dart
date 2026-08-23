// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityProfileThreatPreventionProfileThreatOverride {
  /// Threat action.
  /// Possible values are: `ALERT`, `ALLOW`, `DEFAULT_ACTION`, `DENY`.
  final pulumi.Input<String> action;
  /// Vendor-specific ID of a threat to override.
  final pulumi.Input<String> threatId;
  /// (Output)
  /// Type of threat.
  final pulumi.Input<String>? type;

  /// Creates a new [SecurityProfileThreatPreventionProfileThreatOverride].
  /// [action] Threat action.
  /// [threatId] Vendor-specific ID of a threat to override.
  /// [type] (Output)
  const SecurityProfileThreatPreventionProfileThreatOverride({
    required this.action,
    required this.threatId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'threatId': threatId,
      'type': ?type,
    };
  }

  factory SecurityProfileThreatPreventionProfileThreatOverride.fromMap(Map<String, dynamic> map) {
    return SecurityProfileThreatPreventionProfileThreatOverride(
      action: pulumi.Input.fromValue(map['action'] as String),
      threatId: pulumi.Input.fromValue(map['threatId'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
