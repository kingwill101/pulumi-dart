// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SecurityMonitoringCondition resources.
class SecurityMonitoringConditionState {
  /// Resource ID of the security monitoring condition.
  final pulumi.Input<String>? conditionId;
  /// The timestamp at which this profile was created.
  final pulumi.Input<String>? createTime;
  /// A nested object resource.
  final pulumi.Input<Map<String, dynamic>>? includeAllResources;
  /// Name of the security monitoring condition resource,
  /// in the format `organizations/{{org_name}}/securityMonitoringConditions/{{condition_id}}`.
  final pulumi.Input<String>? name;
  /// The Apigee Organization associated with the Apigee Security Monitoring Condition,
  /// in the format `organizations/{{org_name}}`.
  final pulumi.Input<String>? orgId;
  /// ID of security profile of the security monitoring condition.
  final pulumi.Input<String>? profile;
  /// ID of security profile of the security monitoring condition.
  final pulumi.Input<String>? scope;
  /// Total number of deployed resources within scope.
  final pulumi.Input<int>? totalDeployedResources;
  /// Total number of monitored resources within this condition.
  final pulumi.Input<int>? totalMonitoredResources;
  /// The timestamp at which this profile was most recently updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [SecurityMonitoringConditionState].
  /// [conditionId] Resource ID of the security monitoring condition.
  /// [createTime] The timestamp at which this profile was created.
  /// [includeAllResources] A nested object resource.
  /// [name] Name of the security monitoring condition resource,
  /// [orgId] The Apigee Organization associated with the Apigee Security Monitoring Condition,
  /// [profile] ID of security profile of the security monitoring condition.
  /// [scope] ID of security profile of the security monitoring condition.
  /// [totalDeployedResources] Total number of deployed resources within scope.
  /// [totalMonitoredResources] Total number of monitored resources within this condition.
  /// [updateTime] The timestamp at which this profile was most recently updated.
  SecurityMonitoringConditionState({
    pulumi.Output<String>? conditionId,
    pulumi.Output<String>? createTime,
    pulumi.Output<Map<String, dynamic>>? includeAllResources,
    pulumi.Output<String>? name,
    pulumi.Output<String>? orgId,
    pulumi.Output<String>? profile,
    pulumi.Output<String>? scope,
    pulumi.Output<int>? totalDeployedResources,
    pulumi.Output<int>? totalMonitoredResources,
    pulumi.Output<String>? updateTime,
  }) :
      conditionId = pulumi.Input.asOptionalInput<String>(conditionId),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      includeAllResources = pulumi.Input.asOptionalInput<Map<String, dynamic>>(includeAllResources),
      name = pulumi.Input.asOptionalInput<String>(name),
      orgId = pulumi.Input.asOptionalInput<String>(orgId),
      profile = pulumi.Input.asOptionalInput<String>(profile),
      scope = pulumi.Input.asOptionalInput<String>(scope),
      totalDeployedResources = pulumi.Input.asOptionalInput<int>(totalDeployedResources),
      totalMonitoredResources = pulumi.Input.asOptionalInput<int>(totalMonitoredResources),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditionId': ?conditionId,
      'createTime': ?createTime,
      'includeAllResources': ?includeAllResources,
      'name': ?name,
      'orgId': ?orgId,
      'profile': ?profile,
      'scope': ?scope,
      'totalDeployedResources': ?totalDeployedResources,
      'totalMonitoredResources': ?totalMonitoredResources,
      'updateTime': ?updateTime,
    };
  }

  factory SecurityMonitoringConditionState.fromMap(Map<String, dynamic> map) {
    return SecurityMonitoringConditionState(
      conditionId: map['conditionId'] == null ? null : pulumi.Output.create<String>(map['conditionId'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      includeAllResources: map['includeAllResources'] == null ? null : pulumi.Output.create<Map<String, dynamic>>((map['includeAllResources'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      orgId: map['orgId'] == null ? null : pulumi.Output.create<String>(map['orgId'] as String),
      profile: map['profile'] == null ? null : pulumi.Output.create<String>(map['profile'] as String),
      scope: map['scope'] == null ? null : pulumi.Output.create<String>(map['scope'] as String),
      totalDeployedResources: map['totalDeployedResources'] == null ? null : pulumi.Output.create<int>(map['totalDeployedResources'] as int),
      totalMonitoredResources: map['totalMonitoredResources'] == null ? null : pulumi.Output.create<int>(map['totalMonitoredResources'] as int),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

