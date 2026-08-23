// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_security_monitoring_condition_security_monitoring_condition_args_doc}
/// The set of arguments for SecurityMonitoringCondition.
/// {@endtemplate}
/// {@macro pulumi_apigee_security_monitoring_condition_security_monitoring_condition_args_doc}
class SecurityMonitoringConditionArgs {
  /// Resource ID of the security monitoring condition.
  final pulumi.Input<String> conditionId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [includeAllResources] A nested object resource.
  /// [orgId] The Apigee Organization associated with the Apigee Security Monitoring Condition,
  /// [profile] ID of security profile of the security monitoring condition.
  /// [scope] ID of security profile of the security monitoring condition.
  const SecurityMonitoringConditionArgs({
    required this.conditionId,
    this.deletionPolicy,
    this.includeAllResources,
    required this.orgId,
    required this.profile,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditionId': conditionId,
      'deletionPolicy': ?deletionPolicy,
      'includeAllResources': ?includeAllResources,
      'orgId': orgId,
      'profile': profile,
      'scope': scope,
    };
  }

  factory SecurityMonitoringConditionArgs.fromMap(Map<String, dynamic> map) {
    return SecurityMonitoringConditionArgs(
      conditionId: pulumi.Input.fromValue(map['conditionId'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      includeAllResources: (() { final guardedValue = map['includeAllResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      orgId: pulumi.Input.fromValue(map['orgId'] as String),
      profile: pulumi.Input.fromValue(map['profile'] as String),
      scope: pulumi.Input.fromValue(map['scope'] as String),
    );
  }
}
