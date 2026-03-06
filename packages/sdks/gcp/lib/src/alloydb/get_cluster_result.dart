// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_automated_backup_policy.dart';
import 'get_cluster_backup_source.dart';
import 'get_cluster_continuous_backup_config.dart';
import 'get_cluster_continuous_backup_info.dart';
import 'get_cluster_encryption_config.dart';
import 'get_cluster_encryption_info.dart';
import 'get_cluster_initial_user.dart';
import 'get_cluster_maintenance_update_policy.dart';
import 'get_cluster_migration_source.dart';
import 'get_cluster_network_config.dart';
import 'get_cluster_psc_config.dart';
import 'get_cluster_restore_backup_source.dart';
import 'get_cluster_restore_continuous_backup_source.dart';
import 'get_cluster_secondary_config.dart';
import 'get_cluster_trial_metadata.dart';

/// Result data returned by getCluster.
class GetClusterResult {
  final Map<String, String> annotations;
  final List<GetClusterAutomatedBackupPolicy> automatedBackupPolicies;
  final List<GetClusterBackupSource> backupSources;
  final String clusterId;
  final String clusterType;
  final List<GetClusterContinuousBackupConfig> continuousBackupConfigs;
  final List<GetClusterContinuousBackupInfo> continuousBackupInfos;
  final String databaseVersion;
  final String deletionPolicy;
  final bool deletionProtection;
  final String displayName;
  final Map<String, String> effectiveAnnotations;
  final Map<String, String> effectiveLabels;
  final List<GetClusterEncryptionConfig> encryptionConfigs;
  final List<GetClusterEncryptionInfo> encryptionInfos;
  final String etag;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetClusterInitialUser> initialUsers;
  final Map<String, String> labels;
  final String? location;
  final List<GetClusterMaintenanceUpdatePolicy> maintenanceUpdatePolicies;
  final List<GetClusterMigrationSource> migrationSources;
  final String name;
  final List<GetClusterNetworkConfig> networkConfigs;
  final String? project;
  final List<GetClusterPscConfig> pscConfigs;
  final Map<String, String> pulumiLabels;
  final bool reconciling;
  final List<GetClusterRestoreBackupSource> restoreBackupSources;
  final List<GetClusterRestoreContinuousBackupSource> restoreContinuousBackupSources;
  final List<GetClusterSecondaryConfig> secondaryConfigs;
  final bool skipAwaitMajorVersionUpgrade;
  final String state;
  final String subscriptionType;
  final List<GetClusterTrialMetadata> trialMetadatas;
  final String uid;

  /// Creates a new [GetClusterResult].
  /// [annotations] Required.
  /// [automatedBackupPolicies] Required.
  /// [backupSources] Required.
  /// [clusterId] Required.
  /// [clusterType] Required.
  /// [continuousBackupConfigs] Required.
  /// [continuousBackupInfos] Required.
  /// [databaseVersion] Required.
  /// [deletionPolicy] Required.
  /// [deletionProtection] Required.
  /// [displayName] Required.
  /// [effectiveAnnotations] Required.
  /// [effectiveLabels] Required.
  /// [encryptionConfigs] Required.
  /// [encryptionInfos] Required.
  /// [etag] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [initialUsers] Required.
  /// [labels] Required.
  /// [location] Optional.
  /// [maintenanceUpdatePolicies] Required.
  /// [migrationSources] Required.
  /// [name] Required.
  /// [networkConfigs] Required.
  /// [project] Optional.
  /// [pscConfigs] Required.
  /// [pulumiLabels] Required.
  /// [reconciling] Required.
  /// [restoreBackupSources] Required.
  /// [restoreContinuousBackupSources] Required.
  /// [secondaryConfigs] Required.
  /// [skipAwaitMajorVersionUpgrade] Required.
  /// [state] Required.
  /// [subscriptionType] Required.
  /// [trialMetadatas] Required.
  /// [uid] Required.
  const GetClusterResult({
    required this.annotations,
    required this.automatedBackupPolicies,
    required this.backupSources,
    required this.clusterId,
    required this.clusterType,
    required this.continuousBackupConfigs,
    required this.continuousBackupInfos,
    required this.databaseVersion,
    required this.deletionPolicy,
    required this.deletionProtection,
    required this.displayName,
    required this.effectiveAnnotations,
    required this.effectiveLabels,
    required this.encryptionConfigs,
    required this.encryptionInfos,
    required this.etag,
    required this.id,
    required this.initialUsers,
    required this.labels,
    this.location,
    required this.maintenanceUpdatePolicies,
    required this.migrationSources,
    required this.name,
    required this.networkConfigs,
    this.project,
    required this.pscConfigs,
    required this.pulumiLabels,
    required this.reconciling,
    required this.restoreBackupSources,
    required this.restoreContinuousBackupSources,
    required this.secondaryConfigs,
    required this.skipAwaitMajorVersionUpgrade,
    required this.state,
    required this.subscriptionType,
    required this.trialMetadatas,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': annotations,
      'automatedBackupPolicies': pulumi.Input.encodeList<GetClusterAutomatedBackupPolicy, Map<String, dynamic>>(automatedBackupPolicies, (value) => value.toMap()),
      'backupSources': pulumi.Input.encodeList<GetClusterBackupSource, Map<String, dynamic>>(backupSources, (value) => value.toMap()),
      'clusterId': clusterId,
      'clusterType': clusterType,
      'continuousBackupConfigs': pulumi.Input.encodeList<GetClusterContinuousBackupConfig, Map<String, dynamic>>(continuousBackupConfigs, (value) => value.toMap()),
      'continuousBackupInfos': pulumi.Input.encodeList<GetClusterContinuousBackupInfo, Map<String, dynamic>>(continuousBackupInfos, (value) => value.toMap()),
      'databaseVersion': databaseVersion,
      'deletionPolicy': deletionPolicy,
      'deletionProtection': deletionProtection,
      'displayName': displayName,
      'effectiveAnnotations': effectiveAnnotations,
      'effectiveLabels': effectiveLabels,
      'encryptionConfigs': pulumi.Input.encodeList<GetClusterEncryptionConfig, Map<String, dynamic>>(encryptionConfigs, (value) => value.toMap()),
      'encryptionInfos': pulumi.Input.encodeList<GetClusterEncryptionInfo, Map<String, dynamic>>(encryptionInfos, (value) => value.toMap()),
      'etag': etag,
      'id': id,
      'initialUsers': pulumi.Input.encodeList<GetClusterInitialUser, Map<String, dynamic>>(initialUsers, (value) => value.toMap()),
      'labels': labels,
      'location': ?location,
      'maintenanceUpdatePolicies': pulumi.Input.encodeList<GetClusterMaintenanceUpdatePolicy, Map<String, dynamic>>(maintenanceUpdatePolicies, (value) => value.toMap()),
      'migrationSources': pulumi.Input.encodeList<GetClusterMigrationSource, Map<String, dynamic>>(migrationSources, (value) => value.toMap()),
      'name': name,
      'networkConfigs': pulumi.Input.encodeList<GetClusterNetworkConfig, Map<String, dynamic>>(networkConfigs, (value) => value.toMap()),
      'project': ?project,
      'pscConfigs': pulumi.Input.encodeList<GetClusterPscConfig, Map<String, dynamic>>(pscConfigs, (value) => value.toMap()),
      'pulumiLabels': pulumiLabels,
      'reconciling': reconciling,
      'restoreBackupSources': pulumi.Input.encodeList<GetClusterRestoreBackupSource, Map<String, dynamic>>(restoreBackupSources, (value) => value.toMap()),
      'restoreContinuousBackupSources': pulumi.Input.encodeList<GetClusterRestoreContinuousBackupSource, Map<String, dynamic>>(restoreContinuousBackupSources, (value) => value.toMap()),
      'secondaryConfigs': pulumi.Input.encodeList<GetClusterSecondaryConfig, Map<String, dynamic>>(secondaryConfigs, (value) => value.toMap()),
      'skipAwaitMajorVersionUpgrade': skipAwaitMajorVersionUpgrade,
      'state': state,
      'subscriptionType': subscriptionType,
      'trialMetadatas': pulumi.Input.encodeList<GetClusterTrialMetadata, Map<String, dynamic>>(trialMetadatas, (value) => value.toMap()),
      'uid': uid,
    };
  }

  factory GetClusterResult.fromMap(Map<String, dynamic> map) {
    return GetClusterResult(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      automatedBackupPolicies: pulumi.Input.decodeList<GetClusterAutomatedBackupPolicy>(map['automatedBackupPolicies']!, (value) => GetClusterAutomatedBackupPolicy.fromMap((value as Map).cast<String, dynamic>())),
      backupSources: pulumi.Input.decodeList<GetClusterBackupSource>(map['backupSources']!, (value) => GetClusterBackupSource.fromMap((value as Map).cast<String, dynamic>())),
      clusterId: map['clusterId'] as String,
      clusterType: map['clusterType'] as String,
      continuousBackupConfigs: pulumi.Input.decodeList<GetClusterContinuousBackupConfig>(map['continuousBackupConfigs']!, (value) => GetClusterContinuousBackupConfig.fromMap((value as Map).cast<String, dynamic>())),
      continuousBackupInfos: pulumi.Input.decodeList<GetClusterContinuousBackupInfo>(map['continuousBackupInfos']!, (value) => GetClusterContinuousBackupInfo.fromMap((value as Map).cast<String, dynamic>())),
      databaseVersion: map['databaseVersion'] as String,
      deletionPolicy: map['deletionPolicy'] as String,
      deletionProtection: map['deletionProtection'] as bool,
      displayName: map['displayName'] as String,
      effectiveAnnotations: (map['effectiveAnnotations'] as Map).cast<String, String>(),
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      encryptionConfigs: pulumi.Input.decodeList<GetClusterEncryptionConfig>(map['encryptionConfigs']!, (value) => GetClusterEncryptionConfig.fromMap((value as Map).cast<String, dynamic>())),
      encryptionInfos: pulumi.Input.decodeList<GetClusterEncryptionInfo>(map['encryptionInfos']!, (value) => GetClusterEncryptionInfo.fromMap((value as Map).cast<String, dynamic>())),
      etag: map['etag'] as String,
      id: map['id'] as String,
      initialUsers: pulumi.Input.decodeList<GetClusterInitialUser>(map['initialUsers']!, (value) => GetClusterInitialUser.fromMap((value as Map).cast<String, dynamic>())),
      labels: (map['labels'] as Map).cast<String, String>(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maintenanceUpdatePolicies: pulumi.Input.decodeList<GetClusterMaintenanceUpdatePolicy>(map['maintenanceUpdatePolicies']!, (value) => GetClusterMaintenanceUpdatePolicy.fromMap((value as Map).cast<String, dynamic>())),
      migrationSources: pulumi.Input.decodeList<GetClusterMigrationSource>(map['migrationSources']!, (value) => GetClusterMigrationSource.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      networkConfigs: pulumi.Input.decodeList<GetClusterNetworkConfig>(map['networkConfigs']!, (value) => GetClusterNetworkConfig.fromMap((value as Map).cast<String, dynamic>())),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pscConfigs: pulumi.Input.decodeList<GetClusterPscConfig>(map['pscConfigs']!, (value) => GetClusterPscConfig.fromMap((value as Map).cast<String, dynamic>())),
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      reconciling: map['reconciling'] as bool,
      restoreBackupSources: pulumi.Input.decodeList<GetClusterRestoreBackupSource>(map['restoreBackupSources']!, (value) => GetClusterRestoreBackupSource.fromMap((value as Map).cast<String, dynamic>())),
      restoreContinuousBackupSources: pulumi.Input.decodeList<GetClusterRestoreContinuousBackupSource>(map['restoreContinuousBackupSources']!, (value) => GetClusterRestoreContinuousBackupSource.fromMap((value as Map).cast<String, dynamic>())),
      secondaryConfigs: pulumi.Input.decodeList<GetClusterSecondaryConfig>(map['secondaryConfigs']!, (value) => GetClusterSecondaryConfig.fromMap((value as Map).cast<String, dynamic>())),
      skipAwaitMajorVersionUpgrade: map['skipAwaitMajorVersionUpgrade'] as bool,
      state: map['state'] as String,
      subscriptionType: map['subscriptionType'] as String,
      trialMetadatas: pulumi.Input.decodeList<GetClusterTrialMetadata>(map['trialMetadatas']!, (value) => GetClusterTrialMetadata.fromMap((value as Map).cast<String, dynamic>())),
      uid: map['uid'] as String,
    );
  }
}

