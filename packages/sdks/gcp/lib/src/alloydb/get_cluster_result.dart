// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_automated_backup_policy.dart';
import 'get_cluster_backup_source.dart';
import 'get_cluster_backupdr_backup_source.dart';
import 'get_cluster_continuous_backup_config.dart';
import 'get_cluster_continuous_backup_info.dart';
import 'get_cluster_dataplex_config.dart';
import 'get_cluster_encryption_config.dart';
import 'get_cluster_encryption_info.dart';
import 'get_cluster_initial_user.dart';
import 'get_cluster_maintenance_update_policy.dart';
import 'get_cluster_migration_source.dart';
import 'get_cluster_network_config.dart';
import 'get_cluster_psc_config.dart';
import 'get_cluster_restore_backup_source.dart';
import 'get_cluster_restore_backupdr_backup_source.dart';
import 'get_cluster_restore_backupdr_pitr_source.dart';
import 'get_cluster_restore_continuous_backup_source.dart';
import 'get_cluster_secondary_config.dart';
import 'get_cluster_trial_metadata.dart';

/// Result data returned by getCluster.
class GetClusterResult {
  final Map<String, String>? annotations;
  final List<GetClusterAutomatedBackupPolicy>? automatedBackupPolicies;
  final List<GetClusterBackupSource>? backupSources;
  final List<GetClusterBackupdrBackupSource>? backupdrBackupSources;
  final String? clusterId;
  final String? clusterType;
  final List<GetClusterContinuousBackupConfig>? continuousBackupConfigs;
  final List<GetClusterContinuousBackupInfo>? continuousBackupInfos;
  final String? databaseVersion;
  final List<GetClusterDataplexConfig>? dataplexConfigs;
  final String? deletionPolicy;
  final bool? deletionProtection;
  final String? displayName;
  final Map<String, String>? effectiveAnnotations;
  final Map<String, String>? effectiveLabels;
  final List<GetClusterEncryptionConfig>? encryptionConfigs;
  final List<GetClusterEncryptionInfo>? encryptionInfos;
  final String? etag;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<GetClusterInitialUser>? initialUsers;
  final Map<String, String>? labels;
  final String? location;
  final List<GetClusterMaintenanceUpdatePolicy>? maintenanceUpdatePolicies;
  final List<GetClusterMigrationSource>? migrationSources;
  final String? name;
  final List<GetClusterNetworkConfig>? networkConfigs;
  final String? project;
  final List<GetClusterPscConfig>? pscConfigs;
  final Map<String, String>? pulumiLabels;
  final bool? reconciling;
  final List<GetClusterRestoreBackupSource>? restoreBackupSources;
  final List<GetClusterRestoreBackupdrBackupSource>? restoreBackupdrBackupSources;
  final List<GetClusterRestoreBackupdrPitrSource>? restoreBackupdrPitrSources;
  final List<GetClusterRestoreContinuousBackupSource>? restoreContinuousBackupSources;
  final List<GetClusterSecondaryConfig>? secondaryConfigs;
  final bool? skipAwaitMajorVersionUpgrade;
  final String? state;
  final String? subscriptionType;
  final List<GetClusterTrialMetadata>? trialMetadatas;
  final String? uid;

  /// Creates a new [GetClusterResult].
  /// [annotations] Optional.
  /// [automatedBackupPolicies] Optional.
  /// [backupSources] Optional.
  /// [backupdrBackupSources] Optional.
  /// [clusterId] Optional.
  /// [clusterType] Optional.
  /// [continuousBackupConfigs] Optional.
  /// [continuousBackupInfos] Optional.
  /// [databaseVersion] Optional.
  /// [dataplexConfigs] Optional.
  /// [deletionPolicy] Optional.
  /// [deletionProtection] Optional.
  /// [displayName] Optional.
  /// [effectiveAnnotations] Optional.
  /// [effectiveLabels] Optional.
  /// [encryptionConfigs] Optional.
  /// [encryptionInfos] Optional.
  /// [etag] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [initialUsers] Optional.
  /// [labels] Optional.
  /// [location] Optional.
  /// [maintenanceUpdatePolicies] Optional.
  /// [migrationSources] Optional.
  /// [name] Optional.
  /// [networkConfigs] Optional.
  /// [project] Optional.
  /// [pscConfigs] Optional.
  /// [pulumiLabels] Optional.
  /// [reconciling] Optional.
  /// [restoreBackupSources] Optional.
  /// [restoreBackupdrBackupSources] Optional.
  /// [restoreBackupdrPitrSources] Optional.
  /// [restoreContinuousBackupSources] Optional.
  /// [secondaryConfigs] Optional.
  /// [skipAwaitMajorVersionUpgrade] Optional.
  /// [state] Optional.
  /// [subscriptionType] Optional.
  /// [trialMetadatas] Optional.
  /// [uid] Optional.
  const GetClusterResult({
    this.annotations,
    this.automatedBackupPolicies,
    this.backupSources,
    this.backupdrBackupSources,
    this.clusterId,
    this.clusterType,
    this.continuousBackupConfigs,
    this.continuousBackupInfos,
    this.databaseVersion,
    this.dataplexConfigs,
    this.deletionPolicy,
    this.deletionProtection,
    this.displayName,
    this.effectiveAnnotations,
    this.effectiveLabels,
    this.encryptionConfigs,
    this.encryptionInfos,
    this.etag,
    this.id,
    this.initialUsers,
    this.labels,
    this.location,
    this.maintenanceUpdatePolicies,
    this.migrationSources,
    this.name,
    this.networkConfigs,
    this.project,
    this.pscConfigs,
    this.pulumiLabels,
    this.reconciling,
    this.restoreBackupSources,
    this.restoreBackupdrBackupSources,
    this.restoreBackupdrPitrSources,
    this.restoreContinuousBackupSources,
    this.secondaryConfigs,
    this.skipAwaitMajorVersionUpgrade,
    this.state,
    this.subscriptionType,
    this.trialMetadatas,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'automatedBackupPolicies': ?(() { final guardedValue = automatedBackupPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterAutomatedBackupPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'backupSources': ?(() { final guardedValue = backupSources; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterBackupSource, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'backupdrBackupSources': ?(() { final guardedValue = backupdrBackupSources; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterBackupdrBackupSource, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'clusterId': ?clusterId,
      'clusterType': ?clusterType,
      'continuousBackupConfigs': ?(() { final guardedValue = continuousBackupConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterContinuousBackupConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'continuousBackupInfos': ?(() { final guardedValue = continuousBackupInfos; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterContinuousBackupInfo, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'databaseVersion': ?databaseVersion,
      'dataplexConfigs': ?(() { final guardedValue = dataplexConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterDataplexConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'deletionPolicy': ?deletionPolicy,
      'deletionProtection': ?deletionProtection,
      'displayName': ?displayName,
      'effectiveAnnotations': ?effectiveAnnotations,
      'effectiveLabels': ?effectiveLabels,
      'encryptionConfigs': ?(() { final guardedValue = encryptionConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterEncryptionConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'encryptionInfos': ?(() { final guardedValue = encryptionInfos; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterEncryptionInfo, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'etag': ?etag,
      'id': ?id,
      'initialUsers': ?(() { final guardedValue = initialUsers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterInitialUser, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'labels': ?labels,
      'location': ?location,
      'maintenanceUpdatePolicies': ?(() { final guardedValue = maintenanceUpdatePolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterMaintenanceUpdatePolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'migrationSources': ?(() { final guardedValue = migrationSources; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterMigrationSource, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'networkConfigs': ?(() { final guardedValue = networkConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterNetworkConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'project': ?project,
      'pscConfigs': ?(() { final guardedValue = pscConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterPscConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'pulumiLabels': ?pulumiLabels,
      'reconciling': ?reconciling,
      'restoreBackupSources': ?(() { final guardedValue = restoreBackupSources; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterRestoreBackupSource, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'restoreBackupdrBackupSources': ?(() { final guardedValue = restoreBackupdrBackupSources; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterRestoreBackupdrBackupSource, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'restoreBackupdrPitrSources': ?(() { final guardedValue = restoreBackupdrPitrSources; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterRestoreBackupdrPitrSource, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'restoreContinuousBackupSources': ?(() { final guardedValue = restoreContinuousBackupSources; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterRestoreContinuousBackupSource, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'secondaryConfigs': ?(() { final guardedValue = secondaryConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterSecondaryConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'skipAwaitMajorVersionUpgrade': ?skipAwaitMajorVersionUpgrade,
      'state': ?state,
      'subscriptionType': ?subscriptionType,
      'trialMetadatas': ?(() { final guardedValue = trialMetadatas; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterTrialMetadata, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'uid': ?uid,
    };
  }

  factory GetClusterResult.fromMap(Map<String, dynamic> map) {
    return GetClusterResult(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      automatedBackupPolicies: (() { final guardedValue = map['automatedBackupPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterAutomatedBackupPolicy>(guardedValue, (value) => GetClusterAutomatedBackupPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      backupSources: (() { final guardedValue = map['backupSources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterBackupSource>(guardedValue, (value) => GetClusterBackupSource.fromMap((value as Map).cast<String, dynamic>())); })(),
      backupdrBackupSources: (() { final guardedValue = map['backupdrBackupSources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterBackupdrBackupSource>(guardedValue, (value) => GetClusterBackupdrBackupSource.fromMap((value as Map).cast<String, dynamic>())); })(),
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clusterType: (() { final guardedValue = map['clusterType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      continuousBackupConfigs: (() { final guardedValue = map['continuousBackupConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterContinuousBackupConfig>(guardedValue, (value) => GetClusterContinuousBackupConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      continuousBackupInfos: (() { final guardedValue = map['continuousBackupInfos']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterContinuousBackupInfo>(guardedValue, (value) => GetClusterContinuousBackupInfo.fromMap((value as Map).cast<String, dynamic>())); })(),
      databaseVersion: (() { final guardedValue = map['databaseVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataplexConfigs: (() { final guardedValue = map['dataplexConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterDataplexConfig>(guardedValue, (value) => GetClusterDataplexConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effectiveAnnotations: (() { final guardedValue = map['effectiveAnnotations']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      encryptionConfigs: (() { final guardedValue = map['encryptionConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterEncryptionConfig>(guardedValue, (value) => GetClusterEncryptionConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      encryptionInfos: (() { final guardedValue = map['encryptionInfos']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterEncryptionInfo>(guardedValue, (value) => GetClusterEncryptionInfo.fromMap((value as Map).cast<String, dynamic>())); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      initialUsers: (() { final guardedValue = map['initialUsers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterInitialUser>(guardedValue, (value) => GetClusterInitialUser.fromMap((value as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maintenanceUpdatePolicies: (() { final guardedValue = map['maintenanceUpdatePolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterMaintenanceUpdatePolicy>(guardedValue, (value) => GetClusterMaintenanceUpdatePolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      migrationSources: (() { final guardedValue = map['migrationSources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterMigrationSource>(guardedValue, (value) => GetClusterMigrationSource.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkConfigs: (() { final guardedValue = map['networkConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterNetworkConfig>(guardedValue, (value) => GetClusterNetworkConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pscConfigs: (() { final guardedValue = map['pscConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterPscConfig>(guardedValue, (value) => GetClusterPscConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      reconciling: (() { final guardedValue = map['reconciling']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      restoreBackupSources: (() { final guardedValue = map['restoreBackupSources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterRestoreBackupSource>(guardedValue, (value) => GetClusterRestoreBackupSource.fromMap((value as Map).cast<String, dynamic>())); })(),
      restoreBackupdrBackupSources: (() { final guardedValue = map['restoreBackupdrBackupSources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterRestoreBackupdrBackupSource>(guardedValue, (value) => GetClusterRestoreBackupdrBackupSource.fromMap((value as Map).cast<String, dynamic>())); })(),
      restoreBackupdrPitrSources: (() { final guardedValue = map['restoreBackupdrPitrSources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterRestoreBackupdrPitrSource>(guardedValue, (value) => GetClusterRestoreBackupdrPitrSource.fromMap((value as Map).cast<String, dynamic>())); })(),
      restoreContinuousBackupSources: (() { final guardedValue = map['restoreContinuousBackupSources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterRestoreContinuousBackupSource>(guardedValue, (value) => GetClusterRestoreContinuousBackupSource.fromMap((value as Map).cast<String, dynamic>())); })(),
      secondaryConfigs: (() { final guardedValue = map['secondaryConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterSecondaryConfig>(guardedValue, (value) => GetClusterSecondaryConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      skipAwaitMajorVersionUpgrade: (() { final guardedValue = map['skipAwaitMajorVersionUpgrade']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subscriptionType: (() { final guardedValue = map['subscriptionType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      trialMetadatas: (() { final guardedValue = map['trialMetadatas']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterTrialMetadata>(guardedValue, (value) => GetClusterTrialMetadata.fromMap((value as Map).cast<String, dynamic>())); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
