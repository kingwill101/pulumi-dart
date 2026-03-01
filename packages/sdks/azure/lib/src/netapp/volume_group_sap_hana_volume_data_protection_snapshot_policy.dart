// ignore_for_file: unused_element, unnecessary_cast


class VolumeGroupSapHanaVolumeDataProtectionSnapshotPolicy {
  /// Resource ID of the snapshot policy to apply to the volume.
  final String snapshotPolicyId;

  /// Creates a new [VolumeGroupSapHanaVolumeDataProtectionSnapshotPolicy].
  /// [snapshotPolicyId] Resource ID of the snapshot policy to apply to the volume.
  VolumeGroupSapHanaVolumeDataProtectionSnapshotPolicy({
    required this.snapshotPolicyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'snapshotPolicyId': snapshotPolicyId,
    };
  }

  factory VolumeGroupSapHanaVolumeDataProtectionSnapshotPolicy.fromMap(Map<String, dynamic> map) {
    return VolumeGroupSapHanaVolumeDataProtectionSnapshotPolicy(
      snapshotPolicyId: map['snapshotPolicyId'] as String,
    );
  }
}

