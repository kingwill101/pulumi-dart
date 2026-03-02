// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeaturesRecoveryServicesVaults {
  final pulumi.Input<bool>? recoverSoftDeletedBackupProtectedVm;

  /// Creates a new [FeaturesRecoveryServicesVaults].
  /// [recoverSoftDeletedBackupProtectedVm] Optional.
  FeaturesRecoveryServicesVaults({
    this.recoverSoftDeletedBackupProtectedVm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recoverSoftDeletedBackupProtectedVm': ?recoverSoftDeletedBackupProtectedVm,
    };
  }

  factory FeaturesRecoveryServicesVaults.fromMap(Map<String, dynamic> map) {
    return FeaturesRecoveryServicesVaults(
      recoverSoftDeletedBackupProtectedVm: map['recoverSoftDeletedBackupProtectedVm'] == null ? null : (map['recoverSoftDeletedBackupProtectedVm']! as bool).input(),
    );
  }
}

