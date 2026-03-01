// ignore_for_file: unused_element, unnecessary_cast


class SecurityProfileThreatPreventionProfileThreatOverride {
  /// Threat action.
  /// Possible values are: `ALERT`, `ALLOW`, `DEFAULT_ACTION`, `DENY`.
  final String action;
  /// Vendor-specific ID of a threat to override.
  final String threatId;
  /// (Output)
  /// Type of threat.
  final String? type;

  /// Creates a new [SecurityProfileThreatPreventionProfileThreatOverride].
  /// [action] Threat action.
  /// [threatId] Vendor-specific ID of a threat to override.
  /// [type] (Output)
  SecurityProfileThreatPreventionProfileThreatOverride({
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
      action: map['action'] as String,
      threatId: map['threatId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

