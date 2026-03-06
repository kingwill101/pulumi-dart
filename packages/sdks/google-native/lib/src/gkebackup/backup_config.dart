// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_key.dart';
import 'namespaced_names.dart';
import 'namespaces.dart';

/// BackupConfig defines the configuration of Backups created via this BackupPlan.
class BackupConfig {
  /// If True, include all namespaced resources
  final pulumi.Input<bool>? allNamespaces;
  /// Optional. This defines a customer managed encryption key that will be used to encrypt the "config" portion (the Kubernetes resources) of Backups created via this plan. Default (empty): Config backup artifacts will not be encrypted.
  final pulumi.Input<EncryptionKey>? encryptionKey;
  /// Optional. This flag specifies whether Kubernetes Secret resources should be included when they fall into the scope of Backups. Default: False
  final pulumi.Input<bool>? includeSecrets;
  /// Optional. This flag specifies whether volume data should be backed up when PVCs are included in the scope of a Backup. Default: False
  final pulumi.Input<bool>? includeVolumeData;
  /// If set, include just the resources referenced by the listed ProtectedApplications.
  final pulumi.Input<NamespacedNames>? selectedApplications;
  /// If set, include just the resources in the listed namespaces.
  final pulumi.Input<Namespaces>? selectedNamespaces;

  /// Creates a new [BackupConfig].
  /// [allNamespaces] If True, include all namespaced resources
  /// [encryptionKey] Optional. This defines a customer managed encryption key that will be used to encrypt the "config" portion (the Kubernetes resources) of Backups created via this plan. Default (empty): Config backup artifacts will not be encrypted.
  /// [includeSecrets] Optional. This flag specifies whether Kubernetes Secret resources should be included when they fall into the scope of Backups. Default: False
  /// [includeVolumeData] Optional. This flag specifies whether volume data should be backed up when PVCs are included in the scope of a Backup. Default: False
  /// [selectedApplications] If set, include just the resources referenced by the listed ProtectedApplications.
  /// [selectedNamespaces] If set, include just the resources in the listed namespaces.
  const BackupConfig({
    this.allNamespaces,
    this.encryptionKey,
    this.includeSecrets,
    this.includeVolumeData,
    this.selectedApplications,
    this.selectedNamespaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allNamespaces': ?allNamespaces,
      'encryptionKey': ?pulumi.Input.mapOptionalInputValue<EncryptionKey, Map<String, dynamic>>(encryptionKey, (value) => value.toMap()),
      'includeSecrets': ?includeSecrets,
      'includeVolumeData': ?includeVolumeData,
      'selectedApplications': ?pulumi.Input.mapOptionalInputValue<NamespacedNames, Map<String, dynamic>>(selectedApplications, (value) => value.toMap()),
      'selectedNamespaces': ?pulumi.Input.mapOptionalInputValue<Namespaces, Map<String, dynamic>>(selectedNamespaces, (value) => value.toMap()),
    };
  }

  factory BackupConfig.fromMap(Map<String, dynamic> map) {
    return BackupConfig(
      allNamespaces: (() { final guardedValue = map['allNamespaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      encryptionKey: (() { final guardedValue = map['encryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      includeSecrets: (() { final guardedValue = map['includeSecrets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      includeVolumeData: (() { final guardedValue = map['includeVolumeData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      selectedApplications: (() { final guardedValue = map['selectedApplications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NamespacedNames.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      selectedNamespaces: (() { final guardedValue = map['selectedNamespaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Namespaces.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

