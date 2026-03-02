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
  BackupConfig({
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
      allNamespaces: map['allNamespaces'] == null ? null : (map['allNamespaces'] as bool).input(),
      encryptionKey: map['encryptionKey'] == null ? null : (EncryptionKey.fromMap((map['encryptionKey'] as Map).cast<String, dynamic>())).input(),
      includeSecrets: map['includeSecrets'] == null ? null : (map['includeSecrets'] as bool).input(),
      includeVolumeData: map['includeVolumeData'] == null ? null : (map['includeVolumeData'] as bool).input(),
      selectedApplications: map['selectedApplications'] == null ? null : (NamespacedNames.fromMap((map['selectedApplications'] as Map).cast<String, dynamic>())).input(),
      selectedNamespaces: map['selectedNamespaces'] == null ? null : (Namespaces.fromMap((map['selectedNamespaces'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

