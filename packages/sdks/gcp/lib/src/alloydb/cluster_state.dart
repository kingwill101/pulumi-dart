// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_automated_backup_policy.dart';
import 'cluster_backup_source.dart';
import 'cluster_continuous_backup_config.dart';
import 'cluster_continuous_backup_info.dart';
import 'cluster_encryption_config.dart';
import 'cluster_encryption_info.dart';
import 'cluster_initial_user.dart';
import 'cluster_maintenance_update_policy.dart';
import 'cluster_migration_source.dart';
import 'cluster_network_config.dart';
import 'cluster_psc_config.dart';
import 'cluster_restore_backup_source.dart';
import 'cluster_restore_continuous_backup_source.dart';
import 'cluster_secondary_config.dart';
import 'cluster_trial_metadata.dart';

/// Input properties used for looking up and filtering Cluster resources.
class ClusterState {
  /// Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// The automated backup policy for this cluster. AutomatedBackupPolicy is disabled by default.
  /// Structure is documented below.
  final pulumi.Input<ClusterAutomatedBackupPolicy>? automatedBackupPolicy;
  /// Cluster created from backup.
  /// Structure is documented below.
  final pulumi.Input<List<ClusterBackupSource>>? backupSources;
  /// The ID of the alloydb cluster.
  final pulumi.Input<String>? clusterId;
  /// The type of cluster. If not set, defaults to PRIMARY.
  /// Default value is `PRIMARY`.
  /// Possible values are: `PRIMARY`, `SECONDARY`.
  final pulumi.Input<String>? clusterType;
  /// The continuous backup config for this cluster.
  /// If no policy is provided then the default policy will be used. The default policy takes one backup a day and retains backups for 14 days.
  /// Structure is documented below.
  final pulumi.Input<ClusterContinuousBackupConfig>? continuousBackupConfig;
  /// ContinuousBackupInfo describes the continuous backup properties of a cluster.
  /// Structure is documented below.
  final pulumi.Input<List<ClusterContinuousBackupInfo>>? continuousBackupInfos;
  /// The database engine major version. This is an optional field and it's populated at the Cluster creation time.
  /// Note: Changing this field to a higer version results in upgrading the AlloyDB cluster which is an irreversible change.
  final pulumi.Input<String>? databaseVersion;
  /// Policy to determine if the cluster should be deleted forcefully.
  /// Deleting a cluster forcefully, deletes the cluster and all its associated instances within the cluster.
  /// Deleting a Secondary cluster with a secondary instance REQUIRES setting deletion_policy = "FORCE" otherwise an error is returned. This is needed as there is no support to delete just the secondary instance, and the only way to delete secondary instance is to delete the associated secondary cluster forcefully which also deletes the secondary instance.
  /// Possible values: DEFAULT, FORCE
  final pulumi.Input<String>? deletionPolicy;
  final pulumi.Input<bool>? deletionProtection;
  /// User-settable and human-readable display name for the Cluster.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<Map<String, String>>? effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// EncryptionConfig describes the encryption config of a cluster or a backup that is encrypted with a CMEK (customer-managed encryption key).
  /// Structure is documented below.
  final pulumi.Input<ClusterEncryptionConfig>? encryptionConfig;
  /// (Output)
  /// Output only. The encryption information for the WALs and backups required for ContinuousBackup.
  /// Structure is documented below.
  final pulumi.Input<List<ClusterEncryptionInfo>>? encryptionInfos;
  /// For Resource freshness validation (https://google.aip.dev/154)
  final pulumi.Input<String>? etag;
  /// Initial user to setup during cluster creation. If unset for new Clusters, a postgres role with null password is created. You will need to create additional users or set the password in order to log in.
  /// Structure is documented below.
  final pulumi.Input<ClusterInitialUser>? initialUser;
  /// User-defined labels for the alloydb cluster.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location where the alloydb cluster should reside.
  final pulumi.Input<String>? location;
  /// MaintenanceUpdatePolicy defines the policy for system updates.
  /// Structure is documented below.
  final pulumi.Input<ClusterMaintenanceUpdatePolicy>? maintenanceUpdatePolicy;
  /// Cluster created via DMS migration.
  /// Structure is documented below.
  final pulumi.Input<List<ClusterMigrationSource>>? migrationSources;
  /// The name of the cluster resource.
  final pulumi.Input<String>? name;
  /// Metadata related to network configuration.
  /// Structure is documented below.
  final pulumi.Input<ClusterNetworkConfig>? networkConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Configuration for Private Service Connect (PSC) for the cluster.
  /// Structure is documented below.
  final pulumi.Input<ClusterPscConfig>? pscConfig;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Output only. Reconciling (https://google.aip.dev/128#reconciliation).
  /// Set to true if the current state of Cluster does not match the user's intended state, and the service is actively updating the resource to reconcile them.
  /// This can happen due to user-triggered updates or system actions like failover or maintenance.
  final pulumi.Input<bool>? reconciling;
  /// The source when restoring from a backup. Conflicts with 'restore_continuous_backup_source', both can't be set together.
  /// Structure is documented below.
  final pulumi.Input<ClusterRestoreBackupSource>? restoreBackupSource;
  /// The source when restoring via point in time recovery (PITR). Conflicts with 'restore_backup_source', both can't be set together.
  /// Structure is documented below.
  final pulumi.Input<ClusterRestoreContinuousBackupSource>? restoreContinuousBackupSource;
  /// Configuration of the secondary cluster for Cross Region Replication. This should be set if and only if the cluster is of type SECONDARY.
  /// Structure is documented below.
  final pulumi.Input<ClusterSecondaryConfig>? secondaryConfig;
  /// Set to true to skip awaiting on the major version upgrade of the cluster.
  /// Possible values: true, false
  /// Default value: "true"
  final pulumi.Input<bool>? skipAwaitMajorVersionUpgrade;
  /// Output only. The current serving state of the cluster.
  final pulumi.Input<String>? state;
  /// The subscrition type of cluster.
  /// Possible values are: `TRIAL`, `STANDARD`.
  final pulumi.Input<String>? subscriptionType;
  /// Contains information and all metadata related to TRIAL clusters.
  /// Structure is documented below.
  final pulumi.Input<List<ClusterTrialMetadata>>? trialMetadatas;
  /// The system-generated UID of the resource.
  final pulumi.Input<String>? uid;

  /// Creates a new [ClusterState].
  /// [annotations] Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
  /// [automatedBackupPolicy] The automated backup policy for this cluster. AutomatedBackupPolicy is disabled by default.
  /// [backupSources] Cluster created from backup.
  /// [clusterId] The ID of the alloydb cluster.
  /// [clusterType] The type of cluster. If not set, defaults to PRIMARY.
  /// [continuousBackupConfig] The continuous backup config for this cluster.
  /// [continuousBackupInfos] ContinuousBackupInfo describes the continuous backup properties of a cluster.
  /// [databaseVersion] The database engine major version. This is an optional field and it's populated at the Cluster creation time.
  /// [deletionPolicy] Policy to determine if the cluster should be deleted forcefully.
  /// [deletionProtection] Optional.
  /// [displayName] User-settable and human-readable display name for the Cluster.
  /// [effectiveAnnotations] Optional.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [encryptionConfig] EncryptionConfig describes the encryption config of a cluster or a backup that is encrypted with a CMEK (customer-managed encryption key).
  /// [encryptionInfos] (Output)
  /// [etag] For Resource freshness validation (https://google.aip.dev/154)
  /// [initialUser] Initial user to setup during cluster creation. If unset for new Clusters, a postgres role with null password is created. You will need to create additional users or set the password in order to log in.
  /// [labels] User-defined labels for the alloydb cluster.
  /// [location] The location where the alloydb cluster should reside.
  /// [maintenanceUpdatePolicy] MaintenanceUpdatePolicy defines the policy for system updates.
  /// [migrationSources] Cluster created via DMS migration.
  /// [name] The name of the cluster resource.
  /// [networkConfig] Metadata related to network configuration.
  /// [project] The ID of the project in which the resource belongs.
  /// [pscConfig] Configuration for Private Service Connect (PSC) for the cluster.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [reconciling] Output only. Reconciling (https://google.aip.dev/128#reconciliation).
  /// [restoreBackupSource] The source when restoring from a backup. Conflicts with 'restore_continuous_backup_source', both can't be set together.
  /// [restoreContinuousBackupSource] The source when restoring via point in time recovery (PITR). Conflicts with 'restore_backup_source', both can't be set together.
  /// [secondaryConfig] Configuration of the secondary cluster for Cross Region Replication. This should be set if and only if the cluster is of type SECONDARY.
  /// [skipAwaitMajorVersionUpgrade] Set to true to skip awaiting on the major version upgrade of the cluster.
  /// [state] Output only. The current serving state of the cluster.
  /// [subscriptionType] The subscrition type of cluster.
  /// [trialMetadatas] Contains information and all metadata related to TRIAL clusters.
  /// [uid] The system-generated UID of the resource.
  ClusterState({
    this.annotations,
    this.automatedBackupPolicy,
    this.backupSources,
    this.clusterId,
    this.clusterType,
    this.continuousBackupConfig,
    this.continuousBackupInfos,
    this.databaseVersion,
    this.deletionPolicy,
    this.deletionProtection,
    this.displayName,
    this.effectiveAnnotations,
    this.effectiveLabels,
    this.encryptionConfig,
    this.encryptionInfos,
    this.etag,
    this.initialUser,
    this.labels,
    this.location,
    this.maintenanceUpdatePolicy,
    this.migrationSources,
    this.name,
    this.networkConfig,
    this.project,
    this.pscConfig,
    this.pulumiLabels,
    this.reconciling,
    this.restoreBackupSource,
    this.restoreContinuousBackupSource,
    this.secondaryConfig,
    this.skipAwaitMajorVersionUpgrade,
    this.state,
    this.subscriptionType,
    this.trialMetadatas,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'automatedBackupPolicy': ?pulumi.Input.mapOptionalInputValue<ClusterAutomatedBackupPolicy, Map<String, dynamic>>(automatedBackupPolicy, (value) => value.toMap()),
      'backupSources': ?pulumi.Input.mapOptionalInputValue<List<ClusterBackupSource>, List<Map<String, dynamic>>>(backupSources, (value) => pulumi.Input.encodeList<ClusterBackupSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clusterId': ?clusterId,
      'clusterType': ?clusterType,
      'continuousBackupConfig': ?pulumi.Input.mapOptionalInputValue<ClusterContinuousBackupConfig, Map<String, dynamic>>(continuousBackupConfig, (value) => value.toMap()),
      'continuousBackupInfos': ?pulumi.Input.mapOptionalInputValue<List<ClusterContinuousBackupInfo>, List<Map<String, dynamic>>>(continuousBackupInfos, (value) => pulumi.Input.encodeList<ClusterContinuousBackupInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'databaseVersion': ?databaseVersion,
      'deletionPolicy': ?deletionPolicy,
      'deletionProtection': ?deletionProtection,
      'displayName': ?displayName,
      'effectiveAnnotations': ?effectiveAnnotations,
      'effectiveLabels': ?effectiveLabels,
      'encryptionConfig': ?pulumi.Input.mapOptionalInputValue<ClusterEncryptionConfig, Map<String, dynamic>>(encryptionConfig, (value) => value.toMap()),
      'encryptionInfos': ?pulumi.Input.mapOptionalInputValue<List<ClusterEncryptionInfo>, List<Map<String, dynamic>>>(encryptionInfos, (value) => pulumi.Input.encodeList<ClusterEncryptionInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'etag': ?etag,
      'initialUser': ?pulumi.Input.mapOptionalInputValue<ClusterInitialUser, Map<String, dynamic>>(initialUser, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'maintenanceUpdatePolicy': ?pulumi.Input.mapOptionalInputValue<ClusterMaintenanceUpdatePolicy, Map<String, dynamic>>(maintenanceUpdatePolicy, (value) => value.toMap()),
      'migrationSources': ?pulumi.Input.mapOptionalInputValue<List<ClusterMigrationSource>, List<Map<String, dynamic>>>(migrationSources, (value) => pulumi.Input.encodeList<ClusterMigrationSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'networkConfig': ?pulumi.Input.mapOptionalInputValue<ClusterNetworkConfig, Map<String, dynamic>>(networkConfig, (value) => value.toMap()),
      'project': ?project,
      'pscConfig': ?pulumi.Input.mapOptionalInputValue<ClusterPscConfig, Map<String, dynamic>>(pscConfig, (value) => value.toMap()),
      'pulumiLabels': ?pulumiLabels,
      'reconciling': ?reconciling,
      'restoreBackupSource': ?pulumi.Input.mapOptionalInputValue<ClusterRestoreBackupSource, Map<String, dynamic>>(restoreBackupSource, (value) => value.toMap()),
      'restoreContinuousBackupSource': ?pulumi.Input.mapOptionalInputValue<ClusterRestoreContinuousBackupSource, Map<String, dynamic>>(restoreContinuousBackupSource, (value) => value.toMap()),
      'secondaryConfig': ?pulumi.Input.mapOptionalInputValue<ClusterSecondaryConfig, Map<String, dynamic>>(secondaryConfig, (value) => value.toMap()),
      'skipAwaitMajorVersionUpgrade': ?skipAwaitMajorVersionUpgrade,
      'state': ?state,
      'subscriptionType': ?subscriptionType,
      'trialMetadatas': ?pulumi.Input.mapOptionalInputValue<List<ClusterTrialMetadata>, List<Map<String, dynamic>>>(trialMetadatas, (value) => pulumi.Input.encodeList<ClusterTrialMetadata, Map<String, dynamic>>(value, (value) => value.toMap())),
      'uid': ?uid,
    };
  }

  factory ClusterState.fromMap(Map<String, dynamic> map) {
    return ClusterState(
      annotations: map['annotations'] == null ? null : ((map['annotations']! as Map).cast<String, String>()).input(),
      automatedBackupPolicy: map['automatedBackupPolicy'] == null ? null : (ClusterAutomatedBackupPolicy.fromMap((map['automatedBackupPolicy']! as Map).cast<String, dynamic>())).input(),
      backupSources: map['backupSources'] == null ? null : (pulumi.Input.decodeList<ClusterBackupSource>(map['backupSources']!, (value) => ClusterBackupSource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      clusterId: map['clusterId'] == null ? null : (map['clusterId']! as String).input(),
      clusterType: map['clusterType'] == null ? null : (map['clusterType']! as String).input(),
      continuousBackupConfig: map['continuousBackupConfig'] == null ? null : (ClusterContinuousBackupConfig.fromMap((map['continuousBackupConfig']! as Map).cast<String, dynamic>())).input(),
      continuousBackupInfos: map['continuousBackupInfos'] == null ? null : (pulumi.Input.decodeList<ClusterContinuousBackupInfo>(map['continuousBackupInfos']!, (value) => ClusterContinuousBackupInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      databaseVersion: map['databaseVersion'] == null ? null : (map['databaseVersion']! as String).input(),
      deletionPolicy: map['deletionPolicy'] == null ? null : (map['deletionPolicy']! as String).input(),
      deletionProtection: map['deletionProtection'] == null ? null : (map['deletionProtection']! as bool).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : ((map['effectiveAnnotations']! as Map).cast<String, String>()).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      encryptionConfig: map['encryptionConfig'] == null ? null : (ClusterEncryptionConfig.fromMap((map['encryptionConfig']! as Map).cast<String, dynamic>())).input(),
      encryptionInfos: map['encryptionInfos'] == null ? null : (pulumi.Input.decodeList<ClusterEncryptionInfo>(map['encryptionInfos']!, (value) => ClusterEncryptionInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      initialUser: map['initialUser'] == null ? null : (ClusterInitialUser.fromMap((map['initialUser']! as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      maintenanceUpdatePolicy: map['maintenanceUpdatePolicy'] == null ? null : (ClusterMaintenanceUpdatePolicy.fromMap((map['maintenanceUpdatePolicy']! as Map).cast<String, dynamic>())).input(),
      migrationSources: map['migrationSources'] == null ? null : (pulumi.Input.decodeList<ClusterMigrationSource>(map['migrationSources']!, (value) => ClusterMigrationSource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      networkConfig: map['networkConfig'] == null ? null : (ClusterNetworkConfig.fromMap((map['networkConfig']! as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pscConfig: map['pscConfig'] == null ? null : (ClusterPscConfig.fromMap((map['pscConfig']! as Map).cast<String, dynamic>())).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      reconciling: map['reconciling'] == null ? null : (map['reconciling']! as bool).input(),
      restoreBackupSource: map['restoreBackupSource'] == null ? null : (ClusterRestoreBackupSource.fromMap((map['restoreBackupSource']! as Map).cast<String, dynamic>())).input(),
      restoreContinuousBackupSource: map['restoreContinuousBackupSource'] == null ? null : (ClusterRestoreContinuousBackupSource.fromMap((map['restoreContinuousBackupSource']! as Map).cast<String, dynamic>())).input(),
      secondaryConfig: map['secondaryConfig'] == null ? null : (ClusterSecondaryConfig.fromMap((map['secondaryConfig']! as Map).cast<String, dynamic>())).input(),
      skipAwaitMajorVersionUpgrade: map['skipAwaitMajorVersionUpgrade'] == null ? null : (map['skipAwaitMajorVersionUpgrade']! as bool).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      subscriptionType: map['subscriptionType'] == null ? null : (map['subscriptionType']! as String).input(),
      trialMetadatas: map['trialMetadatas'] == null ? null : (pulumi.Input.decodeList<ClusterTrialMetadata>(map['trialMetadatas']!, (value) => ClusterTrialMetadata.fromMap((value as Map).cast<String, dynamic>()))).input(),
      uid: map['uid'] == null ? null : (map['uid']! as String).input(),
    );
  }
}

