// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VolumeGroupSapHanaVolumeDataProtectionSnapshotPolicy {
  /// Resource ID of the snapshot policy to apply to the volume.
  final pulumi.Input<String> snapshotPolicyId;

  /// Creates a new [VolumeGroupSapHanaVolumeDataProtectionSnapshotPolicy].
  /// [snapshotPolicyId] Resource ID of the snapshot policy to apply to the volume.
  VolumeGroupSapHanaVolumeDataProtectionSnapshotPolicy({
    required this.snapshotPolicyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'snapshotPolicyId': snapshotPolicyId};
  }

  factory VolumeGroupSapHanaVolumeDataProtectionSnapshotPolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return VolumeGroupSapHanaVolumeDataProtectionSnapshotPolicy(
      snapshotPolicyId: pulumi.Input.fromValue(
        map['snapshotPolicyId'] as String,
      ),
    );
  }
}
