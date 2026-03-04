// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_plan_backup_config_encryption_key.dart';
import 'backup_plan_backup_config_selected_applications.dart';
import 'backup_plan_backup_config_selected_namespace_labels.dart';
import 'backup_plan_backup_config_selected_namespaces.dart';

class BackupPlanBackupConfig {
  /// If True, include all namespaced resources.
  final pulumi.Input<bool>? allNamespaces;

  /// This defines a customer managed encryption key that will be used to encrypt the "config"
  /// portion (the Kubernetes resources) of Backups created via this plan.
  /// Structure is documented below.
  final pulumi.Input<BackupPlanBackupConfigEncryptionKey>? encryptionKey;

  /// This flag specifies whether Kubernetes Secret resources should be included
  /// when they fall into the scope of Backups.
  final pulumi.Input<bool>? includeSecrets;

  /// This flag specifies whether volume data should be backed up when PVCs are
  /// included in the scope of a Backup.
  final pulumi.Input<bool>? includeVolumeData;

  /// This flag specifies whether Backups will not fail when
  /// Backup for GKE detects Kubernetes configuration that is
  /// non-standard or requires additional setup to restore.
  final pulumi.Input<bool>? permissiveMode;

  /// A list of namespaced Kubernetes Resources.
  /// Structure is documented below.
  final pulumi.Input<BackupPlanBackupConfigSelectedApplications>?
  selectedApplications;

  /// If set, include just the resources in the listed namespace Labels.
  /// Structure is documented below.
  final pulumi.Input<BackupPlanBackupConfigSelectedNamespaceLabels>?
  selectedNamespaceLabels;

  /// If set, include just the resources in the listed namespaces.
  /// Structure is documented below.
  final pulumi.Input<BackupPlanBackupConfigSelectedNamespaces>?
  selectedNamespaces;

  /// Creates a new [BackupPlanBackupConfig].
  /// [allNamespaces] If True, include all namespaced resources.
  /// [encryptionKey] This defines a customer managed encryption key that will be used to encrypt the "config"
  /// [includeSecrets] This flag specifies whether Kubernetes Secret resources should be included
  /// [includeVolumeData] This flag specifies whether volume data should be backed up when PVCs are
  /// [permissiveMode] This flag specifies whether Backups will not fail when
  /// [selectedApplications] A list of namespaced Kubernetes Resources.
  /// [selectedNamespaceLabels] If set, include just the resources in the listed namespace Labels.
  /// [selectedNamespaces] If set, include just the resources in the listed namespaces.
  BackupPlanBackupConfig({
    this.allNamespaces,
    this.encryptionKey,
    this.includeSecrets,
    this.includeVolumeData,
    this.permissiveMode,
    this.selectedApplications,
    this.selectedNamespaceLabels,
    this.selectedNamespaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allNamespaces': ?allNamespaces,
      'encryptionKey':
          ?pulumi.Input.mapOptionalInputValue<
            BackupPlanBackupConfigEncryptionKey,
            Map<String, dynamic>
          >(encryptionKey, (value) => value.toMap()),
      'includeSecrets': ?includeSecrets,
      'includeVolumeData': ?includeVolumeData,
      'permissiveMode': ?permissiveMode,
      'selectedApplications':
          ?pulumi.Input.mapOptionalInputValue<
            BackupPlanBackupConfigSelectedApplications,
            Map<String, dynamic>
          >(selectedApplications, (value) => value.toMap()),
      'selectedNamespaceLabels':
          ?pulumi.Input.mapOptionalInputValue<
            BackupPlanBackupConfigSelectedNamespaceLabels,
            Map<String, dynamic>
          >(selectedNamespaceLabels, (value) => value.toMap()),
      'selectedNamespaces':
          ?pulumi.Input.mapOptionalInputValue<
            BackupPlanBackupConfigSelectedNamespaces,
            Map<String, dynamic>
          >(selectedNamespaces, (value) => value.toMap()),
    };
  }

  factory BackupPlanBackupConfig.fromMap(Map<String, dynamic> map) {
    return BackupPlanBackupConfig(
      allNamespaces: (() {
        final guardedValue = map['allNamespaces'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      encryptionKey: (() {
        final guardedValue = map['encryptionKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BackupPlanBackupConfigEncryptionKey.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      includeSecrets: (() {
        final guardedValue = map['includeSecrets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      includeVolumeData: (() {
        final guardedValue = map['includeVolumeData'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      permissiveMode: (() {
        final guardedValue = map['permissiveMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      selectedApplications: (() {
        final guardedValue = map['selectedApplications'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BackupPlanBackupConfigSelectedApplications.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      selectedNamespaceLabels: (() {
        final guardedValue = map['selectedNamespaceLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BackupPlanBackupConfigSelectedNamespaceLabels.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      selectedNamespaces: (() {
        final guardedValue = map['selectedNamespaces'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BackupPlanBackupConfigSelectedNamespaces.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
