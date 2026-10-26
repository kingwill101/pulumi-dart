// ignore_for_file: unused_element, unnecessary_cast

import 'resource_policy_group_placement_policy_response_compute_beta.dart';
import 'resource_policy_instance_schedule_policy_response_compute_beta.dart';
import 'resource_policy_resource_status_response_compute_beta.dart';
import 'resource_policy_snapshot_schedule_policy_response_compute_beta.dart';

/// Result data returned by getResourcePolicy.
class GetResourcePolicyComputeBetaResult {
  /// Creation timestamp in RFC3339 text format.
  final String? creationTimestamp;
  final String? description;
  /// Resource policy for disk consistency groups.
  final Map<String, dynamic>? diskConsistencyGroupPolicy;
  /// Resource policy for instances for placement configuration.
  final ResourcePolicyGroupPlacementPolicyResponseComputeBeta? groupPlacementPolicy;
  /// Resource policy for scheduling instance operations.
  final ResourcePolicyInstanceSchedulePolicyResponseComputeBeta? instanceSchedulePolicy;
  /// Type of the resource. Always compute#resource_policies for resource policies.
  final String? kind;
  /// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String? name;
  final String? region;
  /// The system status of the resource policy.
  final ResourcePolicyResourceStatusResponseComputeBeta? resourceStatus;
  /// Server-defined fully-qualified URL for this resource.
  final String? selfLink;
  /// Resource policy for persistent disks for creating snapshots.
  final ResourcePolicySnapshotSchedulePolicyResponseComputeBeta? snapshotSchedulePolicy;
  /// The status of resource policy creation.
  final String? status;

  /// Creates a new [GetResourcePolicyComputeBetaResult].
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] Optional.
  /// [diskConsistencyGroupPolicy] Resource policy for disk consistency groups.
  /// [groupPlacementPolicy] Resource policy for instances for placement configuration.
  /// [instanceSchedulePolicy] Resource policy for scheduling instance operations.
  /// [kind] Type of the resource. Always compute#resource_policies for resource policies.
  /// [name] The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [region] Optional.
  /// [resourceStatus] The system status of the resource policy.
  /// [selfLink] Server-defined fully-qualified URL for this resource.
  /// [snapshotSchedulePolicy] Resource policy for persistent disks for creating snapshots.
  /// [status] The status of resource policy creation.
  const GetResourcePolicyComputeBetaResult({
    this.creationTimestamp,
    this.description,
    this.diskConsistencyGroupPolicy,
    this.groupPlacementPolicy,
    this.instanceSchedulePolicy,
    this.kind,
    this.name,
    this.region,
    this.resourceStatus,
    this.selfLink,
    this.snapshotSchedulePolicy,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'diskConsistencyGroupPolicy': ?diskConsistencyGroupPolicy,
      'groupPlacementPolicy': ?groupPlacementPolicy?.toMap(),
      'instanceSchedulePolicy': ?instanceSchedulePolicy?.toMap(),
      'kind': ?kind,
      'name': ?name,
      'region': ?region,
      'resourceStatus': ?resourceStatus?.toMap(),
      'selfLink': ?selfLink,
      'snapshotSchedulePolicy': ?snapshotSchedulePolicy?.toMap(),
      'status': ?status,
    };
  }

  factory GetResourcePolicyComputeBetaResult.fromMap(Map<String, dynamic> map) {
    return GetResourcePolicyComputeBetaResult(
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      diskConsistencyGroupPolicy: (() { final guardedValue = map['diskConsistencyGroupPolicy']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, dynamic>(); })(),
      groupPlacementPolicy: (() { final guardedValue = map['groupPlacementPolicy']; if (guardedValue == null) return null; return ResourcePolicyGroupPlacementPolicyResponseComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      instanceSchedulePolicy: (() { final guardedValue = map['instanceSchedulePolicy']; if (guardedValue == null) return null; return ResourcePolicyInstanceSchedulePolicyResponseComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceStatus: (() { final guardedValue = map['resourceStatus']; if (guardedValue == null) return null; return ResourcePolicyResourceStatusResponseComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      snapshotSchedulePolicy: (() { final guardedValue = map['snapshotSchedulePolicy']; if (guardedValue == null) return null; return ResourcePolicySnapshotSchedulePolicyResponseComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
