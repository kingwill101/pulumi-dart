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
    this.conditionId,
    this.createTime,
    this.includeAllResources,
    this.name,
    this.orgId,
    this.profile,
    this.scope,
    this.totalDeployedResources,
    this.totalMonitoredResources,
    this.updateTime,
  });

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
      conditionId: map['conditionId'] == null ? null : (map['conditionId'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      includeAllResources: map['includeAllResources'] == null ? null : ((map['includeAllResources'] as Map).cast<String, dynamic>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      orgId: map['orgId'] == null ? null : (map['orgId'] as String).input(),
      profile: map['profile'] == null ? null : (map['profile'] as String).input(),
      scope: map['scope'] == null ? null : (map['scope'] as String).input(),
      totalDeployedResources: map['totalDeployedResources'] == null ? null : (map['totalDeployedResources'] as int).input(),
      totalMonitoredResources: map['totalMonitoredResources'] == null ? null : (map['totalMonitoredResources'] as int).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

