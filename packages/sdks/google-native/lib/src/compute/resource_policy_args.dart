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
  final pulumi.Input<ResourcePolicyInstanceSchedulePolicy>?
  instanceSchedulePolicy;

  /// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Resource policy for persistent disks for creating snapshots.
  final pulumi.Input<ResourcePolicySnapshotSchedulePolicy>?
  snapshotSchedulePolicy;

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
    this.description,
    this.diskConsistencyGroupPolicy,
    this.groupPlacementPolicy,
    this.instanceSchedulePolicy,
    this.name,
    this.project,
    required this.region,
    this.requestId,
    this.snapshotSchedulePolicy,
    this.vmMaintenancePolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'diskConsistencyGroupPolicy': ?diskConsistencyGroupPolicy,
      'groupPlacementPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            ResourcePolicyGroupPlacementPolicy,
            Map<String, dynamic>
          >(groupPlacementPolicy, (value) => value.toMap()),
      'instanceSchedulePolicy':
          ?pulumi.Input.mapOptionalInputValue<
            ResourcePolicyInstanceSchedulePolicy,
            Map<String, dynamic>
          >(instanceSchedulePolicy, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'region': region,
      'requestId': ?requestId,
      'snapshotSchedulePolicy':
          ?pulumi.Input.mapOptionalInputValue<
            ResourcePolicySnapshotSchedulePolicy,
            Map<String, dynamic>
          >(snapshotSchedulePolicy, (value) => value.toMap()),
      'vmMaintenancePolicy':
          ?pulumi.Input.mapOptionalInputValue<
            ResourcePolicyVmMaintenancePolicy,
            Map<String, dynamic>
          >(vmMaintenancePolicy, (value) => value.toMap()),
    };
  }

  factory ResourcePolicyArgs.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyArgs(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      diskConsistencyGroupPolicy: (() {
        final guardedValue = map['diskConsistencyGroupPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      groupPlacementPolicy: (() {
        final guardedValue = map['groupPlacementPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourcePolicyGroupPlacementPolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      instanceSchedulePolicy: (() {
        final guardedValue = map['instanceSchedulePolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourcePolicyInstanceSchedulePolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: pulumi.Input.fromValue(map['region'] as String),
      requestId: (() {
        final guardedValue = map['requestId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      snapshotSchedulePolicy: (() {
        final guardedValue = map['snapshotSchedulePolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourcePolicySnapshotSchedulePolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      vmMaintenancePolicy: (() {
        final guardedValue = map['vmMaintenancePolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourcePolicyVmMaintenancePolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
