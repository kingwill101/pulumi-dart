// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VolumeGroupOracleVolumeDataProtectionSnapshotPolicy {
  /// Resource ID of the snapshot policy to apply to the volume.
  final pulumi.Input<String> snapshotPolicyId;

  /// Creates a new [VolumeGroupOracleVolumeDataProtectionSnapshotPolicy].
  /// [snapshotPolicyId] Resource ID of the snapshot policy to apply to the volume.
  VolumeGroupOracleVolumeDataProtectionSnapshotPolicy({
    required this.snapshotPolicyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'snapshotPolicyId': snapshotPolicyId};
  }

  factory VolumeGroupOracleVolumeDataProtectionSnapshotPolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return VolumeGroupOracleVolumeDataProtectionSnapshotPolicy(
      snapshotPolicyId: pulumi.Input.fromValue(
        map['snapshotPolicyId'] as String,
      ),
    );
  }
}
