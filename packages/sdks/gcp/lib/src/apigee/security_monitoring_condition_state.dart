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
      conditionId: (() { final guardedValue = map['conditionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      includeAllResources: (() { final guardedValue = map['includeAllResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orgId: (() { final guardedValue = map['orgId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      profile: (() { final guardedValue = map['profile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      totalDeployedResources: (() { final guardedValue = map['totalDeployedResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      totalMonitoredResources: (() { final guardedValue = map['totalMonitoredResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

