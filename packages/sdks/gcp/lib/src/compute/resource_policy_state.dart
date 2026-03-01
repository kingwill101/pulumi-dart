// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_disk_consistency_group_policy.dart';
import 'resource_policy_group_placement_policy.dart';
import 'resource_policy_instance_schedule_policy.dart';
import 'resource_policy_snapshot_schedule_policy.dart';
import 'resource_policy_workload_policy.dart';

/// Input properties used for looking up and filtering ResourcePolicy resources.
class ResourcePolicyState {
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// Replication consistency group for asynchronous disk replication.
  /// Structure is documented below.
  final pulumi.Input<ResourcePolicyDiskConsistencyGroupPolicy>? diskConsistencyGroupPolicy;
  /// Resource policy for instances used for placement configuration.
  /// Structure is documented below.
  final pulumi.Input<ResourcePolicyGroupPlacementPolicy>? groupPlacementPolicy;
  /// Resource policy for scheduling instance operations.
  /// Structure is documented below.
  final pulumi.Input<ResourcePolicyInstanceSchedulePolicy>? instanceSchedulePolicy;
  /// The name of the resource, provided by the client when initially creating
  /// the resource. The resource name must be 1-63 characters long, and comply
  /// with RFC1035. Specifically, the name must be 1-63 characters long and
  /// match the regular expression `a-z`? which means the
  /// first character must be a lowercase letter, and all following characters
  /// must be a dash, lowercase letter, or digit, except the last character,
  /// which cannot be a dash.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Region where resource policy resides.
  final pulumi.Input<String>? region;
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;
  /// Policy for creating snapshots of persistent disks.
  /// Structure is documented below.
  final pulumi.Input<ResourcePolicySnapshotSchedulePolicy>? snapshotSchedulePolicy;
  /// Represents the workload policy.
  /// Structure is documented below.
  final pulumi.Input<ResourcePolicyWorkloadPolicy>? workloadPolicy;

  /// Creates a new [ResourcePolicyState].
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
  ResourcePolicyState({
    pulumi.Output<String>? description,
    pulumi.Output<ResourcePolicyDiskConsistencyGroupPolicy>? diskConsistencyGroupPolicy,
    pulumi.Output<ResourcePolicyGroupPlacementPolicy>? groupPlacementPolicy,
    pulumi.Output<ResourcePolicyInstanceSchedulePolicy>? instanceSchedulePolicy,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
    pulumi.Output<String>? selfLink,
    pulumi.Output<ResourcePolicySnapshotSchedulePolicy>? snapshotSchedulePolicy,
    pulumi.Output<ResourcePolicyWorkloadPolicy>? workloadPolicy,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      diskConsistencyGroupPolicy = pulumi.Input.asOptionalInput<ResourcePolicyDiskConsistencyGroupPolicy>(diskConsistencyGroupPolicy),
      groupPlacementPolicy = pulumi.Input.asOptionalInput<ResourcePolicyGroupPlacementPolicy>(groupPlacementPolicy),
      instanceSchedulePolicy = pulumi.Input.asOptionalInput<ResourcePolicyInstanceSchedulePolicy>(instanceSchedulePolicy),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink),
      snapshotSchedulePolicy = pulumi.Input.asOptionalInput<ResourcePolicySnapshotSchedulePolicy>(snapshotSchedulePolicy),
      workloadPolicy = pulumi.Input.asOptionalInput<ResourcePolicyWorkloadPolicy>(workloadPolicy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      diskConsistencyGroupPolicy: map['diskConsistencyGroupPolicy'] == null ? null : pulumi.Output.create<ResourcePolicyDiskConsistencyGroupPolicy>(ResourcePolicyDiskConsistencyGroupPolicy.fromMap((map['diskConsistencyGroupPolicy'] as Map).cast<String, dynamic>())),
      groupPlacementPolicy: map['groupPlacementPolicy'] == null ? null : pulumi.Output.create<ResourcePolicyGroupPlacementPolicy>(ResourcePolicyGroupPlacementPolicy.fromMap((map['groupPlacementPolicy'] as Map).cast<String, dynamic>())),
      instanceSchedulePolicy: map['instanceSchedulePolicy'] == null ? null : pulumi.Output.create<ResourcePolicyInstanceSchedulePolicy>(ResourcePolicyInstanceSchedulePolicy.fromMap((map['instanceSchedulePolicy'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      selfLink: map['selfLink'] == null ? null : pulumi.Output.create<String>(map['selfLink'] as String),
      snapshotSchedulePolicy: map['snapshotSchedulePolicy'] == null ? null : pulumi.Output.create<ResourcePolicySnapshotSchedulePolicy>(ResourcePolicySnapshotSchedulePolicy.fromMap((map['snapshotSchedulePolicy'] as Map).cast<String, dynamic>())),
      workloadPolicy: map['workloadPolicy'] == null ? null : pulumi.Output.create<ResourcePolicyWorkloadPolicy>(ResourcePolicyWorkloadPolicy.fromMap((map['workloadPolicy'] as Map).cast<String, dynamic>())),
    );
  }
}

