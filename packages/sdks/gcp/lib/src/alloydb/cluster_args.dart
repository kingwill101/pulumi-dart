// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_automated_backup_policy.dart';
import 'cluster_continuous_backup_config.dart';
import 'cluster_encryption_config.dart';
import 'cluster_initial_user.dart';
import 'cluster_maintenance_update_policy.dart';
import 'cluster_network_config.dart';
import 'cluster_psc_config.dart';
import 'cluster_restore_backup_source.dart';
import 'cluster_restore_continuous_backup_source.dart';
import 'cluster_secondary_config.dart';

/// {@template pulumi_alloydb_cluster_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_alloydb_cluster_cluster_args_doc}
class ClusterArgs {
  /// Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;

  /// The automated backup policy for this cluster. AutomatedBackupPolicy is disabled by default.
  /// Structure is documented below.
  final pulumi.Input<ClusterAutomatedBackupPolicy>? automatedBackupPolicy;

  /// The ID of the alloydb cluster.
  final pulumi.Input<String> clusterId;

  /// The type of cluster. If not set, defaults to PRIMARY.
  /// Default value is `PRIMARY`.
  /// Possible values are: `PRIMARY`, `SECONDARY`.
  final pulumi.Input<String>? clusterType;

  /// The continuous backup config for this cluster.
  /// If no policy is provided then the default policy will be used. The default policy takes one backup a day and retains backups for 14 days.
  /// Structure is documented below.
  final pulumi.Input<ClusterContinuousBackupConfig>? continuousBackupConfig;

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

  /// EncryptionConfig describes the encryption config of a cluster or a backup that is encrypted with a CMEK (customer-managed encryption key).
  /// Structure is documented below.
  final pulumi.Input<ClusterEncryptionConfig>? encryptionConfig;

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
  final pulumi.Input<String> location;

  /// MaintenanceUpdatePolicy defines the policy for system updates.
  /// Structure is documented below.
  final pulumi.Input<ClusterMaintenanceUpdatePolicy>? maintenanceUpdatePolicy;

  /// Metadata related to network configuration.
  /// Structure is documented below.
  final pulumi.Input<ClusterNetworkConfig>? networkConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Configuration for Private Service Connect (PSC) for the cluster.
  /// Structure is documented below.
  final pulumi.Input<ClusterPscConfig>? pscConfig;

  /// The source when restoring from a backup. Conflicts with 'restore_continuous_backup_source', both can't be set together.
  /// Structure is documented below.
  final pulumi.Input<ClusterRestoreBackupSource>? restoreBackupSource;

  /// The source when restoring via point in time recovery (PITR). Conflicts with 'restore_backup_source', both can't be set together.
  /// Structure is documented below.
  final pulumi.Input<ClusterRestoreContinuousBackupSource>?
  restoreContinuousBackupSource;

  /// Configuration of the secondary cluster for Cross Region Replication. This should be set if and only if the cluster is of type SECONDARY.
  /// Structure is documented below.
  final pulumi.Input<ClusterSecondaryConfig>? secondaryConfig;

  /// Set to true to skip awaiting on the major version upgrade of the cluster.
  /// Possible values: true, false
  /// Default value: "true"
  final pulumi.Input<bool>? skipAwaitMajorVersionUpgrade;

  /// The subscrition type of cluster.
  /// Possible values are: `TRIAL`, `STANDARD`.
  final pulumi.Input<String>? subscriptionType;

  /// Creates a new [ClusterArgs].
  /// [annotations] Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
  /// [automatedBackupPolicy] The automated backup policy for this cluster. AutomatedBackupPolicy is disabled by default.
  /// [clusterId] The ID of the alloydb cluster.
  /// [clusterType] The type of cluster. If not set, defaults to PRIMARY.
  /// [continuousBackupConfig] The continuous backup config for this cluster.
  /// [databaseVersion] The database engine major version. This is an optional field and it's populated at the Cluster creation time.
  /// [deletionPolicy] Policy to determine if the cluster should be deleted forcefully.
  /// [deletionProtection] Optional.
  /// [displayName] User-settable and human-readable display name for the Cluster.
  /// [encryptionConfig] EncryptionConfig describes the encryption config of a cluster or a backup that is encrypted with a CMEK (customer-managed encryption key).
  /// [etag] For Resource freshness validation (https://google.aip.dev/154)
  /// [initialUser] Initial user to setup during cluster creation. If unset for new Clusters, a postgres role with null password is created. You will need to create additional users or set the password in order to log in.
  /// [labels] User-defined labels for the alloydb cluster.
  /// [location] The location where the alloydb cluster should reside.
  /// [maintenanceUpdatePolicy] MaintenanceUpdatePolicy defines the policy for system updates.
  /// [networkConfig] Metadata related to network configuration.
  /// [project] The ID of the project in which the resource belongs.
  /// [pscConfig] Configuration for Private Service Connect (PSC) for the cluster.
  /// [restoreBackupSource] The source when restoring from a backup. Conflicts with 'restore_continuous_backup_source', both can't be set together.
  /// [restoreContinuousBackupSource] The source when restoring via point in time recovery (PITR). Conflicts with 'restore_backup_source', both can't be set together.
  /// [secondaryConfig] Configuration of the secondary cluster for Cross Region Replication. This should be set if and only if the cluster is of type SECONDARY.
  /// [skipAwaitMajorVersionUpgrade] Set to true to skip awaiting on the major version upgrade of the cluster.
  /// [subscriptionType] The subscrition type of cluster.
  ClusterArgs({
    this.annotations,
    this.automatedBackupPolicy,
    required this.clusterId,
    this.clusterType,
    this.continuousBackupConfig,
    this.databaseVersion,
    this.deletionPolicy,
    this.deletionProtection,
    this.displayName,
    this.encryptionConfig,
    this.etag,
    this.initialUser,
    this.labels,
    required this.location,
    this.maintenanceUpdatePolicy,
    this.networkConfig,
    this.project,
    this.pscConfig,
    this.restoreBackupSource,
    this.restoreContinuousBackupSource,
    this.secondaryConfig,
    this.skipAwaitMajorVersionUpgrade,
    this.subscriptionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'automatedBackupPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterAutomatedBackupPolicy,
            Map<String, dynamic>
          >(automatedBackupPolicy, (value) => value.toMap()),
      'clusterId': clusterId,
      'clusterType': ?clusterType,
      'continuousBackupConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterContinuousBackupConfig,
            Map<String, dynamic>
          >(continuousBackupConfig, (value) => value.toMap()),
      'databaseVersion': ?databaseVersion,
      'deletionPolicy': ?deletionPolicy,
      'deletionProtection': ?deletionProtection,
      'displayName': ?displayName,
      'encryptionConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterEncryptionConfig,
            Map<String, dynamic>
          >(encryptionConfig, (value) => value.toMap()),
      'etag': ?etag,
      'initialUser':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterInitialUser,
            Map<String, dynamic>
          >(initialUser, (value) => value.toMap()),
      'labels': ?labels,
      'location': location,
      'maintenanceUpdatePolicy':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterMaintenanceUpdatePolicy,
            Map<String, dynamic>
          >(maintenanceUpdatePolicy, (value) => value.toMap()),
      'networkConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterNetworkConfig,
            Map<String, dynamic>
          >(networkConfig, (value) => value.toMap()),
      'project': ?project,
      'pscConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterPscConfig,
            Map<String, dynamic>
          >(pscConfig, (value) => value.toMap()),
      'restoreBackupSource':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterRestoreBackupSource,
            Map<String, dynamic>
          >(restoreBackupSource, (value) => value.toMap()),
      'restoreContinuousBackupSource':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterRestoreContinuousBackupSource,
            Map<String, dynamic>
          >(restoreContinuousBackupSource, (value) => value.toMap()),
      'secondaryConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterSecondaryConfig,
            Map<String, dynamic>
          >(secondaryConfig, (value) => value.toMap()),
      'skipAwaitMajorVersionUpgrade': ?skipAwaitMajorVersionUpgrade,
      'subscriptionType': ?subscriptionType,
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      annotations: (() {
        final guardedValue = map['annotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      automatedBackupPolicy: (() {
        final guardedValue = map['automatedBackupPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterAutomatedBackupPolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      clusterType: (() {
        final guardedValue = map['clusterType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      continuousBackupConfig: (() {
        final guardedValue = map['continuousBackupConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterContinuousBackupConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      databaseVersion: (() {
        final guardedValue = map['databaseVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deletionPolicy: (() {
        final guardedValue = map['deletionPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deletionProtection: (() {
        final guardedValue = map['deletionProtection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      encryptionConfig: (() {
        final guardedValue = map['encryptionConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterEncryptionConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      etag: (() {
        final guardedValue = map['etag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      initialUser: (() {
        final guardedValue = map['initialUser'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterInitialUser.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      maintenanceUpdatePolicy: (() {
        final guardedValue = map['maintenanceUpdatePolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterMaintenanceUpdatePolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      networkConfig: (() {
        final guardedValue = map['networkConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterNetworkConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pscConfig: (() {
        final guardedValue = map['pscConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterPscConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      restoreBackupSource: (() {
        final guardedValue = map['restoreBackupSource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterRestoreBackupSource.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      restoreContinuousBackupSource: (() {
        final guardedValue = map['restoreContinuousBackupSource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterRestoreContinuousBackupSource.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      secondaryConfig: (() {
        final guardedValue = map['secondaryConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterSecondaryConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      skipAwaitMajorVersionUpgrade: (() {
        final guardedValue = map['skipAwaitMajorVersionUpgrade'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      subscriptionType: (() {
        final guardedValue = map['subscriptionType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
