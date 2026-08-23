// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_instances_instance_clone.dart';
import 'get_database_instances_instance_dns_name.dart';
import 'get_database_instances_instance_ip_address.dart';
import 'get_database_instances_instance_point_in_time_restore_context.dart';
import 'get_database_instances_instance_replica_configuration.dart';
import 'get_database_instances_instance_replication_cluster.dart';
import 'get_database_instances_instance_restore_backup_context.dart';
import 'get_database_instances_instance_server_ca_cert.dart';
import 'get_database_instances_instance_setting.dart';

class GetDatabaseInstancesInstance {
  /// Available Maintenance versions.
  final pulumi.Input<List<String>> availableMaintenanceVersions;
  /// The name of the BackupDR backup to restore from.
  final pulumi.Input<String> backupdrBackup;
  /// Configuration for creating a new instance as a clone of another instance.
  final pulumi.Input<List<GetDatabaseInstancesInstanceClone>> clones;
  /// The connection name of the instance to be used in connection strings. For example, when connecting with Cloud SQL Proxy.
  final pulumi.Input<String> connectionName;
  /// To filter out the Cloud SQL instances which are of the specified database version.
  final pulumi.Input<String> databaseVersion;
  /// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'terraform apply' would delete the instance,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String> deletionPolicy;
  /// Used to block Terraform from deleting a SQL Instance. Defaults to true.
  final pulumi.Input<bool> deletionProtection;
  /// The instance-level dns name of the instance for PSC instances or public IP CAS instances.
  final pulumi.Input<String> dnsName;
  /// The list of DNS names used by this instance. Different connection types for an instance may have different DNS names. DNS names can apply to an individual instance or a cluster of instances.
  final pulumi.Input<List<GetDatabaseInstancesInstanceDnsName>> dnsNames;
  final pulumi.Input<String> encryptionKeyName;
  /// Whether to enforce the new SQL network architecture.
  final pulumi.Input<bool> enforceNewSqlNetworkArchitecture;
  /// The description of final backup if instance enable create final backup during instance deletion.
  final pulumi.Input<String> finalBackupDescription;
  /// The first IPv4 address of any type assigned. This is to support accessing the first address in the list in a terraform output when the resource is configured with a count.
  final pulumi.Input<String> firstIpAddress;
  /// When this parameter is set to true, Cloud SQL instances can perform in-place major version upgrades of read replicas along with the primary instance when 'database_version' is updated. This is an input-only field that is not persisted in the API and only takes effect during a major version upgrade.
  final pulumi.Input<bool> includeReplicasForMajorVersionUpgrade;
  /// The type of the instance. See https://cloud.google.com/sql/docs/mysql/admin-api/rest/v1/instances#SqlInstanceType for supported values.
  final pulumi.Input<String> instanceType;
  final pulumi.Input<List<GetDatabaseInstancesInstanceIpAddress>> ipAddresses;
  /// Maintenance version.
  final pulumi.Input<String> maintenanceVersion;
  /// The name of the instance that will act as the master in the replication setup. Note, this requires the master to have binaryLogEnabled set, as well as existing backups.
  final pulumi.Input<String> masterInstanceName;
  /// The name of the instance. If the name is left blank, Terraform will randomly generate one when the instance is first created. This is done because after a name is used, it cannot be reused for up to one week.
  final pulumi.Input<String> name;
  /// For a read pool instance, the number of nodes in the read pool. For read pools with auto scaling enabled, this field is read only.
  final pulumi.Input<int> nodeCount;
  /// Configuration for creating a new instance using point-in-time-restore from backupdr backup.
  final pulumi.Input<List<GetDatabaseInstancesInstancePointInTimeRestoreContext>> pointInTimeRestoreContexts;
  /// IPv4 address assigned. This is a workaround for an issue fixed in Terraform 0.12 but also provides a convenient way to access an IP of a specific type without performing filtering in a Terraform config.
  final pulumi.Input<String> privateIpAddress;
  /// The ID of the project in which the resources belong. If it is not provided, the provider project is used.
  final pulumi.Input<String> project;
  /// The link to service attachment of PSC instance.
  final pulumi.Input<String> pscServiceAttachmentLink;
  /// IPv4 address assigned. This is a workaround for an issue fixed in Terraform 0.12 but also provides a convenient way to access an IP of a specific type without performing filtering in a Terraform config.
  final pulumi.Input<String> publicIpAddress;
  /// To filter out the Cloud SQL instances which are located in the specified region.
  final pulumi.Input<String> region;
  /// The configuration for replication.
  final pulumi.Input<List<GetDatabaseInstancesInstanceReplicaConfiguration>> replicaConfigurations;
  /// The replicas of the instance.
  final pulumi.Input<List<String>> replicaNames;
  /// A primary instance and disaster recovery replica pair. Applicable to MySQL and PostgreSQL. This field can be set if the primary has psaWriteEndpoint set or both the primary and replica are created.
  final pulumi.Input<List<GetDatabaseInstancesInstanceReplicationCluster>> replicationClusters;
  final pulumi.Input<List<GetDatabaseInstancesInstanceRestoreBackupContext>> restoreBackupContexts;
  /// Initial root password. Required for MS SQL Server.
  final pulumi.Input<String> rootPassword;
  /// Initial root password. Required for MS SQL Server.
  /// Note: This property is write-only and will not be read from the API. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  final pulumi.Input<String> rootPasswordWo;
  /// Triggers update of rootPasswordWo write-only. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  final pulumi.Input<String> rootPasswordWoVersion;
  /// The URI of the created resource.
  final pulumi.Input<String> selfLink;
  final pulumi.Input<List<GetDatabaseInstancesInstanceServerCaCert>> serverCaCerts;
  /// The service account email address assigned to the instance.
  final pulumi.Input<String> serviceAccountEmailAddress;
  /// The settings to use for the database. The configuration is detailed below.
  final pulumi.Input<List<GetDatabaseInstancesInstanceSetting>> settings;
  /// When set to true, Cloud SQL instances can switch storing point-in-time recovery transaction logs from a data disk to Cloud Storage, freeing up data disk space and enabling longer retention windows. This is an input-only field that is not persisted in the API.
  final pulumi.Input<bool> switchTransactionLogsToCloudStorageEnabled;

  /// Creates a new [GetDatabaseInstancesInstance].
  /// [availableMaintenanceVersions] Available Maintenance versions.
  /// [backupdrBackup] The name of the BackupDR backup to restore from.
  /// [clones] Configuration for creating a new instance as a clone of another instance.
  /// [connectionName] The connection name of the instance to be used in connection strings. For example, when connecting with Cloud SQL Proxy.
  /// [databaseVersion] To filter out the Cloud SQL instances which are of the specified database version.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
  /// [deletionProtection] Used to block Terraform from deleting a SQL Instance. Defaults to true.
  /// [dnsName] The instance-level dns name of the instance for PSC instances or public IP CAS instances.
  /// [dnsNames] The list of DNS names used by this instance. Different connection types for an instance may have different DNS names. DNS names can apply to an individual instance or a cluster of instances.
  /// [encryptionKeyName] Required.
  /// [enforceNewSqlNetworkArchitecture] Whether to enforce the new SQL network architecture.
  /// [finalBackupDescription] The description of final backup if instance enable create final backup during instance deletion.
  /// [firstIpAddress] The first IPv4 address of any type assigned. This is to support accessing the first address in the list in a terraform output when the resource is configured with a count.
  /// [includeReplicasForMajorVersionUpgrade] When this parameter is set to true, Cloud SQL instances can perform in-place major version upgrades of read replicas along with the primary instance when 'database_version' is updated. This is an input-only field that is not persisted in the API and only takes effect during a major version upgrade.
  /// [instanceType] The type of the instance. See https://cloud.google.com/sql/docs/mysql/admin-api/rest/v1/instances#SqlInstanceType for supported values.
  /// [ipAddresses] Required.
  /// [maintenanceVersion] Maintenance version.
  /// [masterInstanceName] The name of the instance that will act as the master in the replication setup. Note, this requires the master to have binaryLogEnabled set, as well as existing backups.
  /// [name] The name of the instance. If the name is left blank, Terraform will randomly generate one when the instance is first created. This is done because after a name is used, it cannot be reused for up to one week.
  /// [nodeCount] For a read pool instance, the number of nodes in the read pool. For read pools with auto scaling enabled, this field is read only.
  /// [pointInTimeRestoreContexts] Configuration for creating a new instance using point-in-time-restore from backupdr backup.
  /// [privateIpAddress] IPv4 address assigned. This is a workaround for an issue fixed in Terraform 0.12 but also provides a convenient way to access an IP of a specific type without performing filtering in a Terraform config.
  /// [project] The ID of the project in which the resources belong. If it is not provided, the provider project is used.
  /// [pscServiceAttachmentLink] The link to service attachment of PSC instance.
  /// [publicIpAddress] IPv4 address assigned. This is a workaround for an issue fixed in Terraform 0.12 but also provides a convenient way to access an IP of a specific type without performing filtering in a Terraform config.
  /// [region] To filter out the Cloud SQL instances which are located in the specified region.
  /// [replicaConfigurations] The configuration for replication.
  /// [replicaNames] The replicas of the instance.
  /// [replicationClusters] A primary instance and disaster recovery replica pair. Applicable to MySQL and PostgreSQL. This field can be set if the primary has psaWriteEndpoint set or both the primary and replica are created.
  /// [restoreBackupContexts] Required.
  /// [rootPassword] Initial root password. Required for MS SQL Server.
  /// [rootPasswordWo] Initial root password. Required for MS SQL Server.
  /// [rootPasswordWoVersion] Triggers update of rootPasswordWo write-only. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  /// [selfLink] The URI of the created resource.
  /// [serverCaCerts] Required.
  /// [serviceAccountEmailAddress] The service account email address assigned to the instance.
  /// [settings] The settings to use for the database. The configuration is detailed below.
  /// [switchTransactionLogsToCloudStorageEnabled] When set to true, Cloud SQL instances can switch storing point-in-time recovery transaction logs from a data disk to Cloud Storage, freeing up data disk space and enabling longer retention windows. This is an input-only field that is not persisted in the API.
  const GetDatabaseInstancesInstance({
    required this.availableMaintenanceVersions,
    required this.backupdrBackup,
    required this.clones,
    required this.connectionName,
    required this.databaseVersion,
    required this.deletionPolicy,
    required this.deletionProtection,
    required this.dnsName,
    required this.dnsNames,
    required this.encryptionKeyName,
    required this.enforceNewSqlNetworkArchitecture,
    required this.finalBackupDescription,
    required this.firstIpAddress,
    required this.includeReplicasForMajorVersionUpgrade,
    required this.instanceType,
    required this.ipAddresses,
    required this.maintenanceVersion,
    required this.masterInstanceName,
    required this.name,
    required this.nodeCount,
    required this.pointInTimeRestoreContexts,
    required this.privateIpAddress,
    required this.project,
    required this.pscServiceAttachmentLink,
    required this.publicIpAddress,
    required this.region,
    required this.replicaConfigurations,
    required this.replicaNames,
    required this.replicationClusters,
    required this.restoreBackupContexts,
    required this.rootPassword,
    required this.rootPasswordWo,
    required this.rootPasswordWoVersion,
    required this.selfLink,
    required this.serverCaCerts,
    required this.serviceAccountEmailAddress,
    required this.settings,
    required this.switchTransactionLogsToCloudStorageEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableMaintenanceVersions': availableMaintenanceVersions,
      'backupdrBackup': backupdrBackup,
      'clones': pulumi.Input.mapInputValue<List<GetDatabaseInstancesInstanceClone>, List<Map<String, dynamic>>>(clones, (value) => pulumi.Input.encodeList<GetDatabaseInstancesInstanceClone, Map<String, dynamic>>(value, (value) => value.toMap())),
      'connectionName': connectionName,
      'databaseVersion': databaseVersion,
      'deletionPolicy': deletionPolicy,
      'deletionProtection': deletionProtection,
      'dnsName': dnsName,
      'dnsNames': pulumi.Input.mapInputValue<List<GetDatabaseInstancesInstanceDnsName>, List<Map<String, dynamic>>>(dnsNames, (value) => pulumi.Input.encodeList<GetDatabaseInstancesInstanceDnsName, Map<String, dynamic>>(value, (value) => value.toMap())),
      'encryptionKeyName': encryptionKeyName,
      'enforceNewSqlNetworkArchitecture': enforceNewSqlNetworkArchitecture,
      'finalBackupDescription': finalBackupDescription,
      'firstIpAddress': firstIpAddress,
      'includeReplicasForMajorVersionUpgrade': includeReplicasForMajorVersionUpgrade,
      'instanceType': instanceType,
      'ipAddresses': pulumi.Input.mapInputValue<List<GetDatabaseInstancesInstanceIpAddress>, List<Map<String, dynamic>>>(ipAddresses, (value) => pulumi.Input.encodeList<GetDatabaseInstancesInstanceIpAddress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maintenanceVersion': maintenanceVersion,
      'masterInstanceName': masterInstanceName,
      'name': name,
      'nodeCount': nodeCount,
      'pointInTimeRestoreContexts': pulumi.Input.mapInputValue<List<GetDatabaseInstancesInstancePointInTimeRestoreContext>, List<Map<String, dynamic>>>(pointInTimeRestoreContexts, (value) => pulumi.Input.encodeList<GetDatabaseInstancesInstancePointInTimeRestoreContext, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privateIpAddress': privateIpAddress,
      'project': project,
      'pscServiceAttachmentLink': pscServiceAttachmentLink,
      'publicIpAddress': publicIpAddress,
      'region': region,
      'replicaConfigurations': pulumi.Input.mapInputValue<List<GetDatabaseInstancesInstanceReplicaConfiguration>, List<Map<String, dynamic>>>(replicaConfigurations, (value) => pulumi.Input.encodeList<GetDatabaseInstancesInstanceReplicaConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'replicaNames': replicaNames,
      'replicationClusters': pulumi.Input.mapInputValue<List<GetDatabaseInstancesInstanceReplicationCluster>, List<Map<String, dynamic>>>(replicationClusters, (value) => pulumi.Input.encodeList<GetDatabaseInstancesInstanceReplicationCluster, Map<String, dynamic>>(value, (value) => value.toMap())),
      'restoreBackupContexts': pulumi.Input.mapInputValue<List<GetDatabaseInstancesInstanceRestoreBackupContext>, List<Map<String, dynamic>>>(restoreBackupContexts, (value) => pulumi.Input.encodeList<GetDatabaseInstancesInstanceRestoreBackupContext, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rootPassword': rootPassword,
      'rootPasswordWo': rootPasswordWo,
      'rootPasswordWoVersion': rootPasswordWoVersion,
      'selfLink': selfLink,
      'serverCaCerts': pulumi.Input.mapInputValue<List<GetDatabaseInstancesInstanceServerCaCert>, List<Map<String, dynamic>>>(serverCaCerts, (value) => pulumi.Input.encodeList<GetDatabaseInstancesInstanceServerCaCert, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceAccountEmailAddress': serviceAccountEmailAddress,
      'settings': pulumi.Input.mapInputValue<List<GetDatabaseInstancesInstanceSetting>, List<Map<String, dynamic>>>(settings, (value) => pulumi.Input.encodeList<GetDatabaseInstancesInstanceSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'switchTransactionLogsToCloudStorageEnabled': switchTransactionLogsToCloudStorageEnabled,
    };
  }

  factory GetDatabaseInstancesInstance.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstancesInstance(
      availableMaintenanceVersions: pulumi.Input.fromValue((map['availableMaintenanceVersions'] as List).cast<String>()),
      backupdrBackup: pulumi.Input.fromValue(map['backupdrBackup'] as String),
      clones: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDatabaseInstancesInstanceClone>(map['clones']!, (value) => GetDatabaseInstancesInstanceClone.fromMap((value as Map).cast<String, dynamic>()))),
      connectionName: pulumi.Input.fromValue(map['connectionName'] as String),
      databaseVersion: pulumi.Input.fromValue(map['databaseVersion'] as String),
      deletionPolicy: pulumi.Input.fromValue(map['deletionPolicy'] as String),
      deletionProtection: pulumi.Input.fromValue(map['deletionProtection'] as bool),
      dnsName: pulumi.Input.fromValue(map['dnsName'] as String),
      dnsNames: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDatabaseInstancesInstanceDnsName>(map['dnsNames']!, (value) => GetDatabaseInstancesInstanceDnsName.fromMap((value as Map).cast<String, dynamic>()))),
      encryptionKeyName: pulumi.Input.fromValue(map['encryptionKeyName'] as String),
      enforceNewSqlNetworkArchitecture: pulumi.Input.fromValue(map['enforceNewSqlNetworkArchitecture'] as bool),
      finalBackupDescription: pulumi.Input.fromValue(map['finalBackupDescription'] as String),
      firstIpAddress: pulumi.Input.fromValue(map['firstIpAddress'] as String),
      includeReplicasForMajorVersionUpgrade: pulumi.Input.fromValue(map['includeReplicasForMajorVersionUpgrade'] as bool),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      ipAddresses: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDatabaseInstancesInstanceIpAddress>(map['ipAddresses']!, (value) => GetDatabaseInstancesInstanceIpAddress.fromMap((value as Map).cast<String, dynamic>()))),
      maintenanceVersion: pulumi.Input.fromValue(map['maintenanceVersion'] as String),
      masterInstanceName: pulumi.Input.fromValue(map['masterInstanceName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      nodeCount: pulumi.Input.fromValue(map['nodeCount'] as int),
      pointInTimeRestoreContexts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDatabaseInstancesInstancePointInTimeRestoreContext>(map['pointInTimeRestoreContexts']!, (value) => GetDatabaseInstancesInstancePointInTimeRestoreContext.fromMap((value as Map).cast<String, dynamic>()))),
      privateIpAddress: pulumi.Input.fromValue(map['privateIpAddress'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
      pscServiceAttachmentLink: pulumi.Input.fromValue(map['pscServiceAttachmentLink'] as String),
      publicIpAddress: pulumi.Input.fromValue(map['publicIpAddress'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
      replicaConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDatabaseInstancesInstanceReplicaConfiguration>(map['replicaConfigurations']!, (value) => GetDatabaseInstancesInstanceReplicaConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      replicaNames: pulumi.Input.fromValue((map['replicaNames'] as List).cast<String>()),
      replicationClusters: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDatabaseInstancesInstanceReplicationCluster>(map['replicationClusters']!, (value) => GetDatabaseInstancesInstanceReplicationCluster.fromMap((value as Map).cast<String, dynamic>()))),
      restoreBackupContexts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDatabaseInstancesInstanceRestoreBackupContext>(map['restoreBackupContexts']!, (value) => GetDatabaseInstancesInstanceRestoreBackupContext.fromMap((value as Map).cast<String, dynamic>()))),
      rootPassword: pulumi.Input.fromValue(map['rootPassword'] as String),
      rootPasswordWo: pulumi.Input.fromValue(map['rootPasswordWo'] as String),
      rootPasswordWoVersion: pulumi.Input.fromValue(map['rootPasswordWoVersion'] as String),
      selfLink: pulumi.Input.fromValue(map['selfLink'] as String),
      serverCaCerts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDatabaseInstancesInstanceServerCaCert>(map['serverCaCerts']!, (value) => GetDatabaseInstancesInstanceServerCaCert.fromMap((value as Map).cast<String, dynamic>()))),
      serviceAccountEmailAddress: pulumi.Input.fromValue(map['serviceAccountEmailAddress'] as String),
      settings: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDatabaseInstancesInstanceSetting>(map['settings']!, (value) => GetDatabaseInstancesInstanceSetting.fromMap((value as Map).cast<String, dynamic>()))),
      switchTransactionLogsToCloudStorageEnabled: pulumi.Input.fromValue(map['switchTransactionLogsToCloudStorageEnabled'] as bool),
    );
  }
}
