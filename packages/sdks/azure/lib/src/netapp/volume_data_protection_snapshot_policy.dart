// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VolumeDataProtectionSnapshotPolicy {
  /// Resource ID of the snapshot policy to apply to the volume.
  ///
  /// A full example of the `dataProtectionSnapshotPolicy` attribute usage can be found in the `./examples/netapp/nfsv3_volume_with_snapshot_policy` directory within the GitHub Repository
  ///
  /// &gt; **Note:** `dataProtectionSnapshotPolicy` block can be used alone or with dataProtectionReplication in the primary volume only, if enabling it in the secondary, an error will be thrown.
  final pulumi.Input<String> snapshotPolicyId;

  /// Creates a new [VolumeDataProtectionSnapshotPolicy].
  /// [snapshotPolicyId] Resource ID of the snapshot policy to apply to the volume.
  const VolumeDataProtectionSnapshotPolicy({
    required this.snapshotPolicyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'snapshotPolicyId': snapshotPolicyId,
    };
  }

  factory VolumeDataProtectionSnapshotPolicy.fromMap(Map<String, dynamic> map) {
    return VolumeDataProtectionSnapshotPolicy(
      snapshotPolicyId: pulumi.Input.fromValue(map['snapshotPolicyId'] as String),
    );
  }
}
