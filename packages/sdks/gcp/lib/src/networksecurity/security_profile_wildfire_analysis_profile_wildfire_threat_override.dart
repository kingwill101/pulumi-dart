// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityProfileWildfireAnalysisProfileWildfireThreatOverride {
  /// Threat action override.
  /// Possible values are: `WILDFIRE_DEFAULT_ACTION`, `WILDFIRE_ALLOW`.
  final pulumi.Input<String> action;
  /// Vendor-specific ID of a threat to override.
  final pulumi.Input<String> threatId;

  /// Creates a new [SecurityProfileWildfireAnalysisProfileWildfireThreatOverride].
  /// [action] Threat action override.
  /// [threatId] Vendor-specific ID of a threat to override.
  const SecurityProfileWildfireAnalysisProfileWildfireThreatOverride({
    required this.action,
    required this.threatId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'threatId': threatId,
    };
  }

  factory SecurityProfileWildfireAnalysisProfileWildfireThreatOverride.fromMap(Map<String, dynamic> map) {
    return SecurityProfileWildfireAnalysisProfileWildfireThreatOverride(
      action: pulumi.Input.fromValue(map['action'] as String),
      threatId: pulumi.Input.fromValue(map['threatId'] as String),
    );
  }
}
