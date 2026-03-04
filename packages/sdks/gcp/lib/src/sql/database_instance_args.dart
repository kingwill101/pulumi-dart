// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_instance_clone.dart';
import 'database_instance_point_in_time_restore_context.dart';
import 'database_instance_replica_configuration.dart';
import 'database_instance_replication_cluster.dart';
import 'database_instance_restore_backup_context.dart';
import 'database_instance_settings.dart';

/// {@template pulumi_sql_database_instance_database_instance_args_doc}
/// The set of arguments for DatabaseInstance.
/// {@endtemplate}
/// {@macro pulumi_sql_database_instance_database_instance_args_doc}
class DatabaseInstanceArgs {
  /// The name of the BackupDR backup to restore from.
  final pulumi.Input<String>? backupdrBackup;

  /// The context needed to create this instance as a clone of another instance. When this field is set during
  /// resource creation, this provider will attempt to clone another instance as indicated in the context. The
  /// configuration is detailed below.
  final pulumi.Input<DatabaseInstanceClone>? clone;

  /// The MySQL, PostgreSQL or
  /// SQL Server version to use. Supported values include `MYSQL_5_6`,
  /// `MYSQL_5_7`, `MYSQL_8_0`, `MYSQL_8_4`, `POSTGRES_9_6`,`POSTGRES_10`, `POSTGRES_11`,
  /// `POSTGRES_12`, `POSTGRES_13`, `POSTGRES_14`, `POSTGRES_15`, `POSTGRES_16`, `POSTGRES_17`,
  /// `SQLSERVER_2017_STANDARD`, `SQLSERVER_2017_ENTERPRISE`, `SQLSERVER_2017_EXPRESS`, `SQLSERVER_2017_WEB`.
  /// `SQLSERVER_2019_STANDARD`, `SQLSERVER_2019_ENTERPRISE`, `SQLSERVER_2019_EXPRESS`,
  /// `SQLSERVER_2019_WEB`.
  /// [Database Version Policies](https://cloud.google.com/sql/docs/db-versions)
  /// includes an up-to-date reference of supported versions.
  final pulumi.Input<String> databaseVersion;

  /// Whether or not to allow the provider to destroy the instance. Unless this field is set to false
  /// in state, a `destroy` or `update` command that deletes the instance will fail. Defaults to `true`.
  ///
  /// &gt; **NOTE:** This flag only protects instances from deletion within Pulumi. To protect your instances from accidental deletion across all surfaces (API, gcloud, Cloud Console and Pulumi), use the API flag `settings.deletion_protection_enabled`.
  final pulumi.Input<bool>? deletionProtection;

  /// The full path to the encryption key used for the CMEK disk encryption.  Setting
  /// up disk encryption currently requires manual steps outside of this provider.
  /// The provided key must be in the same region as the SQL instance.  In order
  /// to use this feature, a special kind of service account must be created and
  /// granted permission on this key.  This step can currently only be done
  /// manually, please see [this step](https://cloud.google.com/sql/docs/mysql/configure-cmek#service-account).
  /// That service account needs the `Cloud KMS &gt; Cloud KMS CryptoKey Encrypter/Decrypter` role on your
  /// key - please see [this step](https://cloud.google.com/sql/docs/mysql/configure-cmek#grantkey).
  final pulumi.Input<String>? encryptionKeyName;

  /// The description of final backup. Only set this field when `final_backup_config.enabled` is true.
  final pulumi.Input<String>? finalBackupDescription;

  /// The type of the instance. See [API reference for SqlInstanceType](https://cloud.google.com/sql/docs/mysql/admin-api/rest/v1/instances#SqlInstanceType) for supported values.
  final pulumi.Input<String>? instanceType;

  /// The current software version on the instance. This attribute can not be set during creation. Refer to `available_maintenance_versions` attribute to see what `maintenance_version` are available for upgrade. When this attribute gets updated, it will cause an instance restart. Setting a `maintenance_version` value that is older than the current one on the instance will be ignored.
  final pulumi.Input<String>? maintenanceVersion;

  /// The name of the existing instance that will
  /// act as the master in the replication setup. Note, this requires the master to
  /// have `binary_log_enabled` set, as well as existing backups.
  final pulumi.Input<String>? masterInstanceName;

  /// The name of the instance. If the name is left
  /// blank, the provider will randomly generate one when the instance is first
  /// created. This is done because after a name is used, it cannot be reused for
  /// up to [one week](https://cloud.google.com/sql/docs/delete-instance).
  final pulumi.Input<String>? name;

  /// For a read pool instance, the number of nodes in the read pool. For read pools with auto scaling enabled, this field is read only.
  final pulumi.Input<int>? nodeCount;

  /// Configuration for creating a new instance using point-in-time-restore from backupdr backup.
  final pulumi.Input<DatabaseInstancePointInTimeRestoreContext>?
  pointInTimeRestoreContext;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The region the instance will sit in. If a region is not provided in the resource definition,
  /// the provider region will be used instead.
  ///
  /// - - -
  final pulumi.Input<String>? region;

  /// The configuration for replication. The
  /// configuration is detailed below.
  final pulumi.Input<DatabaseInstanceReplicaConfiguration>?
  replicaConfiguration;

  /// List of replica names. Can be updated.
  final pulumi.Input<List<String>>? replicaNames;

  /// A primary instance and disaster recovery replica pair. Applicable to MySQL and PostgreSQL. This field can be set if the primary has psa_write_endpoint set or both the primary and replica are created.
  final pulumi.Input<DatabaseInstanceReplicationCluster>? replicationCluster;

  /// The context needed to restore the database to a backup run. This field will
  /// cause the provider to trigger the database to restore from the backup run indicated. The configuration is detailed below.
  /// **NOTE:** Restoring from a backup is an imperative action and not recommended via this provider. Adding or modifying this
  /// block during resource creation/update will trigger the restore action after the resource is created/updated.
  final pulumi.Input<DatabaseInstanceRestoreBackupContext>?
  restoreBackupContext;

  /// Initial root password. Can be updated. Required for MS SQL Server.
  final pulumi.Input<String>? rootPassword;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Initial root password. Can be updated. Required for MS SQL Server. **Note**: This property is write-only and will not be read from the API.
  ///
  /// &gt; **Note:** One of `root_password` or `root_password_wo` can only be set.
  final pulumi.Input<String>? rootPasswordWo;

  /// Triggers update of `root_password_wo` write-only. Increment this value when an update to `root_password_wo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  final pulumi.Input<String>? rootPasswordWoVersion;

  /// The settings to use for the database. The
  /// configuration is detailed below. Required if `clone` is not set.
  final pulumi.Input<DatabaseInstanceSettings>? settings;

  /// Creates a new [DatabaseInstanceArgs].
  /// [backupdrBackup] The name of the BackupDR backup to restore from.
  /// [clone] The context needed to create this instance as a clone of another instance. When this field is set during
  /// [databaseVersion] The MySQL, PostgreSQL or
  /// [deletionProtection] Whether or not to allow the provider to destroy the instance. Unless this field is set to false
  /// [encryptionKeyName] The full path to the encryption key used for the CMEK disk encryption.  Setting
  /// [finalBackupDescription] The description of final backup. Only set this field when `final_backup_config.enabled` is true.
  /// [instanceType] The type of the instance. See [API reference for SqlInstanceType](https://cloud.google.com/sql/docs/mysql/admin-api/rest/v1/instances#SqlInstanceType) for supported values.
  /// [maintenanceVersion] The current software version on the instance. This attribute can not be set during creation. Refer to `available_maintenance_versions` attribute to see what `maintenance_version` are available for upgrade. When this attribute gets updated, it will cause an instance restart. Setting a `maintenance_version` value that is older than the current one on the instance will be ignored.
  /// [masterInstanceName] The name of the existing instance that will
  /// [name] The name of the instance. If the name is left
  /// [nodeCount] For a read pool instance, the number of nodes in the read pool. For read pools with auto scaling enabled, this field is read only.
  /// [pointInTimeRestoreContext] Configuration for creating a new instance using point-in-time-restore from backupdr backup.
  /// [project] The ID of the project in which the resource belongs. If it
  /// [region] The region the instance will sit in. If a region is not provided in the resource definition,
  /// [replicaConfiguration] The configuration for replication. The
  /// [replicaNames] List of replica names. Can be updated.
  /// [replicationCluster] A primary instance and disaster recovery replica pair. Applicable to MySQL and PostgreSQL. This field can be set if the primary has psa_write_endpoint set or both the primary and replica are created.
  /// [restoreBackupContext] The context needed to restore the database to a backup run. This field will
  /// [rootPassword] Initial root password. Can be updated. Required for MS SQL Server.
  /// [rootPasswordWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [rootPasswordWoVersion] Triggers update of `root_password_wo` write-only. Increment this value when an update to `root_password_wo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  /// [settings] The settings to use for the database. The
  DatabaseInstanceArgs({
    this.backupdrBackup,
    this.clone,
    required this.databaseVersion,
    this.deletionProtection,
    this.encryptionKeyName,
    this.finalBackupDescription,
    this.instanceType,
    this.maintenanceVersion,
    this.masterInstanceName,
    this.name,
    this.nodeCount,
    this.pointInTimeRestoreContext,
    this.project,
    this.region,
    this.replicaConfiguration,
    this.replicaNames,
    this.replicationCluster,
    this.restoreBackupContext,
    this.rootPassword,
    this.rootPasswordWo,
    this.rootPasswordWoVersion,
    this.settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupdrBackup': ?backupdrBackup,
      'clone':
          ?pulumi.Input.mapOptionalInputValue<
            DatabaseInstanceClone,
            Map<String, dynamic>
          >(clone, (value) => value.toMap()),
      'databaseVersion': databaseVersion,
      'deletionProtection': ?deletionProtection,
      'encryptionKeyName': ?encryptionKeyName,
      'finalBackupDescription': ?finalBackupDescription,
      'instanceType': ?instanceType,
      'maintenanceVersion': ?maintenanceVersion,
      'masterInstanceName': ?masterInstanceName,
      'name': ?name,
      'nodeCount': ?nodeCount,
      'pointInTimeRestoreContext':
          ?pulumi.Input.mapOptionalInputValue<
            DatabaseInstancePointInTimeRestoreContext,
            Map<String, dynamic>
          >(pointInTimeRestoreContext, (value) => value.toMap()),
      'project': ?project,
      'region': ?region,
      'replicaConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            DatabaseInstanceReplicaConfiguration,
            Map<String, dynamic>
          >(replicaConfiguration, (value) => value.toMap()),
      'replicaNames': ?replicaNames,
      'replicationCluster':
          ?pulumi.Input.mapOptionalInputValue<
            DatabaseInstanceReplicationCluster,
            Map<String, dynamic>
          >(replicationCluster, (value) => value.toMap()),
      'restoreBackupContext':
          ?pulumi.Input.mapOptionalInputValue<
            DatabaseInstanceRestoreBackupContext,
            Map<String, dynamic>
          >(restoreBackupContext, (value) => value.toMap()),
      'rootPassword': ?rootPassword,
      'rootPasswordWo': ?rootPasswordWo,
      'rootPasswordWoVersion': ?rootPasswordWoVersion,
      'settings':
          ?pulumi.Input.mapOptionalInputValue<
            DatabaseInstanceSettings,
            Map<String, dynamic>
          >(settings, (value) => value.toMap()),
    };
  }

  factory DatabaseInstanceArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseInstanceArgs(
      backupdrBackup: (() {
        final guardedValue = map['backupdrBackup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clone: (() {
        final guardedValue = map['clone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DatabaseInstanceClone.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      databaseVersion: pulumi.Input.fromValue(map['databaseVersion'] as String),
      deletionProtection: (() {
        final guardedValue = map['deletionProtection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      encryptionKeyName: (() {
        final guardedValue = map['encryptionKeyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      finalBackupDescription: (() {
        final guardedValue = map['finalBackupDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceType: (() {
        final guardedValue = map['instanceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      maintenanceVersion: (() {
        final guardedValue = map['maintenanceVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      masterInstanceName: (() {
        final guardedValue = map['masterInstanceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nodeCount: (() {
        final guardedValue = map['nodeCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      pointInTimeRestoreContext: (() {
        final guardedValue = map['pointInTimeRestoreContext'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DatabaseInstancePointInTimeRestoreContext.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      replicaConfiguration: (() {
        final guardedValue = map['replicaConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DatabaseInstanceReplicaConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      replicaNames: (() {
        final guardedValue = map['replicaNames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      replicationCluster: (() {
        final guardedValue = map['replicationCluster'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DatabaseInstanceReplicationCluster.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      restoreBackupContext: (() {
        final guardedValue = map['restoreBackupContext'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DatabaseInstanceRestoreBackupContext.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      rootPassword: (() {
        final guardedValue = map['rootPassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rootPasswordWo: (() {
        final guardedValue = map['rootPasswordWo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rootPasswordWoVersion: (() {
        final guardedValue = map['rootPasswordWoVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      settings: (() {
        final guardedValue = map['settings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DatabaseInstanceSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
