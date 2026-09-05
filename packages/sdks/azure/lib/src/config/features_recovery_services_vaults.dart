// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeaturesRecoveryServicesVaults {
  final pulumi.Input<bool?>? recoverSoftDeletedBackupProtectedVm;

  /// Creates a new [FeaturesRecoveryServicesVaults].
  /// [recoverSoftDeletedBackupProtectedVm] Optional.
  const FeaturesRecoveryServicesVaults({
    this.recoverSoftDeletedBackupProtectedVm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recoverSoftDeletedBackupProtectedVm': ?recoverSoftDeletedBackupProtectedVm,
    };
  }

  factory FeaturesRecoveryServicesVaults.fromMap(Map<String, dynamic> map) {
    return FeaturesRecoveryServicesVaults(
      recoverSoftDeletedBackupProtectedVm: (() { final guardedValue = map['recoverSoftDeletedBackupProtectedVm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
