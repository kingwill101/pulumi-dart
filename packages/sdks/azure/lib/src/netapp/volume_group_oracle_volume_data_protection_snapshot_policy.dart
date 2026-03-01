// ignore_for_file: unused_element, unnecessary_cast


class VolumeGroupOracleVolumeDataProtectionSnapshotPolicy {
  /// Resource ID of the snapshot policy to apply to the volume.
  final String snapshotPolicyId;

  /// Creates a new [VolumeGroupOracleVolumeDataProtectionSnapshotPolicy].
  /// [snapshotPolicyId] Resource ID of the snapshot policy to apply to the volume.
  VolumeGroupOracleVolumeDataProtectionSnapshotPolicy({
    required this.snapshotPolicyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'snapshotPolicyId': snapshotPolicyId,
    };
  }

  factory VolumeGroupOracleVolumeDataProtectionSnapshotPolicy.fromMap(Map<String, dynamic> map) {
    return VolumeGroupOracleVolumeDataProtectionSnapshotPolicy(
      snapshotPolicyId: map['snapshotPolicyId'] as String,
    );
  }
}

