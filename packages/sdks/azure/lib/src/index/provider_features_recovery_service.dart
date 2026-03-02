// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProviderFeaturesRecoveryService {
  final pulumi.Input<bool>? purgeProtectedItemsFromVaultOnDestroy;
  final pulumi.Input<bool>? vmBackupStopProtectionAndRetainDataOnDestroy;
  final pulumi.Input<bool>? vmBackupSuspendProtectionAndRetainDataOnDestroy;

  /// Creates a new [ProviderFeaturesRecoveryService].
  /// [purgeProtectedItemsFromVaultOnDestroy] Optional.
  /// [vmBackupStopProtectionAndRetainDataOnDestroy] Optional.
  /// [vmBackupSuspendProtectionAndRetainDataOnDestroy] Optional.
  ProviderFeaturesRecoveryService({
    this.purgeProtectedItemsFromVaultOnDestroy,
    this.vmBackupStopProtectionAndRetainDataOnDestroy,
    this.vmBackupSuspendProtectionAndRetainDataOnDestroy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'purgeProtectedItemsFromVaultOnDestroy': ?purgeProtectedItemsFromVaultOnDestroy,
      'vmBackupStopProtectionAndRetainDataOnDestroy': ?vmBackupStopProtectionAndRetainDataOnDestroy,
      'vmBackupSuspendProtectionAndRetainDataOnDestroy': ?vmBackupSuspendProtectionAndRetainDataOnDestroy,
    };
  }

  factory ProviderFeaturesRecoveryService.fromMap(Map<String, dynamic> map) {
    return ProviderFeaturesRecoveryService(
      purgeProtectedItemsFromVaultOnDestroy: map['purgeProtectedItemsFromVaultOnDestroy'] == null ? null : (map['purgeProtectedItemsFromVaultOnDestroy'] as bool).input(),
      vmBackupStopProtectionAndRetainDataOnDestroy: map['vmBackupStopProtectionAndRetainDataOnDestroy'] == null ? null : (map['vmBackupStopProtectionAndRetainDataOnDestroy'] as bool).input(),
      vmBackupSuspendProtectionAndRetainDataOnDestroy: map['vmBackupSuspendProtectionAndRetainDataOnDestroy'] == null ? null : (map['vmBackupSuspendProtectionAndRetainDataOnDestroy'] as bool).input(),
    );
  }
}

