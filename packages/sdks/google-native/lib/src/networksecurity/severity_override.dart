// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'severity_override_action.dart';
import 'severity_override_severity.dart';

/// Defines what action to take for a specific severity match.
class SeverityOverride {
  /// Threat action override.
  final pulumi.Input<SeverityOverrideAction> action;
  /// Severity level to match.
  final pulumi.Input<SeverityOverrideSeverity> severity;

  /// Creates a new [SeverityOverride].
  /// [action] Threat action override.
  /// [severity] Severity level to match.
  const SeverityOverride({
    required this.action,
    required this.severity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': pulumi.Input.mapInputValue<SeverityOverrideAction, String>(action, (value) => value.wireValue),
      'severity': pulumi.Input.mapInputValue<SeverityOverrideSeverity, String>(severity, (value) => value.wireValue),
    };
  }

  factory SeverityOverride.fromMap(Map<String, dynamic> map) {
    return SeverityOverride(
      action: pulumi.Input.fromValue(SeverityOverrideAction.fromValue(map['action']! as String)),
      severity: pulumi.Input.fromValue(SeverityOverrideSeverity.fromValue(map['severity']! as String)),
    );
  }
}

