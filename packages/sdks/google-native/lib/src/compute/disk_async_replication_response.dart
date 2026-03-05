// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DiskAsyncReplicationResponse {
  /// URL of the DiskConsistencyGroupPolicy if replication was started on the disk as a member of a group.
  final pulumi.Input<String> consistencyGroupPolicy;
  /// ID of the DiskConsistencyGroupPolicy if replication was started on the disk as a member of a group.
  final pulumi.Input<String> consistencyGroupPolicyId;
  /// The other disk asynchronously replicated to or from the current disk. You can provide this as a partial or full URL to the resource. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /disks/disk - projects/project/zones/zone/disks/disk - zones/zone/disks/disk
  final pulumi.Input<String> disk;
  /// The unique ID of the other disk asynchronously replicated to or from the current disk. This value identifies the exact disk that was used to create this replication. For example, if you started replicating the persistent disk from a disk that was later deleted and recreated under the same name, the disk ID would identify the exact version of the disk that was used.
  final pulumi.Input<String> diskId;

  /// Creates a new [DiskAsyncReplicationResponse].
  /// [consistencyGroupPolicy] URL of the DiskConsistencyGroupPolicy if replication was started on the disk as a member of a group.
  /// [consistencyGroupPolicyId] ID of the DiskConsistencyGroupPolicy if replication was started on the disk as a member of a group.
  /// [disk] The other disk asynchronously replicated to or from the current disk. You can provide this as a partial or full URL to the resource. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /disks/disk - projects/project/zones/zone/disks/disk - zones/zone/disks/disk
  /// [diskId] The unique ID of the other disk asynchronously replicated to or from the current disk. This value identifies the exact disk that was used to create this replication. For example, if you started replicating the persistent disk from a disk that was later deleted and recreated under the same name, the disk ID would identify the exact version of the disk that was used.
  DiskAsyncReplicationResponse({
    required this.consistencyGroupPolicy,
    required this.consistencyGroupPolicyId,
    required this.disk,
    required this.diskId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consistencyGroupPolicy': consistencyGroupPolicy,
      'consistencyGroupPolicyId': consistencyGroupPolicyId,
      'disk': disk,
      'diskId': diskId,
    };
  }

  factory DiskAsyncReplicationResponse.fromMap(Map<String, dynamic> map) {
    return DiskAsyncReplicationResponse(
      consistencyGroupPolicy: pulumi.Input.fromValue(map['consistencyGroupPolicy'] as String),
      consistencyGroupPolicyId: pulumi.Input.fromValue(map['consistencyGroupPolicyId'] as String),
      disk: pulumi.Input.fromValue(map['disk'] as String),
      diskId: pulumi.Input.fromValue(map['diskId'] as String),
    );
  }
}

