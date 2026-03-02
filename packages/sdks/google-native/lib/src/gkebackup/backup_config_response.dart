// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_key_response.dart';
import 'namespaced_names_response.dart';
import 'namespaces_response.dart';

/// BackupConfig defines the configuration of Backups created via this BackupPlan.
class BackupConfigResponse {
  /// If True, include all namespaced resources
  final pulumi.Input<bool> allNamespaces;
  /// Optional. This defines a customer managed encryption key that will be used to encrypt the "config" portion (the Kubernetes resources) of Backups created via this plan. Default (empty): Config backup artifacts will not be encrypted.
  final pulumi.Input<EncryptionKeyResponse> encryptionKey;
  /// Optional. This flag specifies whether Kubernetes Secret resources should be included when they fall into the scope of Backups. Default: False
  final pulumi.Input<bool> includeSecrets;
  /// Optional. This flag specifies whether volume data should be backed up when PVCs are included in the scope of a Backup. Default: False
  final pulumi.Input<bool> includeVolumeData;
  /// If set, include just the resources referenced by the listed ProtectedApplications.
  final pulumi.Input<NamespacedNamesResponse> selectedApplications;
  /// If set, include just the resources in the listed namespaces.
  final pulumi.Input<NamespacesResponse> selectedNamespaces;

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
      'encryptionKey': pulumi.Input.mapInputValue<EncryptionKeyResponse, Map<String, dynamic>>(encryptionKey, (value) => value.toMap()),
      'includeSecrets': includeSecrets,
      'includeVolumeData': includeVolumeData,
      'selectedApplications': pulumi.Input.mapInputValue<NamespacedNamesResponse, Map<String, dynamic>>(selectedApplications, (value) => value.toMap()),
      'selectedNamespaces': pulumi.Input.mapInputValue<NamespacesResponse, Map<String, dynamic>>(selectedNamespaces, (value) => value.toMap()),
    };
  }

  factory BackupConfigResponse.fromMap(Map<String, dynamic> map) {
    return BackupConfigResponse(
      allNamespaces: (map['allNamespaces'] as bool).input(),
      encryptionKey: (EncryptionKeyResponse.fromMap((map['encryptionKey'] as Map).cast<String, dynamic>())).input(),
      includeSecrets: (map['includeSecrets'] as bool).input(),
      includeVolumeData: (map['includeVolumeData'] as bool).input(),
      selectedApplications: (NamespacedNamesResponse.fromMap((map['selectedApplications'] as Map).cast<String, dynamic>())).input(),
      selectedNamespaces: (NamespacesResponse.fromMap((map['selectedNamespaces'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

