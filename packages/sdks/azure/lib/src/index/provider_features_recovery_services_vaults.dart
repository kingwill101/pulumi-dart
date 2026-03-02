// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProviderFeaturesRecoveryServicesVaults {
  final pulumi.Input<bool>? recoverSoftDeletedBackupProtectedVm;

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
      recoverSoftDeletedBackupProtectedVm: map['recoverSoftDeletedBackupProtectedVm'] == null ? null : (map['recoverSoftDeletedBackupProtectedVm']! as bool).input(),
    );
  }
}

