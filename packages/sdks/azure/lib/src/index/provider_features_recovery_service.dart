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
      'purgeProtectedItemsFromVaultOnDestroy':
          ?purgeProtectedItemsFromVaultOnDestroy,
      'vmBackupStopProtectionAndRetainDataOnDestroy':
          ?vmBackupStopProtectionAndRetainDataOnDestroy,
      'vmBackupSuspendProtectionAndRetainDataOnDestroy':
          ?vmBackupSuspendProtectionAndRetainDataOnDestroy,
    };
  }

  factory ProviderFeaturesRecoveryService.fromMap(Map<String, dynamic> map) {
    return ProviderFeaturesRecoveryService(
      purgeProtectedItemsFromVaultOnDestroy: (() {
        final guardedValue = map['purgeProtectedItemsFromVaultOnDestroy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      vmBackupStopProtectionAndRetainDataOnDestroy: (() {
        final guardedValue =
            map['vmBackupStopProtectionAndRetainDataOnDestroy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      vmBackupSuspendProtectionAndRetainDataOnDestroy: (() {
        final guardedValue =
            map['vmBackupSuspendProtectionAndRetainDataOnDestroy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
