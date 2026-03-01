// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_key_response.dart';
import 'namespaced_names_response.dart';
import 'namespaces_response.dart';

/// BackupConfig defines the configuration of Backups created via this BackupPlan.
class BackupConfigResponse {
  /// If True, include all namespaced resources
  final bool allNamespaces;
  /// Optional. This defines a customer managed encryption key that will be used to encrypt the "config" portion (the Kubernetes resources) of Backups created via this plan. Default (empty): Config backup artifacts will not be encrypted.
  final EncryptionKeyResponse encryptionKey;
  /// Optional. This flag specifies whether Kubernetes Secret resources should be included when they fall into the scope of Backups. Default: False
  final bool includeSecrets;
  /// Optional. This flag specifies whether volume data should be backed up when PVCs are included in the scope of a Backup. Default: False
  final bool includeVolumeData;
  /// If set, include just the resources referenced by the listed ProtectedApplications.
  final NamespacedNamesResponse selectedApplications;
  /// If set, include just the resources in the listed namespaces.
  final NamespacesResponse selectedNamespaces;

  /// Creates a new [BackupConfigResponse].
  /// [allNamespaces] If True, include all namespaced resources
  /// [encryptionKey] Optional. This defines a customer managed encryption key that will be used to encrypt the "config" portion (the Kubernetes resources) of Backups created via this plan. Default (empty): Config backup artifacts will not be encrypted.
  /// [includeSecrets] Optional. This flag specifies whether Kubernetes Secret resources should be included when they fall into the scope of Backups. Default: False
  /// [includeVolumeData] Optional. This flag specifies whether volume data should be backed up when PVCs are included in the scope of a Backup. Default: False
  /// [selectedApplications] If set, include just the resources referenced by the listed ProtectedApplications.
  /// [selectedNamespaces] If set, include just the resources in the listed namespaces.
  BackupConfigResponse({
    required this.allNamespaces,
    required this.encryptionKey,
    required this.includeSecrets,
    required this.includeVolumeData,
    required this.selectedApplications,
    required this.selectedNamespaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allNamespaces': allNamespaces,
      'encryptionKey': encryptionKey.toMap(),
      'includeSecrets': includeSecrets,
      'includeVolumeData': includeVolumeData,
      'selectedApplications': selectedApplications.toMap(),
      'selectedNamespaces': selectedNamespaces.toMap(),
    };
  }

  factory BackupConfigResponse.fromMap(Map<String, dynamic> map) {
    return BackupConfigResponse(
      allNamespaces: map['allNamespaces'] as bool,
      encryptionKey: EncryptionKeyResponse.fromMap((map['encryptionKey'] as Map).cast<String, dynamic>()),
      includeSecrets: map['includeSecrets'] as bool,
      includeVolumeData: map['includeVolumeData'] as bool,
      selectedApplications: NamespacedNamesResponse.fromMap((map['selectedApplications'] as Map).cast<String, dynamic>()),
      selectedNamespaces: NamespacesResponse.fromMap((map['selectedNamespaces'] as Map).cast<String, dynamic>()),
    );
  }
}

