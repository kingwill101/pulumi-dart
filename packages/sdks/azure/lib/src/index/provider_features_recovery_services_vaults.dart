// ignore_for_file: unused_element, unnecessary_cast


class ProviderFeaturesRecoveryServicesVaults {
  final bool? recoverSoftDeletedBackupProtectedVm;

  /// Creates a new [ProviderFeaturesRecoveryServicesVaults].
  /// [recoverSoftDeletedBackupProtectedVm] Optional.
  ProviderFeaturesRecoveryServicesVaults({
    this.recoverSoftDeletedBackupProtectedVm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recoverSoftDeletedBackupProtectedVm': ?recoverSoftDeletedBackupProtectedVm,
    };
  }

  factory ProviderFeaturesRecoveryServicesVaults.fromMap(Map<String, dynamic> map) {
    return ProviderFeaturesRecoveryServicesVaults(
      recoverSoftDeletedBackupProtectedVm: map['recoverSoftDeletedBackupProtectedVm'] == null ? null : map['recoverSoftDeletedBackupProtectedVm'] as bool,
    );
  }
}

