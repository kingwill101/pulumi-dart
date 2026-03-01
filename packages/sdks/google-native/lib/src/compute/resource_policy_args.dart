// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_group_placement_policy.dart';
import 'resource_policy_instance_schedule_policy.dart';
import 'resource_policy_snapshot_schedule_policy.dart';
import 'resource_policy_vm_maintenance_policy.dart';

/// {@template pulumi_compute_alpha_resource_policy_args_doc}
/// The set of arguments for ResourcePolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_resource_policy_args_doc}
class ResourcePolicyArgs {
  final pulumi.Input<String>? description;
  /// Resource policy for disk consistency groups.
  final pulumi.Input<Map<String, dynamic>>? diskConsistencyGroupPolicy;
  /// Resource policy for instances for placement configuration.
  final pulumi.Input<ResourcePolicyGroupPlacementPolicy>? groupPlacementPolicy;
  /// Resource policy for scheduling instance operations.
  final pulumi.Input<ResourcePolicyInstanceSchedulePolicy>? instanceSchedulePolicy;
  /// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Resource policy for persistent disks for creating snapshots.
  final pulumi.Input<ResourcePolicySnapshotSchedulePolicy>? snapshotSchedulePolicy;
  /// Resource policy applicable to VMs for infrastructure maintenance.
  final pulumi.Input<ResourcePolicyVmMaintenancePolicy>? vmMaintenancePolicy;

  /// Creates a new [ResourcePolicyArgs].
  /// [description] Optional.
  /// [diskConsistencyGroupPolicy] Resource policy for disk consistency groups.
  /// [groupPlacementPolicy] Resource policy for instances for placement configuration.
  /// [instanceSchedulePolicy] Resource policy for scheduling instance operations.
  /// [name] The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [project] Optional.
  /// [region] Required.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [snapshotSchedulePolicy] Resource policy for persistent disks for creating snapshots.
  /// [vmMaintenancePolicy] Resource policy applicable to VMs for infrastructure maintenance.
  ResourcePolicyArgs({
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, dynamic>>? diskConsistencyGroupPolicy,
    pulumi.Output<ResourcePolicyGroupPlacementPolicy>? groupPlacementPolicy,
    pulumi.Output<ResourcePolicyInstanceSchedulePolicy>? instanceSchedulePolicy,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    required pulumi.Output<String> region,
    pulumi.Output<String>? requestId,
    pulumi.Output<ResourcePolicySnapshotSchedulePolicy>? snapshotSchedulePolicy,
    pulumi.Output<ResourcePolicyVmMaintenancePolicy>? vmMaintenancePolicy,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      diskConsistencyGroupPolicy = pulumi.Input.asOptionalInput<Map<String, dynamic>>(diskConsistencyGroupPolicy),
      groupPlacementPolicy = pulumi.Input.asOptionalInput<ResourcePolicyGroupPlacementPolicy>(groupPlacementPolicy),
      instanceSchedulePolicy = pulumi.Input.asOptionalInput<ResourcePolicyInstanceSchedulePolicy>(instanceSchedulePolicy),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      snapshotSchedulePolicy = pulumi.Input.asOptionalInput<ResourcePolicySnapshotSchedulePolicy>(snapshotSchedulePolicy),
      vmMaintenancePolicy = pulumi.Input.asOptionalInput<ResourcePolicyVmMaintenancePolicy>(vmMaintenancePolicy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'diskConsistencyGroupPolicy': ?diskConsistencyGroupPolicy,
      'groupPlacementPolicy': ?pulumi.Input.mapOptionalInputValue<ResourcePolicyGroupPlacementPolicy, Map<String, dynamic>>(groupPlacementPolicy, (value) => value.toMap()),
      'instanceSchedulePolicy': ?pulumi.Input.mapOptionalInputValue<ResourcePolicyInstanceSchedulePolicy, Map<String, dynamic>>(instanceSchedulePolicy, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'region': region,
      'requestId': ?requestId,
      'snapshotSchedulePolicy': ?pulumi.Input.mapOptionalInputValue<ResourcePolicySnapshotSchedulePolicy, Map<String, dynamic>>(snapshotSchedulePolicy, (value) => value.toMap()),
      'vmMaintenancePolicy': ?pulumi.Input.mapOptionalInputValue<ResourcePolicyVmMaintenancePolicy, Map<String, dynamic>>(vmMaintenancePolicy, (value) => value.toMap()),
    };
  }

  factory ResourcePolicyArgs.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      diskConsistencyGroupPolicy: map['diskConsistencyGroupPolicy'] == null ? null : pulumi.Output.create<Map<String, dynamic>>((map['diskConsistencyGroupPolicy'] as Map).cast<String, dynamic>()),
      groupPlacementPolicy: map['groupPlacementPolicy'] == null ? null : pulumi.Output.create<ResourcePolicyGroupPlacementPolicy>(ResourcePolicyGroupPlacementPolicy.fromMap((map['groupPlacementPolicy'] as Map).cast<String, dynamic>())),
      instanceSchedulePolicy: map['instanceSchedulePolicy'] == null ? null : pulumi.Output.create<ResourcePolicyInstanceSchedulePolicy>(ResourcePolicyInstanceSchedulePolicy.fromMap((map['instanceSchedulePolicy'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
      snapshotSchedulePolicy: map['snapshotSchedulePolicy'] == null ? null : pulumi.Output.create<ResourcePolicySnapshotSchedulePolicy>(ResourcePolicySnapshotSchedulePolicy.fromMap((map['snapshotSchedulePolicy'] as Map).cast<String, dynamic>())),
      vmMaintenancePolicy: map['vmMaintenancePolicy'] == null ? null : pulumi.Output.create<ResourcePolicyVmMaintenancePolicy>(ResourcePolicyVmMaintenancePolicy.fromMap((map['vmMaintenancePolicy'] as Map).cast<String, dynamic>())),
    );
  }
}

