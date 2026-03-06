// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines what action to take for a specific severity match.
class SeverityOverrideResponse {
  /// Threat action override.
  final pulumi.Input<String> action;
  /// Severity level to match.
  final pulumi.Input<String> severity;

  /// Creates a new [SeverityOverrideResponse].
  /// [action] Threat action override.
  /// [severity] Severity level to match.
  const SeverityOverrideResponse({
    required this.action,
    required this.severity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'severity': severity,
    };
  }

  factory SeverityOverrideResponse.fromMap(Map<String, dynamic> map) {
    return SeverityOverrideResponse(
      action: pulumi.Input.fromValue(map['action'] as String),
      severity: pulumi.Input.fromValue(map['severity'] as String),
    );
  }
}

