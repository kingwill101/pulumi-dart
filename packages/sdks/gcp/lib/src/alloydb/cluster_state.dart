// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_automated_backup_policy.dart';
import 'cluster_backup_source.dart';
import 'cluster_backupdr_backup_source.dart';
import 'cluster_continuous_backup_config.dart';
import 'cluster_continuous_backup_info.dart';
import 'cluster_dataplex_config.dart';
import 'cluster_encryption_config.dart';
import 'cluster_encryption_info.dart';
import 'cluster_initial_user.dart';
import 'cluster_maintenance_update_policy.dart';
import 'cluster_migration_source.dart';
import 'cluster_network_config.dart';
import 'cluster_psc_config.dart';
import 'cluster_restore_backup_source.dart';
import 'cluster_restore_backupdr_backup_source.dart';
import 'cluster_restore_backupdr_pitr_source.dart';
import 'cluster_restore_continuous_backup_source.dart';
import 'cluster_secondary_config.dart';
import 'cluster_trial_metadata.dart';

/// Input properties used for looking up and filtering Cluster resources.
class ClusterState {
  /// Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// The automated backup policy for this cluster. AutomatedBackupPolicy is disabled by default.
  /// Structure is documented below.
  final pulumi.Input<ClusterAutomatedBackupPolicy>? automatedBackupPolicy;
  /// Cluster created from backup.
  /// Structure is documented below.
  final pulumi.Input<List<ClusterBackupSource>>? backupSources;
  /// Cluster created from a BackupDR backup.
  /// Structure is documented below.
  final pulumi.Input<List<ClusterBackupdrBackupSource>>? backupdrBackupSources;
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
  /// Configuration for Dataplex integration. This is an optional field. If not set, Dataplex integration will be enabled by default.
  /// Structure is documented below.
  final pulumi.Input<ClusterDataplexConfig>? dataplexConfig;
  /// Policy to determine if the cluster should be deleted forcefully.
  /// Deleting a cluster forcefully, deletes the cluster and all its associated instances within the cluster.
  /// Deleting a Secondary cluster with a secondary instance REQUIRES setting deletionPolicy = "FORCE" otherwise an error is returned. This is needed as there is no support to delete just the secondary instance, and the only way to delete secondary instance is to delete the associated secondary cluster forcefully which also deletes the secondary instance.
  ///
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", the command will behave as if set to "DEFAULT".
  ///
  /// Possible values: DEFAULT, FORCE, PREVENT, ABANDON, DELETE
  final pulumi.Input<String>? deletionPolicy;
  /// Whether Terraform will be prevented from destroying the cluster.
  /// When the field is set to true or unset in Terraform state, a `pulumi up`
  /// or `terraform destroy` that would delete the cluster will fail.
  /// When the field is set to false, deleting the cluster is allowed.
  final pulumi.Input<bool>? deletionProtection;
  /// User-settable and human-readable display name for the Cluster.
  final pulumi.Input<String>? displayName;
  /// All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
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
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
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
  /// The source when restoring from a backup. Conflicts with 'restore_continuous_backup_source', 'restore_backupdr_backup_source' and 'restore_backupdr_pitr_source', they can't be set together.
  /// Structure is documented below.
  final pulumi.Input<ClusterRestoreBackupSource>? restoreBackupSource;
  /// The source when restoring from a backup. Conflicts with 'restore_continuous_backup_source',  'restore_backup_source' and 'restore_backupdr_pitr_source', they can't be set together.
  /// Structure is documented below.
  final pulumi.Input<ClusterRestoreBackupdrBackupSource>? restoreBackupdrBackupSource;
  /// The BackupDR source used for point in time recovery. Conflicts with 'restore_backupdr_backup_source', 'restore_continuous_backup_source' and 'restore_backupdr_backup_source', they can't be set togeter.
  /// Structure is documented below.
  final pulumi.Input<ClusterRestoreBackupdrPitrSource>? restoreBackupdrPitrSource;
  /// The source when restoring via point in time recovery (PITR). Conflicts with 'restore_backup_source', 'restore_backupdr_backup_source' and 'restore_backupdr_pitr_source', they can't be set together.
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
  /// [backupdrBackupSources] Cluster created from a BackupDR backup.
  /// [clusterId] The ID of the alloydb cluster.
  /// [clusterType] The type of cluster. If not set, defaults to PRIMARY.
  /// [continuousBackupConfig] The continuous backup config for this cluster.
  /// [continuousBackupInfos] ContinuousBackupInfo describes the continuous backup properties of a cluster.
  /// [databaseVersion] The database engine major version. This is an optional field and it's populated at the Cluster creation time.
  /// [dataplexConfig] Configuration for Dataplex integration. This is an optional field. If not set, Dataplex integration will be enabled by default.
  /// [deletionPolicy] Policy to determine if the cluster should be deleted forcefully.
  /// [deletionProtection] Whether Terraform will be prevented from destroying the cluster.
  /// [displayName] User-settable and human-readable display name for the Cluster.
  /// [effectiveAnnotations] All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
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
  /// [restoreBackupSource] The source when restoring from a backup. Conflicts with 'restore_continuous_backup_source', 'restore_backupdr_backup_source' and 'restore_backupdr_pitr_source', they can't be set together.
  /// [restoreBackupdrBackupSource] The source when restoring from a backup. Conflicts with 'restore_continuous_backup_source',  'restore_backup_source' and 'restore_backupdr_pitr_source', they can't be set together.
  /// [restoreBackupdrPitrSource] The BackupDR source used for point in time recovery. Conflicts with 'restore_backupdr_backup_source', 'restore_continuous_backup_source' and 'restore_backupdr_backup_source', they can't be set togeter.
  /// [restoreContinuousBackupSource] The source when restoring via point in time recovery (PITR). Conflicts with 'restore_backup_source', 'restore_backupdr_backup_source' and 'restore_backupdr_pitr_source', they can't be set together.
  /// [secondaryConfig] Configuration of the secondary cluster for Cross Region Replication. This should be set if and only if the cluster is of type SECONDARY.
  /// [skipAwaitMajorVersionUpgrade] Set to true to skip awaiting on the major version upgrade of the cluster.
  /// [state] Output only. The current serving state of the cluster.
  /// [subscriptionType] The subscrition type of cluster.
  /// [trialMetadatas] Contains information and all metadata related to TRIAL clusters.
  /// [uid] The system-generated UID of the resource.
  const ClusterState({
    this.annotations,
    this.automatedBackupPolicy,
    this.backupSources,
    this.backupdrBackupSources,
    this.clusterId,
    this.clusterType,
    this.continuousBackupConfig,
    this.continuousBackupInfos,
    this.databaseVersion,
    this.dataplexConfig,
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
    this.restoreBackupdrBackupSource,
    this.restoreBackupdrPitrSource,
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
      'backupdrBackupSources': ?pulumi.Input.mapOptionalInputValue<List<ClusterBackupdrBackupSource>, List<Map<String, dynamic>>>(backupdrBackupSources, (value) => pulumi.Input.encodeList<ClusterBackupdrBackupSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clusterId': ?clusterId,
      'clusterType': ?clusterType,
      'continuousBackupConfig': ?pulumi.Input.mapOptionalInputValue<ClusterContinuousBackupConfig, Map<String, dynamic>>(continuousBackupConfig, (value) => value.toMap()),
      'continuousBackupInfos': ?pulumi.Input.mapOptionalInputValue<List<ClusterContinuousBackupInfo>, List<Map<String, dynamic>>>(continuousBackupInfos, (value) => pulumi.Input.encodeList<ClusterContinuousBackupInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'databaseVersion': ?databaseVersion,
      'dataplexConfig': ?pulumi.Input.mapOptionalInputValue<ClusterDataplexConfig, Map<String, dynamic>>(dataplexConfig, (value) => value.toMap()),
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
      'restoreBackupdrBackupSource': ?pulumi.Input.mapOptionalInputValue<ClusterRestoreBackupdrBackupSource, Map<String, dynamic>>(restoreBackupdrBackupSource, (value) => value.toMap()),
      'restoreBackupdrPitrSource': ?pulumi.Input.mapOptionalInputValue<ClusterRestoreBackupdrPitrSource, Map<String, dynamic>>(restoreBackupdrPitrSource, (value) => value.toMap()),
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
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      automatedBackupPolicy: (() { final guardedValue = map['automatedBackupPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterAutomatedBackupPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      backupSources: (() { final guardedValue = map['backupSources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterBackupSource>(guardedValue, (value) => ClusterBackupSource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      backupdrBackupSources: (() { final guardedValue = map['backupdrBackupSources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterBackupdrBackupSource>(guardedValue, (value) => ClusterBackupdrBackupSource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterType: (() { final guardedValue = map['clusterType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      continuousBackupConfig: (() { final guardedValue = map['continuousBackupConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterContinuousBackupConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      continuousBackupInfos: (() { final guardedValue = map['continuousBackupInfos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterContinuousBackupInfo>(guardedValue, (value) => ClusterContinuousBackupInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
      databaseVersion: (() { final guardedValue = map['databaseVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataplexConfig: (() { final guardedValue = map['dataplexConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterDataplexConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveAnnotations: (() { final guardedValue = map['effectiveAnnotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      encryptionConfig: (() { final guardedValue = map['encryptionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterEncryptionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      encryptionInfos: (() { final guardedValue = map['encryptionInfos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterEncryptionInfo>(guardedValue, (value) => ClusterEncryptionInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      initialUser: (() { final guardedValue = map['initialUser']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterInitialUser.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintenanceUpdatePolicy: (() { final guardedValue = map['maintenanceUpdatePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterMaintenanceUpdatePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      migrationSources: (() { final guardedValue = map['migrationSources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterMigrationSource>(guardedValue, (value) => ClusterMigrationSource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkConfig: (() { final guardedValue = map['networkConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNetworkConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pscConfig: (() { final guardedValue = map['pscConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterPscConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      reconciling: (() { final guardedValue = map['reconciling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      restoreBackupSource: (() { final guardedValue = map['restoreBackupSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterRestoreBackupSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      restoreBackupdrBackupSource: (() { final guardedValue = map['restoreBackupdrBackupSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterRestoreBackupdrBackupSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      restoreBackupdrPitrSource: (() { final guardedValue = map['restoreBackupdrPitrSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterRestoreBackupdrPitrSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      restoreContinuousBackupSource: (() { final guardedValue = map['restoreContinuousBackupSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterRestoreContinuousBackupSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      secondaryConfig: (() { final guardedValue = map['secondaryConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterSecondaryConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      skipAwaitMajorVersionUpgrade: (() { final guardedValue = map['skipAwaitMajorVersionUpgrade']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionType: (() { final guardedValue = map['subscriptionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trialMetadatas: (() { final guardedValue = map['trialMetadatas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterTrialMetadata>(guardedValue, (value) => ClusterTrialMetadata.fromMap((value as Map).cast<String, dynamic>()))); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
