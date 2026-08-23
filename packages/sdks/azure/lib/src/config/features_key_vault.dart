// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeaturesKeyVault {
  /// When enabled soft-deleted `azure.keyvault.KeyVault` resources will be permanently deleted (e.g purged), when destroyed
  final pulumi.Input<bool>? purgeSoftDeleteOnDestroy;
  /// When enabled soft-deleted `azure.keyvault.Certificate` resources will be permanently deleted (e.g purged), when destroyed
  final pulumi.Input<bool>? purgeSoftDeletedCertificatesOnDestroy;
  /// When enabled soft-deleted `azure.keyvault.ManagedHardwareSecurityModuleKey` resources will be permanently deleted (e.g purged), when destroyed
  final pulumi.Input<bool>? purgeSoftDeletedHardwareSecurityModuleKeysOnDestroy;
  /// When enabled soft-deleted `azure.keyvault.ManagedHardwareSecurityModule` resources will be permanently deleted (e.g purged), when destroyed
  final pulumi.Input<bool>? purgeSoftDeletedHardwareSecurityModulesOnDestroy;
  /// When enabled soft-deleted `azure.keyvault.Key` resources will be permanently deleted (e.g purged), when destroyed
  final pulumi.Input<bool>? purgeSoftDeletedKeysOnDestroy;
  /// When enabled soft-deleted `azure.keyvault.Secret` resources will be permanently deleted (e.g purged), when destroyed
  final pulumi.Input<bool>? purgeSoftDeletedSecretsOnDestroy;
  /// When enabled soft-deleted `azure.keyvault.Certificate` resources will be restored, instead of creating new ones
  final pulumi.Input<bool>? recoverSoftDeletedCertificates;
  /// When enabled soft-deleted `azure.keyvault.ManagedHardwareSecurityModuleKey` resources will be restored, instead of creating new ones
  final pulumi.Input<bool>? recoverSoftDeletedHardwareSecurityModuleKeys;
  /// When enabled soft-deleted `azure.keyvault.KeyVault` resources will be restored, instead of creating new ones
  final pulumi.Input<bool>? recoverSoftDeletedKeyVaults;
  /// When enabled soft-deleted `azure.keyvault.Key` resources will be restored, instead of creating new ones
  final pulumi.Input<bool>? recoverSoftDeletedKeys;
  /// When enabled soft-deleted `azure.keyvault.Secret` resources will be restored, instead of creating new ones
  final pulumi.Input<bool>? recoverSoftDeletedSecrets;

  /// Creates a new [FeaturesKeyVault].
  /// [purgeSoftDeleteOnDestroy] When enabled soft-deleted `azure.keyvault.KeyVault` resources will be permanently deleted (e.g purged), when destroyed
  /// [purgeSoftDeletedCertificatesOnDestroy] When enabled soft-deleted `azure.keyvault.Certificate` resources will be permanently deleted (e.g purged), when destroyed
  /// [purgeSoftDeletedHardwareSecurityModuleKeysOnDestroy] When enabled soft-deleted `azure.keyvault.ManagedHardwareSecurityModuleKey` resources will be permanently deleted (e.g purged), when destroyed
  /// [purgeSoftDeletedHardwareSecurityModulesOnDestroy] When enabled soft-deleted `azure.keyvault.ManagedHardwareSecurityModule` resources will be permanently deleted (e.g purged), when destroyed
  /// [purgeSoftDeletedKeysOnDestroy] When enabled soft-deleted `azure.keyvault.Key` resources will be permanently deleted (e.g purged), when destroyed
  /// [purgeSoftDeletedSecretsOnDestroy] When enabled soft-deleted `azure.keyvault.Secret` resources will be permanently deleted (e.g purged), when destroyed
  /// [recoverSoftDeletedCertificates] When enabled soft-deleted `azure.keyvault.Certificate` resources will be restored, instead of creating new ones
  /// [recoverSoftDeletedHardwareSecurityModuleKeys] When enabled soft-deleted `azure.keyvault.ManagedHardwareSecurityModuleKey` resources will be restored, instead of creating new ones
  /// [recoverSoftDeletedKeyVaults] When enabled soft-deleted `azure.keyvault.KeyVault` resources will be restored, instead of creating new ones
  /// [recoverSoftDeletedKeys] When enabled soft-deleted `azure.keyvault.Key` resources will be restored, instead of creating new ones
  /// [recoverSoftDeletedSecrets] When enabled soft-deleted `azure.keyvault.Secret` resources will be restored, instead of creating new ones
  const FeaturesKeyVault({
    this.purgeSoftDeleteOnDestroy,
    this.purgeSoftDeletedCertificatesOnDestroy,
    this.purgeSoftDeletedHardwareSecurityModuleKeysOnDestroy,
    this.purgeSoftDeletedHardwareSecurityModulesOnDestroy,
    this.purgeSoftDeletedKeysOnDestroy,
    this.purgeSoftDeletedSecretsOnDestroy,
    this.recoverSoftDeletedCertificates,
    this.recoverSoftDeletedHardwareSecurityModuleKeys,
    this.recoverSoftDeletedKeyVaults,
    this.recoverSoftDeletedKeys,
    this.recoverSoftDeletedSecrets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'purgeSoftDeleteOnDestroy': ?purgeSoftDeleteOnDestroy,
      'purgeSoftDeletedCertificatesOnDestroy': ?purgeSoftDeletedCertificatesOnDestroy,
      'purgeSoftDeletedHardwareSecurityModuleKeysOnDestroy': ?purgeSoftDeletedHardwareSecurityModuleKeysOnDestroy,
      'purgeSoftDeletedHardwareSecurityModulesOnDestroy': ?purgeSoftDeletedHardwareSecurityModulesOnDestroy,
      'purgeSoftDeletedKeysOnDestroy': ?purgeSoftDeletedKeysOnDestroy,
      'purgeSoftDeletedSecretsOnDestroy': ?purgeSoftDeletedSecretsOnDestroy,
      'recoverSoftDeletedCertificates': ?recoverSoftDeletedCertificates,
      'recoverSoftDeletedHardwareSecurityModuleKeys': ?recoverSoftDeletedHardwareSecurityModuleKeys,
      'recoverSoftDeletedKeyVaults': ?recoverSoftDeletedKeyVaults,
      'recoverSoftDeletedKeys': ?recoverSoftDeletedKeys,
      'recoverSoftDeletedSecrets': ?recoverSoftDeletedSecrets,
    };
  }

  factory FeaturesKeyVault.fromMap(Map<String, dynamic> map) {
    return FeaturesKeyVault(
      purgeSoftDeleteOnDestroy: (() { final guardedValue = map['purgeSoftDeleteOnDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      purgeSoftDeletedCertificatesOnDestroy: (() { final guardedValue = map['purgeSoftDeletedCertificatesOnDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      purgeSoftDeletedHardwareSecurityModuleKeysOnDestroy: (() { final guardedValue = map['purgeSoftDeletedHardwareSecurityModuleKeysOnDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      purgeSoftDeletedHardwareSecurityModulesOnDestroy: (() { final guardedValue = map['purgeSoftDeletedHardwareSecurityModulesOnDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      purgeSoftDeletedKeysOnDestroy: (() { final guardedValue = map['purgeSoftDeletedKeysOnDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      purgeSoftDeletedSecretsOnDestroy: (() { final guardedValue = map['purgeSoftDeletedSecretsOnDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      recoverSoftDeletedCertificates: (() { final guardedValue = map['recoverSoftDeletedCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      recoverSoftDeletedHardwareSecurityModuleKeys: (() { final guardedValue = map['recoverSoftDeletedHardwareSecurityModuleKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      recoverSoftDeletedKeyVaults: (() { final guardedValue = map['recoverSoftDeletedKeyVaults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      recoverSoftDeletedKeys: (() { final guardedValue = map['recoverSoftDeletedKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      recoverSoftDeletedSecrets: (() { final guardedValue = map['recoverSoftDeletedSecrets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
