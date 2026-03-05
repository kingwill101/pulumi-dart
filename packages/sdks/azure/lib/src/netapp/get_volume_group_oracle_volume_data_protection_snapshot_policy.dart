// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVolumeGroupOracleVolumeDataProtectionSnapshotPolicy {
  /// Resource ID of the snapshot policy to apply to the volume.
  final pulumi.Input<String> snapshotPolicyId;

  /// Creates a new [GetVolumeGroupOracleVolumeDataProtectionSnapshotPolicy].
  /// [snapshotPolicyId] Resource ID of the snapshot policy to apply to the volume.
  GetVolumeGroupOracleVolumeDataProtectionSnapshotPolicy({
    required this.snapshotPolicyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'snapshotPolicyId': snapshotPolicyId,
    };
  }

  factory GetVolumeGroupOracleVolumeDataProtectionSnapshotPolicy.fromMap(Map<String, dynamic> map) {
    return GetVolumeGroupOracleVolumeDataProtectionSnapshotPolicy(
      snapshotPolicyId: pulumi.Input.fromValue(map['snapshotPolicyId'] as String),
    );
  }
}

