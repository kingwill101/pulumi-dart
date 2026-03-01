// ignore_for_file: unused_element, unnecessary_cast

import 'resource_policy_group_placement_policy_response.dart';
import 'resource_policy_instance_schedule_policy_response.dart';
import 'resource_policy_resource_status_response.dart';
import 'resource_policy_snapshot_schedule_policy_response.dart';
import 'resource_policy_vm_maintenance_policy_response.dart';

/// Result data returned by getResourcePolicy.
class GetResourcePolicyResult {
  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;
  final String description;
  /// Resource policy for disk consistency groups.
  final Map<String, dynamic> diskConsistencyGroupPolicy;
  /// Resource policy for instances for placement configuration.
  final ResourcePolicyGroupPlacementPolicyResponse groupPlacementPolicy;
  /// Resource policy for scheduling instance operations.
  final ResourcePolicyInstanceSchedulePolicyResponse instanceSchedulePolicy;
  /// Type of the resource. Always compute#resource_policies for resource policies.
  final String kind;
  /// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String name;
  final String region;
  /// The system status of the resource policy.
  final ResourcePolicyResourceStatusResponse resourceStatus;
  /// Server-defined fully-qualified URL for this resource.
  final String selfLink;
  /// Server-defined URL for this resource with the resource id.
  final String selfLinkWithId;
  /// Resource policy for persistent disks for creating snapshots.
  final ResourcePolicySnapshotSchedulePolicyResponse snapshotSchedulePolicy;
  /// The status of resource policy creation.
  final String status;
  /// Resource policy applicable to VMs for infrastructure maintenance.
  final ResourcePolicyVmMaintenancePolicyResponse vmMaintenancePolicy;

  /// Creates a new [GetResourcePolicyResult].
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] Required.
  /// [diskConsistencyGroupPolicy] Resource policy for disk consistency groups.
  /// [groupPlacementPolicy] Resource policy for instances for placement configuration.
  /// [instanceSchedulePolicy] Resource policy for scheduling instance operations.
  /// [kind] Type of the resource. Always compute#resource_policies for resource policies.
  /// [name] The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [region] Required.
  /// [resourceStatus] The system status of the resource policy.
  /// [selfLink] Server-defined fully-qualified URL for this resource.
  /// [selfLinkWithId] Server-defined URL for this resource with the resource id.
  /// [snapshotSchedulePolicy] Resource policy for persistent disks for creating snapshots.
  /// [status] The status of resource policy creation.
  /// [vmMaintenancePolicy] Resource policy applicable to VMs for infrastructure maintenance.
  GetResourcePolicyResult({
    required this.creationTimestamp,
    required this.description,
    required this.diskConsistencyGroupPolicy,
    required this.groupPlacementPolicy,
    required this.instanceSchedulePolicy,
    required this.kind,
    required this.name,
    required this.region,
    required this.resourceStatus,
    required this.selfLink,
    required this.selfLinkWithId,
    required this.snapshotSchedulePolicy,
    required this.status,
    required this.vmMaintenancePolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTimestamp': creationTimestamp,
      'description': description,
      'diskConsistencyGroupPolicy': diskConsistencyGroupPolicy,
      'groupPlacementPolicy': groupPlacementPolicy.toMap(),
      'instanceSchedulePolicy': instanceSchedulePolicy.toMap(),
      'kind': kind,
      'name': name,
      'region': region,
      'resourceStatus': resourceStatus.toMap(),
      'selfLink': selfLink,
      'selfLinkWithId': selfLinkWithId,
      'snapshotSchedulePolicy': snapshotSchedulePolicy.toMap(),
      'status': status,
      'vmMaintenancePolicy': vmMaintenancePolicy.toMap(),
    };
  }

  factory GetResourcePolicyResult.fromMap(Map<String, dynamic> map) {
    return GetResourcePolicyResult(
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      diskConsistencyGroupPolicy: (map['diskConsistencyGroupPolicy'] as Map).cast<String, dynamic>(),
      groupPlacementPolicy: ResourcePolicyGroupPlacementPolicyResponse.fromMap((map['groupPlacementPolicy'] as Map).cast<String, dynamic>()),
      instanceSchedulePolicy: ResourcePolicyInstanceSchedulePolicyResponse.fromMap((map['instanceSchedulePolicy'] as Map).cast<String, dynamic>()),
      kind: map['kind'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      resourceStatus: ResourcePolicyResourceStatusResponse.fromMap((map['resourceStatus'] as Map).cast<String, dynamic>()),
      selfLink: map['selfLink'] as String,
      selfLinkWithId: map['selfLinkWithId'] as String,
      snapshotSchedulePolicy: ResourcePolicySnapshotSchedulePolicyResponse.fromMap((map['snapshotSchedulePolicy'] as Map).cast<String, dynamic>()),
      status: map['status'] as String,
      vmMaintenancePolicy: ResourcePolicyVmMaintenancePolicyResponse.fromMap((map['vmMaintenancePolicy'] as Map).cast<String, dynamic>()),
    );
  }
}

