// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resource_policy_disk_consistency_group_policy.dart';
import 'get_resource_policy_group_placement_policy.dart';
import 'get_resource_policy_instance_schedule_policy.dart';
import 'get_resource_policy_snapshot_schedule_policy.dart';
import 'get_resource_policy_workload_policy.dart';

/// Result data returned by getResourcePolicy.
class GetResourcePolicyResult {
  /// Description of this Resource Policy.
  final String description;
  final List<GetResourcePolicyDiskConsistencyGroupPolicy> diskConsistencyGroupPolicies;
  final List<GetResourcePolicyGroupPlacementPolicy> groupPlacementPolicies;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetResourcePolicyInstanceSchedulePolicy> instanceSchedulePolicies;
  final String name;
  final String? project;
  final String? region;
  /// The URI of the resource.
  final String selfLink;
  final List<GetResourcePolicySnapshotSchedulePolicy> snapshotSchedulePolicies;
  final List<GetResourcePolicyWorkloadPolicy> workloadPolicies;

  /// Creates a new [GetResourcePolicyResult].
  /// [description] Description of this Resource Policy.
  /// [diskConsistencyGroupPolicies] Required.
  /// [groupPlacementPolicies] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceSchedulePolicies] Required.
  /// [name] Required.
  /// [project] Optional.
  /// [region] Optional.
  /// [selfLink] The URI of the resource.
  /// [snapshotSchedulePolicies] Required.
  /// [workloadPolicies] Required.
  const GetResourcePolicyResult({
    required this.description,
    required this.diskConsistencyGroupPolicies,
    required this.groupPlacementPolicies,
    required this.id,
    required this.instanceSchedulePolicies,
    required this.name,
    this.project,
    this.region,
    required this.selfLink,
    required this.snapshotSchedulePolicies,
    required this.workloadPolicies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'diskConsistencyGroupPolicies': pulumi.Input.encodeList<GetResourcePolicyDiskConsistencyGroupPolicy, Map<String, dynamic>>(diskConsistencyGroupPolicies, (value) => value.toMap()),
      'groupPlacementPolicies': pulumi.Input.encodeList<GetResourcePolicyGroupPlacementPolicy, Map<String, dynamic>>(groupPlacementPolicies, (value) => value.toMap()),
      'id': id,
      'instanceSchedulePolicies': pulumi.Input.encodeList<GetResourcePolicyInstanceSchedulePolicy, Map<String, dynamic>>(instanceSchedulePolicies, (value) => value.toMap()),
      'name': name,
      'project': ?project,
      'region': ?region,
      'selfLink': selfLink,
      'snapshotSchedulePolicies': pulumi.Input.encodeList<GetResourcePolicySnapshotSchedulePolicy, Map<String, dynamic>>(snapshotSchedulePolicies, (value) => value.toMap()),
      'workloadPolicies': pulumi.Input.encodeList<GetResourcePolicyWorkloadPolicy, Map<String, dynamic>>(workloadPolicies, (value) => value.toMap()),
    };
  }

  factory GetResourcePolicyResult.fromMap(Map<String, dynamic> map) {
    return GetResourcePolicyResult(
      description: map['description'] as String,
      diskConsistencyGroupPolicies: pulumi.Input.decodeList<GetResourcePolicyDiskConsistencyGroupPolicy>(map['diskConsistencyGroupPolicies']!, (value) => GetResourcePolicyDiskConsistencyGroupPolicy.fromMap((value as Map).cast<String, dynamic>())),
      groupPlacementPolicies: pulumi.Input.decodeList<GetResourcePolicyGroupPlacementPolicy>(map['groupPlacementPolicies']!, (value) => GetResourcePolicyGroupPlacementPolicy.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      instanceSchedulePolicies: pulumi.Input.decodeList<GetResourcePolicyInstanceSchedulePolicy>(map['instanceSchedulePolicies']!, (value) => GetResourcePolicyInstanceSchedulePolicy.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: map['selfLink'] as String,
      snapshotSchedulePolicies: pulumi.Input.decodeList<GetResourcePolicySnapshotSchedulePolicy>(map['snapshotSchedulePolicies']!, (value) => GetResourcePolicySnapshotSchedulePolicy.fromMap((value as Map).cast<String, dynamic>())),
      workloadPolicies: pulumi.Input.decodeList<GetResourcePolicyWorkloadPolicy>(map['workloadPolicies']!, (value) => GetResourcePolicyWorkloadPolicy.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

