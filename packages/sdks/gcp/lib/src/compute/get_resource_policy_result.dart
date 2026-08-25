// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resource_policy_disk_consistency_group_policy.dart';
import 'get_resource_policy_group_placement_policy.dart';
import 'get_resource_policy_instance_schedule_policy.dart';
import 'get_resource_policy_snapshot_schedule_policy.dart';
import 'get_resource_policy_workload_policy.dart';

/// Result data returned by getResourcePolicy.
class GetResourcePolicyResult {
  final String? deletionPolicy;
  /// Description of this Resource Policy.
  final String? description;
  final List<GetResourcePolicyDiskConsistencyGroupPolicy>? diskConsistencyGroupPolicies;
  final List<GetResourcePolicyGroupPlacementPolicy>? groupPlacementPolicies;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<GetResourcePolicyInstanceSchedulePolicy>? instanceSchedulePolicies;
  final String? name;
  final String? project;
  final String? region;
  /// The URI of the resource.
  final String? selfLink;
  final List<GetResourcePolicySnapshotSchedulePolicy>? snapshotSchedulePolicies;
  final List<GetResourcePolicyWorkloadPolicy>? workloadPolicies;

  /// Creates a new [GetResourcePolicyResult].
  /// [deletionPolicy] Optional.
  /// [description] Description of this Resource Policy.
  /// [diskConsistencyGroupPolicies] Optional.
  /// [groupPlacementPolicies] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceSchedulePolicies] Optional.
  /// [name] Optional.
  /// [project] Optional.
  /// [region] Optional.
  /// [selfLink] The URI of the resource.
  /// [snapshotSchedulePolicies] Optional.
  /// [workloadPolicies] Optional.
  const GetResourcePolicyResult({
    this.deletionPolicy,
    this.description,
    this.diskConsistencyGroupPolicies,
    this.groupPlacementPolicies,
    this.id,
    this.instanceSchedulePolicies,
    this.name,
    this.project,
    this.region,
    this.selfLink,
    this.snapshotSchedulePolicies,
    this.workloadPolicies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'diskConsistencyGroupPolicies': ?(() { final guardedValue = diskConsistencyGroupPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetResourcePolicyDiskConsistencyGroupPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'groupPlacementPolicies': ?(() { final guardedValue = groupPlacementPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetResourcePolicyGroupPlacementPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'instanceSchedulePolicies': ?(() { final guardedValue = instanceSchedulePolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetResourcePolicyInstanceSchedulePolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'selfLink': ?selfLink,
      'snapshotSchedulePolicies': ?(() { final guardedValue = snapshotSchedulePolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetResourcePolicySnapshotSchedulePolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'workloadPolicies': ?(() { final guardedValue = workloadPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetResourcePolicyWorkloadPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetResourcePolicyResult.fromMap(Map<String, dynamic> map) {
    return GetResourcePolicyResult(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      diskConsistencyGroupPolicies: (() { final guardedValue = map['diskConsistencyGroupPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetResourcePolicyDiskConsistencyGroupPolicy>(guardedValue, (value) => GetResourcePolicyDiskConsistencyGroupPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      groupPlacementPolicies: (() { final guardedValue = map['groupPlacementPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetResourcePolicyGroupPlacementPolicy>(guardedValue, (value) => GetResourcePolicyGroupPlacementPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceSchedulePolicies: (() { final guardedValue = map['instanceSchedulePolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetResourcePolicyInstanceSchedulePolicy>(guardedValue, (value) => GetResourcePolicyInstanceSchedulePolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      snapshotSchedulePolicies: (() { final guardedValue = map['snapshotSchedulePolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetResourcePolicySnapshotSchedulePolicy>(guardedValue, (value) => GetResourcePolicySnapshotSchedulePolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      workloadPolicies: (() { final guardedValue = map['workloadPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetResourcePolicyWorkloadPolicy>(guardedValue, (value) => GetResourcePolicyWorkloadPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
