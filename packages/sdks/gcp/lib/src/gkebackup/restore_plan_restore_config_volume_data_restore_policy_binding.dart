// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RestorePlanRestoreConfigVolumeDataRestorePolicyBinding {
  /// Specifies the mechanism to be used to restore this volume data.
  /// See https://cloud.google.com/kubernetes-engine/docs/add-on/backup-for-gke/reference/rest/v1/RestoreConfig#VolumeDataRestorePolicy
  /// for more information on each policy option.
  /// Possible values are: `RESTORE_VOLUME_DATA_FROM_BACKUP`, `REUSE_VOLUME_HANDLE_FROM_BACKUP`, `NO_VOLUME_DATA_RESTORATION`.
  final pulumi.Input<String> policy;
  /// The volume type, as determined by the PVC's
  /// bound PV, to apply the policy to.
  /// Possible values are: `GCE_PERSISTENT_DISK`.
  final pulumi.Input<String> volumeType;

  /// Creates a new [RestorePlanRestoreConfigVolumeDataRestorePolicyBinding].
  /// [policy] Specifies the mechanism to be used to restore this volume data.
  /// [volumeType] The volume type, as determined by the PVC's
  const RestorePlanRestoreConfigVolumeDataRestorePolicyBinding({
    required this.policy,
    required this.volumeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': policy,
      'volumeType': volumeType,
    };
  }

  factory RestorePlanRestoreConfigVolumeDataRestorePolicyBinding.fromMap(Map<String, dynamic> map) {
    return RestorePlanRestoreConfigVolumeDataRestorePolicyBinding(
      policy: pulumi.Input.fromValue(map['policy'] as String),
      volumeType: pulumi.Input.fromValue(map['volumeType'] as String),
    );
  }
}

