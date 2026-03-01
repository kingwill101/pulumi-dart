// ignore_for_file: unused_element, unnecessary_cast


class FeaturesRecoveryServicesVaults {
  final bool? recoverSoftDeletedBackupProtectedVm;

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
      recoverSoftDeletedBackupProtectedVm: map['recoverSoftDeletedBackupProtectedVm'] == null ? null : map['recoverSoftDeletedBackupProtectedVm'] as bool,
    );
  }
}

