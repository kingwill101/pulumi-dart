// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_disk_consistency_group_policy.dart';
import 'resource_policy_group_placement_policy.dart';
import 'resource_policy_instance_schedule_policy.dart';
import 'resource_policy_snapshot_schedule_policy.dart';
import 'resource_policy_workload_policy.dart';

/// Input properties used for looking up and filtering ResourcePolicy resources.
class ResourcePolicyState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String?>? description;
  /// Replication consistency group for asynchronous disk replication.
  /// Structure is documented below.
  final pulumi.Input<ResourcePolicyDiskConsistencyGroupPolicy?>? diskConsistencyGroupPolicy;
  /// Resource policy for instances used for placement configuration.
  /// Structure is documented below.
  final pulumi.Input<ResourcePolicyGroupPlacementPolicy?>? groupPlacementPolicy;
  /// Resource policy for scheduling instance operations.
  /// Structure is documented below.
  final pulumi.Input<ResourcePolicyInstanceSchedulePolicy?>? instanceSchedulePolicy;
  /// The name of the resource, provided by the client when initially creating
  /// the resource. The resource name must be 1-63 characters long, and comply
  /// with RFC1035. Specifically, the name must be 1-63 characters long and
  /// match the regular expression `a-z`? which means the
  /// first character must be a lowercase letter, and all following characters
  /// must be a dash, lowercase letter, or digit, except the last character,
  /// which cannot be a dash.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Region where resource policy resides.
  final pulumi.Input<String?>? region;
  /// The URI of the created resource.
  final pulumi.Input<String?>? selfLink;
  /// Policy for creating snapshots of persistent disks.
  /// Structure is documented below.
  final pulumi.Input<ResourcePolicySnapshotSchedulePolicy?>? snapshotSchedulePolicy;
  /// Represents the workload policy.
  /// Structure is documented below.
  final pulumi.Input<ResourcePolicyWorkloadPolicy?>? workloadPolicy;

  /// Creates a new [ResourcePolicyState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [diskConsistencyGroupPolicy] Replication consistency group for asynchronous disk replication.
  /// [groupPlacementPolicy] Resource policy for instances used for placement configuration.
  /// [instanceSchedulePolicy] Resource policy for scheduling instance operations.
  /// [name] The name of the resource, provided by the client when initially creating
  /// [project] The ID of the project in which the resource belongs.
  /// [region] Region where resource policy resides.
  /// [selfLink] The URI of the created resource.
  /// [snapshotSchedulePolicy] Policy for creating snapshots of persistent disks.
  /// [workloadPolicy] Represents the workload policy.
  const ResourcePolicyState({
    this.deletionPolicy,
    this.description,
    this.diskConsistencyGroupPolicy,
    this.groupPlacementPolicy,
    this.instanceSchedulePolicy,
    this.name,
    this.project,
    this.region,
    this.selfLink,
    this.snapshotSchedulePolicy,
    this.workloadPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'diskConsistencyGroupPolicy': ?pulumi.Input.mapOptionalInputValue<ResourcePolicyDiskConsistencyGroupPolicy, Map<String, dynamic>>(diskConsistencyGroupPolicy, (value) => value.toMap()),
      'groupPlacementPolicy': ?pulumi.Input.mapOptionalInputValue<ResourcePolicyGroupPlacementPolicy, Map<String, dynamic>>(groupPlacementPolicy, (value) => value.toMap()),
      'instanceSchedulePolicy': ?pulumi.Input.mapOptionalInputValue<ResourcePolicyInstanceSchedulePolicy, Map<String, dynamic>>(instanceSchedulePolicy, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'selfLink': ?selfLink,
      'snapshotSchedulePolicy': ?pulumi.Input.mapOptionalInputValue<ResourcePolicySnapshotSchedulePolicy, Map<String, dynamic>>(snapshotSchedulePolicy, (value) => value.toMap()),
      'workloadPolicy': ?pulumi.Input.mapOptionalInputValue<ResourcePolicyWorkloadPolicy, Map<String, dynamic>>(workloadPolicy, (value) => value.toMap()),
    };
  }

  factory ResourcePolicyState.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyState(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskConsistencyGroupPolicy: (() { final guardedValue = map['diskConsistencyGroupPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourcePolicyDiskConsistencyGroupPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      groupPlacementPolicy: (() { final guardedValue = map['groupPlacementPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourcePolicyGroupPlacementPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceSchedulePolicy: (() { final guardedValue = map['instanceSchedulePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourcePolicyInstanceSchedulePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snapshotSchedulePolicy: (() { final guardedValue = map['snapshotSchedulePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourcePolicySnapshotSchedulePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workloadPolicy: (() { final guardedValue = map['workloadPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourcePolicyWorkloadPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
