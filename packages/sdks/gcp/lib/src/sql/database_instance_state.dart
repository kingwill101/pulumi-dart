// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_instance_clone.dart';
import 'database_instance_dns_name.dart';
import 'database_instance_ip_address.dart';
import 'database_instance_point_in_time_restore_context.dart';
import 'database_instance_replica_configuration.dart';
import 'database_instance_replication_cluster.dart';
import 'database_instance_restore_backup_context.dart';
import 'database_instance_server_ca_cert.dart';
import 'database_instance_settings.dart';

/// Input properties used for looking up and filtering DatabaseInstance resources.
class DatabaseInstanceState {
  /// The list of all maintenance versions applicable on the instance.
  final pulumi.Input<List<String>>? availableMaintenanceVersions;
  /// The name of the BackupDR backup to restore from.
  final pulumi.Input<String>? backupdrBackup;
  /// The context needed to create this instance as a clone of another instance. When this field is set during
  /// resource creation, this provider will attempt to clone another instance as indicated in the context. The
  /// configuration is detailed below.
  final pulumi.Input<DatabaseInstanceClone>? clone;
  /// The connection name of the instance to be used in
  /// connection strings. For example, when connecting with [Cloud SQL Proxy](https://cloud.google.com/sql/docs/mysql/connect-admin-proxy).
  final pulumi.Input<String>? connectionName;
  /// The MySQL, PostgreSQL or
  /// SQL Server version to use. Supported values include `MYSQL_5_6`,
  /// `MYSQL_5_7`, `MYSQL_8_0`, `MYSQL_8_4`, `POSTGRES_9_6`,`POSTGRES_10`, `POSTGRES_11`,
  /// `POSTGRES_12`, `POSTGRES_13`, `POSTGRES_14`, `POSTGRES_15`, `POSTGRES_16`, `POSTGRES_17`,
  /// `SQLSERVER_2017_STANDARD`, `SQLSERVER_2017_ENTERPRISE`, `SQLSERVER_2017_EXPRESS`, `SQLSERVER_2017_WEB`.
  /// `SQLSERVER_2019_STANDARD`, `SQLSERVER_2019_ENTERPRISE`, `SQLSERVER_2019_EXPRESS`,
  /// `SQLSERVER_2019_WEB`.
  /// [Database Version Policies](https://cloud.google.com/sql/docs/db-versions)
  /// includes an up-to-date reference of supported versions.
  final pulumi.Input<String>? databaseVersion;
  /// Whether or not to allow the provider to destroy the instance. Unless this field is set to false
  /// in state, a `destroy` or `update` command that deletes the instance will fail. Defaults to `true`.
  ///
  /// > **NOTE:** This flag only protects instances from deletion within Pulumi. To protect your instances from accidental deletion across all surfaces (API, gcloud, Cloud Console and Pulumi), use the API flag `settings.deletion_protection_enabled`.
  final pulumi.Input<bool>? deletionProtection;
  /// The DNS name of the instance. See [Connect to an instance using Private Service Connect](https://cloud.google.com/sql/docs/mysql/configure-private-service-connect#view-summary-information-cloud-sql-instances-psc-enabled) for more details.
  final pulumi.Input<String>? dnsName;
  /// The list of DNS names used by this instance. Different connection types for an instance may have different DNS names. DNS names can apply to an individual instance or a cluster of instances.
  final pulumi.Input<List<DatabaseInstanceDnsName>>? dnsNames;
  /// The full path to the encryption key used for the CMEK disk encryption.  Setting
  /// up disk encryption currently requires manual steps outside of this provider.
  /// The provided key must be in the same region as the SQL instance.  In order
  /// to use this feature, a special kind of service account must be created and
  /// granted permission on this key.  This step can currently only be done
  /// manually, please see [this step](https://cloud.google.com/sql/docs/mysql/configure-cmek#service-account).
  /// That service account needs the `Cloud KMS > Cloud KMS CryptoKey Encrypter/Decrypter` role on your
  /// key - please see [this step](https://cloud.google.com/sql/docs/mysql/configure-cmek#grantkey).
  final pulumi.Input<String>? encryptionKeyName;
  /// The description of final backup. Only set this field when `final_backup_config.enabled` is true.
  final pulumi.Input<String>? finalBackupDescription;
  /// The first IPv4 address of any type assigned.
  final pulumi.Input<String>? firstIpAddress;
  /// The type of the instance. See [API reference for SqlInstanceType](https://cloud.google.com/sql/docs/mysql/admin-api/rest/v1/instances#SqlInstanceType) for supported values.
  final pulumi.Input<String>? instanceType;
  final pulumi.Input<List<DatabaseInstanceIpAddress>>? ipAddresses;
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
  final pulumi.Input<DatabaseInstancePointInTimeRestoreContext>? pointInTimeRestoreContext;
  /// The first private (`PRIVATE`) IPv4 address assigned.
  final pulumi.Input<String>? privateIpAddress;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// the URI that points to the service attachment of the instance.
  final pulumi.Input<String>? pscServiceAttachmentLink;
  /// The first public (`PRIMARY`) IPv4 address assigned.
  final pulumi.Input<String>? publicIpAddress;
  /// The region the instance will sit in. If a region is not provided in the resource definition,
  /// the provider region will be used instead.
  ///
  /// - - -
  final pulumi.Input<String>? region;
  /// The configuration for replication. The
  /// configuration is detailed below.
  final pulumi.Input<DatabaseInstanceReplicaConfiguration>? replicaConfiguration;
  /// List of replica names. Can be updated.
  final pulumi.Input<List<String>>? replicaNames;
  /// A primary instance and disaster recovery replica pair. Applicable to MySQL and PostgreSQL. This field can be set if the primary has psa_write_endpoint set or both the primary and replica are created.
  final pulumi.Input<DatabaseInstanceReplicationCluster>? replicationCluster;
  /// The context needed to restore the database to a backup run. This field will
  /// cause the provider to trigger the database to restore from the backup run indicated. The configuration is detailed below.
  /// **NOTE:** Restoring from a backup is an imperative action and not recommended via this provider. Adding or modifying this
  /// block during resource creation/update will trigger the restore action after the resource is created/updated.
  final pulumi.Input<DatabaseInstanceRestoreBackupContext>? restoreBackupContext;
  /// Initial root password. Can be updated. Required for MS SQL Server.
  final pulumi.Input<String>? rootPassword;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Initial root password. Can be updated. Required for MS SQL Server. **Note**: This property is write-only and will not be read from the API.
  ///
  /// > **Note:** One of `root_password` or `root_password_wo` can only be set.
  final pulumi.Input<String>? rootPasswordWo;
  /// Triggers update of `root_password_wo` write-only. Increment this value when an update to `root_password_wo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  final pulumi.Input<String>? rootPasswordWoVersion;
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;
  final pulumi.Input<List<DatabaseInstanceServerCaCert>>? serverCaCerts;
  /// The service account email address assigned to the
  /// instance.
  final pulumi.Input<String>? serviceAccountEmailAddress;
  /// The settings to use for the database. The
  /// configuration is detailed below. Required if `clone` is not set.
  final pulumi.Input<DatabaseInstanceSettings>? settings;

  /// Creates a new [DatabaseInstanceState].
  /// [availableMaintenanceVersions] The list of all maintenance versions applicable on the instance.
  /// [backupdrBackup] The name of the BackupDR backup to restore from.
  /// [clone] The context needed to create this instance as a clone of another instance. When this field is set during
  /// [connectionName] The connection name of the instance to be used in
  /// [databaseVersion] The MySQL, PostgreSQL or
  /// [deletionProtection] Whether or not to allow the provider to destroy the instance. Unless this field is set to false
  /// [dnsName] The DNS name of the instance. See [Connect to an instance using Private Service Connect](https://cloud.google.com/sql/docs/mysql/configure-private-service-connect#view-summary-information-cloud-sql-instances-psc-enabled) for more details.
  /// [dnsNames] The list of DNS names used by this instance. Different connection types for an instance may have different DNS names. DNS names can apply to an individual instance or a cluster of instances.
  /// [encryptionKeyName] The full path to the encryption key used for the CMEK disk encryption.  Setting
  /// [finalBackupDescription] The description of final backup. Only set this field when `final_backup_config.enabled` is true.
  /// [firstIpAddress] The first IPv4 address of any type assigned.
  /// [instanceType] The type of the instance. See [API reference for SqlInstanceType](https://cloud.google.com/sql/docs/mysql/admin-api/rest/v1/instances#SqlInstanceType) for supported values.
  /// [ipAddresses] Optional.
  /// [maintenanceVersion] The current software version on the instance. This attribute can not be set during creation. Refer to `available_maintenance_versions` attribute to see what `maintenance_version` are available for upgrade. When this attribute gets updated, it will cause an instance restart. Setting a `maintenance_version` value that is older than the current one on the instance will be ignored.
  /// [masterInstanceName] The name of the existing instance that will
  /// [name] The name of the instance. If the name is left
  /// [nodeCount] For a read pool instance, the number of nodes in the read pool. For read pools with auto scaling enabled, this field is read only.
  /// [pointInTimeRestoreContext] Configuration for creating a new instance using point-in-time-restore from backupdr backup.
  /// [privateIpAddress] The first private (`PRIVATE`) IPv4 address assigned.
  /// [project] The ID of the project in which the resource belongs. If it
  /// [pscServiceAttachmentLink] the URI that points to the service attachment of the instance.
  /// [publicIpAddress] The first public (`PRIMARY`) IPv4 address assigned.
  /// [region] The region the instance will sit in. If a region is not provided in the resource definition,
  /// [replicaConfiguration] The configuration for replication. The
  /// [replicaNames] List of replica names. Can be updated.
  /// [replicationCluster] A primary instance and disaster recovery replica pair. Applicable to MySQL and PostgreSQL. This field can be set if the primary has psa_write_endpoint set or both the primary and replica are created.
  /// [restoreBackupContext] The context needed to restore the database to a backup run. This field will
  /// [rootPassword] Initial root password. Can be updated. Required for MS SQL Server.
  /// [rootPasswordWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [rootPasswordWoVersion] Triggers update of `root_password_wo` write-only. Increment this value when an update to `root_password_wo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  /// [selfLink] The URI of the created resource.
  /// [serverCaCerts] Optional.
  /// [serviceAccountEmailAddress] The service account email address assigned to the
  /// [settings] The settings to use for the database. The
  DatabaseInstanceState({
    pulumi.Output<List<String>>? availableMaintenanceVersions,
    pulumi.Output<String>? backupdrBackup,
    pulumi.Output<DatabaseInstanceClone>? clone,
    pulumi.Output<String>? connectionName,
    pulumi.Output<String>? databaseVersion,
    pulumi.Output<bool>? deletionProtection,
    pulumi.Output<String>? dnsName,
    pulumi.Output<List<DatabaseInstanceDnsName>>? dnsNames,
    pulumi.Output<String>? encryptionKeyName,
    pulumi.Output<String>? finalBackupDescription,
    pulumi.Output<String>? firstIpAddress,
    pulumi.Output<String>? instanceType,
    pulumi.Output<List<DatabaseInstanceIpAddress>>? ipAddresses,
    pulumi.Output<String>? maintenanceVersion,
    pulumi.Output<String>? masterInstanceName,
    pulumi.Output<String>? name,
    pulumi.Output<int>? nodeCount,
    pulumi.Output<DatabaseInstancePointInTimeRestoreContext>? pointInTimeRestoreContext,
    pulumi.Output<String>? privateIpAddress,
    pulumi.Output<String>? project,
    pulumi.Output<String>? pscServiceAttachmentLink,
    pulumi.Output<String>? publicIpAddress,
    pulumi.Output<String>? region,
    pulumi.Output<DatabaseInstanceReplicaConfiguration>? replicaConfiguration,
    pulumi.Output<List<String>>? replicaNames,
    pulumi.Output<DatabaseInstanceReplicationCluster>? replicationCluster,
    pulumi.Output<DatabaseInstanceRestoreBackupContext>? restoreBackupContext,
    pulumi.Output<String>? rootPassword,
    pulumi.Output<String>? rootPasswordWo,
    pulumi.Output<String>? rootPasswordWoVersion,
    pulumi.Output<String>? selfLink,
    pulumi.Output<List<DatabaseInstanceServerCaCert>>? serverCaCerts,
    pulumi.Output<String>? serviceAccountEmailAddress,
    pulumi.Output<DatabaseInstanceSettings>? settings,
  }) :
      availableMaintenanceVersions = pulumi.Input.asOptionalInput<List<String>>(availableMaintenanceVersions),
      backupdrBackup = pulumi.Input.asOptionalInput<String>(backupdrBackup),
      clone = pulumi.Input.asOptionalInput<DatabaseInstanceClone>(clone),
      connectionName = pulumi.Input.asOptionalInput<String>(connectionName),
      databaseVersion = pulumi.Input.asOptionalInput<String>(databaseVersion),
      deletionProtection = pulumi.Input.asOptionalInput<bool>(deletionProtection),
      dnsName = pulumi.Input.asOptionalInput<String>(dnsName),
      dnsNames = pulumi.Input.asOptionalInput<List<DatabaseInstanceDnsName>>(dnsNames),
      encryptionKeyName = pulumi.Input.asOptionalInput<String>(encryptionKeyName),
      finalBackupDescription = pulumi.Input.asOptionalInput<String>(finalBackupDescription),
      firstIpAddress = pulumi.Input.asOptionalInput<String>(firstIpAddress),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      ipAddresses = pulumi.Input.asOptionalInput<List<DatabaseInstanceIpAddress>>(ipAddresses),
      maintenanceVersion = pulumi.Input.asOptionalInput<String>(maintenanceVersion),
      masterInstanceName = pulumi.Input.asOptionalInput<String>(masterInstanceName),
      name = pulumi.Input.asOptionalInput<String>(name),
      nodeCount = pulumi.Input.asOptionalInput<int>(nodeCount),
      pointInTimeRestoreContext = pulumi.Input.asOptionalInput<DatabaseInstancePointInTimeRestoreContext>(pointInTimeRestoreContext),
      privateIpAddress = pulumi.Input.asOptionalInput<String>(privateIpAddress),
      project = pulumi.Input.asOptionalInput<String>(project),
      pscServiceAttachmentLink = pulumi.Input.asOptionalInput<String>(pscServiceAttachmentLink),
      publicIpAddress = pulumi.Input.asOptionalInput<String>(publicIpAddress),
      region = pulumi.Input.asOptionalInput<String>(region),
      replicaConfiguration = pulumi.Input.asOptionalInput<DatabaseInstanceReplicaConfiguration>(replicaConfiguration),
      replicaNames = pulumi.Input.asOptionalInput<List<String>>(replicaNames),
      replicationCluster = pulumi.Input.asOptionalInput<DatabaseInstanceReplicationCluster>(replicationCluster),
      restoreBackupContext = pulumi.Input.asOptionalInput<DatabaseInstanceRestoreBackupContext>(restoreBackupContext),
      rootPassword = pulumi.Input.asOptionalInput<String>(rootPassword),
      rootPasswordWo = pulumi.Input.asOptionalInput<String>(rootPasswordWo),
      rootPasswordWoVersion = pulumi.Input.asOptionalInput<String>(rootPasswordWoVersion),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink),
      serverCaCerts = pulumi.Input.asOptionalInput<List<DatabaseInstanceServerCaCert>>(serverCaCerts),
      serviceAccountEmailAddress = pulumi.Input.asOptionalInput<String>(serviceAccountEmailAddress),
      settings = pulumi.Input.asOptionalInput<DatabaseInstanceSettings>(settings);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableMaintenanceVersions': ?availableMaintenanceVersions,
      'backupdrBackup': ?backupdrBackup,
      'clone': ?pulumi.Input.mapOptionalInputValue<DatabaseInstanceClone, Map<String, dynamic>>(clone, (value) => value.toMap()),
      'connectionName': ?connectionName,
      'databaseVersion': ?databaseVersion,
      'deletionProtection': ?deletionProtection,
      'dnsName': ?dnsName,
      'dnsNames': ?pulumi.Input.mapOptionalInputValue<List<DatabaseInstanceDnsName>, List<Map<String, dynamic>>>(dnsNames, (value) => pulumi.Input.encodeList<DatabaseInstanceDnsName, Map<String, dynamic>>(value, (value) => value.toMap())),
      'encryptionKeyName': ?encryptionKeyName,
      'finalBackupDescription': ?finalBackupDescription,
      'firstIpAddress': ?firstIpAddress,
      'instanceType': ?instanceType,
      'ipAddresses': ?pulumi.Input.mapOptionalInputValue<List<DatabaseInstanceIpAddress>, List<Map<String, dynamic>>>(ipAddresses, (value) => pulumi.Input.encodeList<DatabaseInstanceIpAddress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maintenanceVersion': ?maintenanceVersion,
      'masterInstanceName': ?masterInstanceName,
      'name': ?name,
      'nodeCount': ?nodeCount,
      'pointInTimeRestoreContext': ?pulumi.Input.mapOptionalInputValue<DatabaseInstancePointInTimeRestoreContext, Map<String, dynamic>>(pointInTimeRestoreContext, (value) => value.toMap()),
      'privateIpAddress': ?privateIpAddress,
      'project': ?project,
      'pscServiceAttachmentLink': ?pscServiceAttachmentLink,
      'publicIpAddress': ?publicIpAddress,
      'region': ?region,
      'replicaConfiguration': ?pulumi.Input.mapOptionalInputValue<DatabaseInstanceReplicaConfiguration, Map<String, dynamic>>(replicaConfiguration, (value) => value.toMap()),
      'replicaNames': ?replicaNames,
      'replicationCluster': ?pulumi.Input.mapOptionalInputValue<DatabaseInstanceReplicationCluster, Map<String, dynamic>>(replicationCluster, (value) => value.toMap()),
      'restoreBackupContext': ?pulumi.Input.mapOptionalInputValue<DatabaseInstanceRestoreBackupContext, Map<String, dynamic>>(restoreBackupContext, (value) => value.toMap()),
      'rootPassword': ?rootPassword,
      'rootPasswordWo': ?rootPasswordWo,
      'rootPasswordWoVersion': ?rootPasswordWoVersion,
      'selfLink': ?selfLink,
      'serverCaCerts': ?pulumi.Input.mapOptionalInputValue<List<DatabaseInstanceServerCaCert>, List<Map<String, dynamic>>>(serverCaCerts, (value) => pulumi.Input.encodeList<DatabaseInstanceServerCaCert, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceAccountEmailAddress': ?serviceAccountEmailAddress,
      'settings': ?pulumi.Input.mapOptionalInputValue<DatabaseInstanceSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
    };
  }

  factory DatabaseInstanceState.fromMap(Map<String, dynamic> map) {
    return DatabaseInstanceState(
      availableMaintenanceVersions: map['availableMaintenanceVersions'] == null ? null : pulumi.Output.create<List<String>>((map['availableMaintenanceVersions'] as List).cast<String>()),
      backupdrBackup: map['backupdrBackup'] == null ? null : pulumi.Output.create<String>(map['backupdrBackup'] as String),
      clone: map['clone'] == null ? null : pulumi.Output.create<DatabaseInstanceClone>(DatabaseInstanceClone.fromMap((map['clone'] as Map).cast<String, dynamic>())),
      connectionName: map['connectionName'] == null ? null : pulumi.Output.create<String>(map['connectionName'] as String),
      databaseVersion: map['databaseVersion'] == null ? null : pulumi.Output.create<String>(map['databaseVersion'] as String),
      deletionProtection: map['deletionProtection'] == null ? null : pulumi.Output.create<bool>(map['deletionProtection'] as bool),
      dnsName: map['dnsName'] == null ? null : pulumi.Output.create<String>(map['dnsName'] as String),
      dnsNames: map['dnsNames'] == null ? null : pulumi.Output.create<List<DatabaseInstanceDnsName>>(pulumi.Input.decodeList<DatabaseInstanceDnsName>(map['dnsNames'], (value) => DatabaseInstanceDnsName.fromMap((value as Map).cast<String, dynamic>()))),
      encryptionKeyName: map['encryptionKeyName'] == null ? null : pulumi.Output.create<String>(map['encryptionKeyName'] as String),
      finalBackupDescription: map['finalBackupDescription'] == null ? null : pulumi.Output.create<String>(map['finalBackupDescription'] as String),
      firstIpAddress: map['firstIpAddress'] == null ? null : pulumi.Output.create<String>(map['firstIpAddress'] as String),
      instanceType: map['instanceType'] == null ? null : pulumi.Output.create<String>(map['instanceType'] as String),
      ipAddresses: map['ipAddresses'] == null ? null : pulumi.Output.create<List<DatabaseInstanceIpAddress>>(pulumi.Input.decodeList<DatabaseInstanceIpAddress>(map['ipAddresses'], (value) => DatabaseInstanceIpAddress.fromMap((value as Map).cast<String, dynamic>()))),
      maintenanceVersion: map['maintenanceVersion'] == null ? null : pulumi.Output.create<String>(map['maintenanceVersion'] as String),
      masterInstanceName: map['masterInstanceName'] == null ? null : pulumi.Output.create<String>(map['masterInstanceName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nodeCount: map['nodeCount'] == null ? null : pulumi.Output.create<int>(map['nodeCount'] as int),
      pointInTimeRestoreContext: map['pointInTimeRestoreContext'] == null ? null : pulumi.Output.create<DatabaseInstancePointInTimeRestoreContext>(DatabaseInstancePointInTimeRestoreContext.fromMap((map['pointInTimeRestoreContext'] as Map).cast<String, dynamic>())),
      privateIpAddress: map['privateIpAddress'] == null ? null : pulumi.Output.create<String>(map['privateIpAddress'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pscServiceAttachmentLink: map['pscServiceAttachmentLink'] == null ? null : pulumi.Output.create<String>(map['pscServiceAttachmentLink'] as String),
      publicIpAddress: map['publicIpAddress'] == null ? null : pulumi.Output.create<String>(map['publicIpAddress'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      replicaConfiguration: map['replicaConfiguration'] == null ? null : pulumi.Output.create<DatabaseInstanceReplicaConfiguration>(DatabaseInstanceReplicaConfiguration.fromMap((map['replicaConfiguration'] as Map).cast<String, dynamic>())),
      replicaNames: map['replicaNames'] == null ? null : pulumi.Output.create<List<String>>((map['replicaNames'] as List).cast<String>()),
      replicationCluster: map['replicationCluster'] == null ? null : pulumi.Output.create<DatabaseInstanceReplicationCluster>(DatabaseInstanceReplicationCluster.fromMap((map['replicationCluster'] as Map).cast<String, dynamic>())),
      restoreBackupContext: map['restoreBackupContext'] == null ? null : pulumi.Output.create<DatabaseInstanceRestoreBackupContext>(DatabaseInstanceRestoreBackupContext.fromMap((map['restoreBackupContext'] as Map).cast<String, dynamic>())),
      rootPassword: map['rootPassword'] == null ? null : pulumi.Output.create<String>(map['rootPassword'] as String),
      rootPasswordWo: map['rootPasswordWo'] == null ? null : pulumi.Output.create<String>(map['rootPasswordWo'] as String),
      rootPasswordWoVersion: map['rootPasswordWoVersion'] == null ? null : pulumi.Output.create<String>(map['rootPasswordWoVersion'] as String),
      selfLink: map['selfLink'] == null ? null : pulumi.Output.create<String>(map['selfLink'] as String),
      serverCaCerts: map['serverCaCerts'] == null ? null : pulumi.Output.create<List<DatabaseInstanceServerCaCert>>(pulumi.Input.decodeList<DatabaseInstanceServerCaCert>(map['serverCaCerts'], (value) => DatabaseInstanceServerCaCert.fromMap((value as Map).cast<String, dynamic>()))),
      serviceAccountEmailAddress: map['serviceAccountEmailAddress'] == null ? null : pulumi.Output.create<String>(map['serviceAccountEmailAddress'] as String),
      settings: map['settings'] == null ? null : pulumi.Output.create<DatabaseInstanceSettings>(DatabaseInstanceSettings.fromMap((map['settings'] as Map).cast<String, dynamic>())),
    );
  }
}

