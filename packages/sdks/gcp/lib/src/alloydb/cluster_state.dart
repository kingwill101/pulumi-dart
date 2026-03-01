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
    pulumi.Output<Map<String, String>>? annotations,
    pulumi.Output<ClusterAutomatedBackupPolicy>? automatedBackupPolicy,
    pulumi.Output<List<ClusterBackupSource>>? backupSources,
    pulumi.Output<String>? clusterId,
    pulumi.Output<String>? clusterType,
    pulumi.Output<ClusterContinuousBackupConfig>? continuousBackupConfig,
    pulumi.Output<List<ClusterContinuousBackupInfo>>? continuousBackupInfos,
    pulumi.Output<String>? databaseVersion,
    pulumi.Output<String>? deletionPolicy,
    pulumi.Output<bool>? deletionProtection,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? effectiveAnnotations,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<ClusterEncryptionConfig>? encryptionConfig,
    pulumi.Output<List<ClusterEncryptionInfo>>? encryptionInfos,
    pulumi.Output<String>? etag,
    pulumi.Output<ClusterInitialUser>? initialUser,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<ClusterMaintenanceUpdatePolicy>? maintenanceUpdatePolicy,
    pulumi.Output<List<ClusterMigrationSource>>? migrationSources,
    pulumi.Output<String>? name,
    pulumi.Output<ClusterNetworkConfig>? networkConfig,
    pulumi.Output<String>? project,
    pulumi.Output<ClusterPscConfig>? pscConfig,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<bool>? reconciling,
    pulumi.Output<ClusterRestoreBackupSource>? restoreBackupSource,
    pulumi.Output<ClusterRestoreContinuousBackupSource>? restoreContinuousBackupSource,
    pulumi.Output<ClusterSecondaryConfig>? secondaryConfig,
    pulumi.Output<bool>? skipAwaitMajorVersionUpgrade,
    pulumi.Output<String>? state,
    pulumi.Output<String>? subscriptionType,
    pulumi.Output<List<ClusterTrialMetadata>>? trialMetadatas,
    pulumi.Output<String>? uid,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      automatedBackupPolicy = pulumi.Input.asOptionalInput<ClusterAutomatedBackupPolicy>(automatedBackupPolicy),
      backupSources = pulumi.Input.asOptionalInput<List<ClusterBackupSource>>(backupSources),
      clusterId = pulumi.Input.asOptionalInput<String>(clusterId),
      clusterType = pulumi.Input.asOptionalInput<String>(clusterType),
      continuousBackupConfig = pulumi.Input.asOptionalInput<ClusterContinuousBackupConfig>(continuousBackupConfig),
      continuousBackupInfos = pulumi.Input.asOptionalInput<List<ClusterContinuousBackupInfo>>(continuousBackupInfos),
      databaseVersion = pulumi.Input.asOptionalInput<String>(databaseVersion),
      deletionPolicy = pulumi.Input.asOptionalInput<String>(deletionPolicy),
      deletionProtection = pulumi.Input.asOptionalInput<bool>(deletionProtection),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      effectiveAnnotations = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveAnnotations),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      encryptionConfig = pulumi.Input.asOptionalInput<ClusterEncryptionConfig>(encryptionConfig),
      encryptionInfos = pulumi.Input.asOptionalInput<List<ClusterEncryptionInfo>>(encryptionInfos),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      initialUser = pulumi.Input.asOptionalInput<ClusterInitialUser>(initialUser),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      maintenanceUpdatePolicy = pulumi.Input.asOptionalInput<ClusterMaintenanceUpdatePolicy>(maintenanceUpdatePolicy),
      migrationSources = pulumi.Input.asOptionalInput<List<ClusterMigrationSource>>(migrationSources),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkConfig = pulumi.Input.asOptionalInput<ClusterNetworkConfig>(networkConfig),
      project = pulumi.Input.asOptionalInput<String>(project),
      pscConfig = pulumi.Input.asOptionalInput<ClusterPscConfig>(pscConfig),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      reconciling = pulumi.Input.asOptionalInput<bool>(reconciling),
      restoreBackupSource = pulumi.Input.asOptionalInput<ClusterRestoreBackupSource>(restoreBackupSource),
      restoreContinuousBackupSource = pulumi.Input.asOptionalInput<ClusterRestoreContinuousBackupSource>(restoreContinuousBackupSource),
      secondaryConfig = pulumi.Input.asOptionalInput<ClusterSecondaryConfig>(secondaryConfig),
      skipAwaitMajorVersionUpgrade = pulumi.Input.asOptionalInput<bool>(skipAwaitMajorVersionUpgrade),
      state = pulumi.Input.asOptionalInput<String>(state),
      subscriptionType = pulumi.Input.asOptionalInput<String>(subscriptionType),
      trialMetadatas = pulumi.Input.asOptionalInput<List<ClusterTrialMetadata>>(trialMetadatas),
      uid = pulumi.Input.asOptionalInput<String>(uid);

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
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      automatedBackupPolicy: map['automatedBackupPolicy'] == null ? null : pulumi.Output.create<ClusterAutomatedBackupPolicy>(ClusterAutomatedBackupPolicy.fromMap((map['automatedBackupPolicy'] as Map).cast<String, dynamic>())),
      backupSources: map['backupSources'] == null ? null : pulumi.Output.create<List<ClusterBackupSource>>(pulumi.Input.decodeList<ClusterBackupSource>(map['backupSources'], (value) => ClusterBackupSource.fromMap((value as Map).cast<String, dynamic>()))),
      clusterId: map['clusterId'] == null ? null : pulumi.Output.create<String>(map['clusterId'] as String),
      clusterType: map['clusterType'] == null ? null : pulumi.Output.create<String>(map['clusterType'] as String),
      continuousBackupConfig: map['continuousBackupConfig'] == null ? null : pulumi.Output.create<ClusterContinuousBackupConfig>(ClusterContinuousBackupConfig.fromMap((map['continuousBackupConfig'] as Map).cast<String, dynamic>())),
      continuousBackupInfos: map['continuousBackupInfos'] == null ? null : pulumi.Output.create<List<ClusterContinuousBackupInfo>>(pulumi.Input.decodeList<ClusterContinuousBackupInfo>(map['continuousBackupInfos'], (value) => ClusterContinuousBackupInfo.fromMap((value as Map).cast<String, dynamic>()))),
      databaseVersion: map['databaseVersion'] == null ? null : pulumi.Output.create<String>(map['databaseVersion'] as String),
      deletionPolicy: map['deletionPolicy'] == null ? null : pulumi.Output.create<String>(map['deletionPolicy'] as String),
      deletionProtection: map['deletionProtection'] == null ? null : pulumi.Output.create<bool>(map['deletionProtection'] as bool),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveAnnotations'] as Map).cast<String, String>()),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      encryptionConfig: map['encryptionConfig'] == null ? null : pulumi.Output.create<ClusterEncryptionConfig>(ClusterEncryptionConfig.fromMap((map['encryptionConfig'] as Map).cast<String, dynamic>())),
      encryptionInfos: map['encryptionInfos'] == null ? null : pulumi.Output.create<List<ClusterEncryptionInfo>>(pulumi.Input.decodeList<ClusterEncryptionInfo>(map['encryptionInfos'], (value) => ClusterEncryptionInfo.fromMap((value as Map).cast<String, dynamic>()))),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      initialUser: map['initialUser'] == null ? null : pulumi.Output.create<ClusterInitialUser>(ClusterInitialUser.fromMap((map['initialUser'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      maintenanceUpdatePolicy: map['maintenanceUpdatePolicy'] == null ? null : pulumi.Output.create<ClusterMaintenanceUpdatePolicy>(ClusterMaintenanceUpdatePolicy.fromMap((map['maintenanceUpdatePolicy'] as Map).cast<String, dynamic>())),
      migrationSources: map['migrationSources'] == null ? null : pulumi.Output.create<List<ClusterMigrationSource>>(pulumi.Input.decodeList<ClusterMigrationSource>(map['migrationSources'], (value) => ClusterMigrationSource.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkConfig: map['networkConfig'] == null ? null : pulumi.Output.create<ClusterNetworkConfig>(ClusterNetworkConfig.fromMap((map['networkConfig'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pscConfig: map['pscConfig'] == null ? null : pulumi.Output.create<ClusterPscConfig>(ClusterPscConfig.fromMap((map['pscConfig'] as Map).cast<String, dynamic>())),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      reconciling: map['reconciling'] == null ? null : pulumi.Output.create<bool>(map['reconciling'] as bool),
      restoreBackupSource: map['restoreBackupSource'] == null ? null : pulumi.Output.create<ClusterRestoreBackupSource>(ClusterRestoreBackupSource.fromMap((map['restoreBackupSource'] as Map).cast<String, dynamic>())),
      restoreContinuousBackupSource: map['restoreContinuousBackupSource'] == null ? null : pulumi.Output.create<ClusterRestoreContinuousBackupSource>(ClusterRestoreContinuousBackupSource.fromMap((map['restoreContinuousBackupSource'] as Map).cast<String, dynamic>())),
      secondaryConfig: map['secondaryConfig'] == null ? null : pulumi.Output.create<ClusterSecondaryConfig>(ClusterSecondaryConfig.fromMap((map['secondaryConfig'] as Map).cast<String, dynamic>())),
      skipAwaitMajorVersionUpgrade: map['skipAwaitMajorVersionUpgrade'] == null ? null : pulumi.Output.create<bool>(map['skipAwaitMajorVersionUpgrade'] as bool),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      subscriptionType: map['subscriptionType'] == null ? null : pulumi.Output.create<String>(map['subscriptionType'] as String),
      trialMetadatas: map['trialMetadatas'] == null ? null : pulumi.Output.create<List<ClusterTrialMetadata>>(pulumi.Input.decodeList<ClusterTrialMetadata>(map['trialMetadatas'], (value) => ClusterTrialMetadata.fromMap((value as Map).cast<String, dynamic>()))),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
    );
  }
}

