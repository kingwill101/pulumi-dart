// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_pack_compliance_framework_input.dart';

class PolicyPackPolicyInput {
  /// JSON Schema (properties/required/type) for the policy's runtime config. Values are supplied per-policy via the PolicyGroup's policyPacks[].config map.
  final pulumi.Input<Map<String, dynamic>>? configSchema;
  final pulumi.Input<String>? description;
  final pulumi.Input<String>? displayName;
  /// One of: advisory, mandatory, remediate, disabled.
  final pulumi.Input<String>? enforcementLevel;
  /// Compliance framework this policy belongs to.
  final pulumi.Input<PolicyPackComplianceFrameworkInput>? framework;
  final pulumi.Input<String>? message;
  /// Unique policy name within the pack.
  final pulumi.Input<String> name;
  /// Description of steps to remediate a violation.
  final pulumi.Input<String>? remediationSteps;
  /// Severity level: low, medium, high, or critical.
  final pulumi.Input<String>? severity;
  /// Tags associated with the policy.
  final pulumi.Input<List<String>>? tags;
  /// URL with more information about the policy.
  final pulumi.Input<String>? url;

  /// Creates a new [PolicyPackPolicyInput].
  /// [configSchema] JSON Schema (properties/required/type) for the policy's runtime config. Values are supplied per-policy via the PolicyGroup's policyPacks[].config map.
  /// [description] Optional.
  /// [displayName] Optional.
  /// [enforcementLevel] One of: advisory, mandatory, remediate, disabled.
  /// [framework] Compliance framework this policy belongs to.
  /// [message] Optional.
  /// [name] Unique policy name within the pack.
  /// [remediationSteps] Description of steps to remediate a violation.
  /// [severity] Severity level: low, medium, high, or critical.
  /// [tags] Tags associated with the policy.
  /// [url] URL with more information about the policy.
  const PolicyPackPolicyInput({
    this.configSchema,
    this.description,
    this.displayName,
    this.enforcementLevel,
    this.framework,
    this.message,
    required this.name,
    this.remediationSteps,
    this.severity,
    this.tags,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configSchema': ?configSchema,
      'description': ?description,
      'displayName': ?displayName,
      'enforcementLevel': ?enforcementLevel,
      'framework': ?pulumi.Input.mapOptionalInputValue<PolicyPackComplianceFrameworkInput, Map<String, dynamic>>(framework, (value) => value.toMap()),
      'message': ?message,
      'name': name,
      'remediationSteps': ?remediationSteps,
      'severity': ?severity,
      'tags': ?tags,
      'url': ?url,
    };
  }

  factory PolicyPackPolicyInput.fromMap(Map<String, dynamic> map) {
    return PolicyPackPolicyInput(
      configSchema: (() { final guardedValue = map['configSchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enforcementLevel: (() { final guardedValue = map['enforcementLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      framework: (() { final guardedValue = map['framework']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyPackComplianceFrameworkInput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      remediationSteps: (() { final guardedValue = map['remediationSteps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      severity: (() { final guardedValue = map['severity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
