// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines what action to take for a specific threat_id match.
class ThreatOverrideResponse {
  /// Threat action override. For some threat types, only a subset of actions applies.
  final pulumi.Input<String> action;

  /// Vendor-specific ID of a threat to override.
  final pulumi.Input<String> threatId;

  /// Type of the threat (read only).
  final pulumi.Input<String> type;

  /// Creates a new [ThreatOverrideResponse].
  /// [action] Threat action override. For some threat types, only a subset of actions applies.
  /// [threatId] Vendor-specific ID of a threat to override.
  /// [type] Type of the threat (read only).
  ThreatOverrideResponse({
    required this.action,
    required this.threatId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'threatId': threatId,
      'type': type,
    };
  }

  factory ThreatOverrideResponse.fromMap(Map<String, dynamic> map) {
    return ThreatOverrideResponse(
      action: pulumi.Input.fromValue(map['action'] as String),
      threatId: pulumi.Input.fromValue(map['threatId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
