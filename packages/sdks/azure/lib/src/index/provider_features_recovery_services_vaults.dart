// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProviderFeaturesRecoveryServicesVaults {
  final pulumi.Input<bool>? recoverSoftDeletedBackupProtectedVm;

  /// Creates a new [ProviderFeaturesRecoveryServicesVaults].
  /// [recoverSoftDeletedBackupProtectedVm] Optional.
  const ProviderFeaturesRecoveryServicesVaults({
    this.recoverSoftDeletedBackupProtectedVm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recoverSoftDeletedBackupProtectedVm': ?recoverSoftDeletedBackupProtectedVm,
    };
  }

  factory ProviderFeaturesRecoveryServicesVaults.fromMap(Map<String, dynamic> map) {
    return ProviderFeaturesRecoveryServicesVaults(
      recoverSoftDeletedBackupProtectedVm: (() { final guardedValue = map['recoverSoftDeletedBackupProtectedVm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
