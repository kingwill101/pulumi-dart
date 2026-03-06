// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_security_monitoring_condition_security_monitoring_condition_args_doc}
/// The set of arguments for SecurityMonitoringCondition.
/// {@endtemplate}
/// {@macro pulumi_apigee_security_monitoring_condition_security_monitoring_condition_args_doc}
class SecurityMonitoringConditionArgs {
  /// Resource ID of the security monitoring condition.
  final pulumi.Input<String> conditionId;
  /// A nested object resource.
  final pulumi.Input<Map<String, dynamic>>? includeAllResources;
  /// The Apigee Organization associated with the Apigee Security Monitoring Condition,
  /// in the format `organizations/{{org_name}}`.
  final pulumi.Input<String> orgId;
  /// ID of security profile of the security monitoring condition.
  final pulumi.Input<String> profile;
  /// ID of security profile of the security monitoring condition.
  final pulumi.Input<String> scope;

  /// Creates a new [SecurityMonitoringConditionArgs].
  /// [conditionId] Resource ID of the security monitoring condition.
  /// [includeAllResources] A nested object resource.
  /// [orgId] The Apigee Organization associated with the Apigee Security Monitoring Condition,
  /// [profile] ID of security profile of the security monitoring condition.
  /// [scope] ID of security profile of the security monitoring condition.
  const SecurityMonitoringConditionArgs({
    required this.conditionId,
    this.includeAllResources,
    required this.orgId,
    required this.profile,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditionId': conditionId,
      'includeAllResources': ?includeAllResources,
      'orgId': orgId,
      'profile': profile,
      'scope': scope,
    };
  }

  factory SecurityMonitoringConditionArgs.fromMap(Map<String, dynamic> map) {
    return SecurityMonitoringConditionArgs(
      conditionId: pulumi.Input.fromValue(map['conditionId'] as String),
      includeAllResources: (() { final guardedValue = map['includeAllResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      orgId: pulumi.Input.fromValue(map['orgId'] as String),
      profile: pulumi.Input.fromValue(map['profile'] as String),
      scope: pulumi.Input.fromValue(map['scope'] as String),
    );
  }
}

