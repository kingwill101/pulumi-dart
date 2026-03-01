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
  SecurityMonitoringConditionArgs({
    required pulumi.Output<String> conditionId,
    pulumi.Output<Map<String, dynamic>>? includeAllResources,
    required pulumi.Output<String> orgId,
    required pulumi.Output<String> profile,
    required pulumi.Output<String> scope,
  }) :
      conditionId = pulumi.Input.asInput<String>(conditionId),
      includeAllResources = pulumi.Input.asOptionalInput<Map<String, dynamic>>(includeAllResources),
      orgId = pulumi.Input.asInput<String>(orgId),
      profile = pulumi.Input.asInput<String>(profile),
      scope = pulumi.Input.asInput<String>(scope);

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
      conditionId: pulumi.Output.create<String>(map['conditionId'] as String),
      includeAllResources: map['includeAllResources'] == null ? null : pulumi.Output.create<Map<String, dynamic>>((map['includeAllResources'] as Map).cast<String, dynamic>()),
      orgId: pulumi.Output.create<String>(map['orgId'] as String),
      profile: pulumi.Output.create<String>(map['profile'] as String),
      scope: pulumi.Output.create<String>(map['scope'] as String),
    );
  }
}

