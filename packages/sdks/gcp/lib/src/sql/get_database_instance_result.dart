// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_instance_clone.dart';
import 'get_database_instance_dns_name.dart';
import 'get_database_instance_ip_address.dart';
import 'get_database_instance_point_in_time_restore_context.dart';
import 'get_database_instance_replica_configuration.dart';
import 'get_database_instance_replication_cluster.dart';
import 'get_database_instance_restore_backup_context.dart';
import 'get_database_instance_server_ca_cert.dart';
import 'get_database_instance_setting.dart';

/// Result data returned by getDatabaseInstance.
class GetDatabaseInstanceResult {
  final List<String>? availableMaintenanceVersions;
  final String? backupdrBackup;
  final List<GetDatabaseInstanceClone>? clones;
  final String? connectionName;
  final String? databaseVersion;
  final String? deletionPolicy;
  final bool? deletionProtection;
  final String? dnsName;
  final List<GetDatabaseInstanceDnsName>? dnsNames;
  final String? encryptionKeyName;
  final bool? enforceNewSqlNetworkArchitecture;
  final String? finalBackupDescription;
  final String? firstIpAddress;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final bool? includeReplicasForMajorVersionUpgrade;
  final String? instanceType;
  final List<GetDatabaseInstanceIpAddress>? ipAddresses;
  final String? maintenanceVersion;
  final String? masterInstanceName;
  final String? name;
  final int? nodeCount;
  final List<GetDatabaseInstancePointInTimeRestoreContext>? pointInTimeRestoreContexts;
  final String? privateIpAddress;
  final String? project;
  final String? pscServiceAttachmentLink;
  final String? publicIpAddress;
  final String? region;
  final List<GetDatabaseInstanceReplicaConfiguration>? replicaConfigurations;
  final List<String>? replicaNames;
  final List<GetDatabaseInstanceReplicationCluster>? replicationClusters;
  final List<GetDatabaseInstanceRestoreBackupContext>? restoreBackupContexts;
  final String? rootPassword;
  final String? rootPasswordWo;
  final String? rootPasswordWoVersion;
  final String? selfLink;
  final List<GetDatabaseInstanceServerCaCert>? serverCaCerts;
  final String? serviceAccountEmailAddress;
  final List<GetDatabaseInstanceSetting>? settings;
  final bool? switchTransactionLogsToCloudStorageEnabled;

  /// Creates a new [GetDatabaseInstanceResult].
  /// [availableMaintenanceVersions] Optional.
  /// [backupdrBackup] Optional.
  /// [clones] Optional.
  /// [connectionName] Optional.
  /// [databaseVersion] Optional.
  /// [deletionPolicy] Optional.
  /// [deletionProtection] Optional.
  /// [dnsName] Optional.
  /// [dnsNames] Optional.
  /// [encryptionKeyName] Optional.
  /// [enforceNewSqlNetworkArchitecture] Optional.
  /// [finalBackupDescription] Optional.
  /// [firstIpAddress] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [includeReplicasForMajorVersionUpgrade] Optional.
  /// [instanceType] Optional.
  /// [ipAddresses] Optional.
  /// [maintenanceVersion] Optional.
  /// [masterInstanceName] Optional.
  /// [name] Optional.
  /// [nodeCount] Optional.
  /// [pointInTimeRestoreContexts] Optional.
  /// [privateIpAddress] Optional.
  /// [project] Optional.
  /// [pscServiceAttachmentLink] Optional.
  /// [publicIpAddress] Optional.
  /// [region] Optional.
  /// [replicaConfigurations] Optional.
  /// [replicaNames] Optional.
  /// [replicationClusters] Optional.
  /// [restoreBackupContexts] Optional.
  /// [rootPassword] Optional.
  /// [rootPasswordWo] Optional.
  /// [rootPasswordWoVersion] Optional.
  /// [selfLink] Optional.
  /// [serverCaCerts] Optional.
  /// [serviceAccountEmailAddress] Optional.
  /// [settings] Optional.
  /// [switchTransactionLogsToCloudStorageEnabled] Optional.
  const GetDatabaseInstanceResult({
    this.availableMaintenanceVersions,
    this.backupdrBackup,
    this.clones,
    this.connectionName,
    this.databaseVersion,
    this.deletionPolicy,
    this.deletionProtection,
    this.dnsName,
    this.dnsNames,
    this.encryptionKeyName,
    this.enforceNewSqlNetworkArchitecture,
    this.finalBackupDescription,
    this.firstIpAddress,
    this.id,
    this.includeReplicasForMajorVersionUpgrade,
    this.instanceType,
    this.ipAddresses,
    this.maintenanceVersion,
    this.masterInstanceName,
    this.name,
    this.nodeCount,
    this.pointInTimeRestoreContexts,
    this.privateIpAddress,
    this.project,
    this.pscServiceAttachmentLink,
    this.publicIpAddress,
    this.region,
    this.replicaConfigurations,
    this.replicaNames,
    this.replicationClusters,
    this.restoreBackupContexts,
    this.rootPassword,
    this.rootPasswordWo,
    this.rootPasswordWoVersion,
    this.selfLink,
    this.serverCaCerts,
    this.serviceAccountEmailAddress,
    this.settings,
    this.switchTransactionLogsToCloudStorageEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableMaintenanceVersions': ?availableMaintenanceVersions,
      'backupdrBackup': ?backupdrBackup,
      'clones': ?(() { final guardedValue = clones; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDatabaseInstanceClone, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'connectionName': ?connectionName,
      'databaseVersion': ?databaseVersion,
      'deletionPolicy': ?deletionPolicy,
      'deletionProtection': ?deletionProtection,
      'dnsName': ?dnsName,
      'dnsNames': ?(() { final guardedValue = dnsNames; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDatabaseInstanceDnsName, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'encryptionKeyName': ?encryptionKeyName,
      'enforceNewSqlNetworkArchitecture': ?enforceNewSqlNetworkArchitecture,
      'finalBackupDescription': ?finalBackupDescription,
      'firstIpAddress': ?firstIpAddress,
      'id': ?id,
      'includeReplicasForMajorVersionUpgrade': ?includeReplicasForMajorVersionUpgrade,
      'instanceType': ?instanceType,
      'ipAddresses': ?(() { final guardedValue = ipAddresses; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDatabaseInstanceIpAddress, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'maintenanceVersion': ?maintenanceVersion,
      'masterInstanceName': ?masterInstanceName,
      'name': ?name,
      'nodeCount': ?nodeCount,
      'pointInTimeRestoreContexts': ?(() { final guardedValue = pointInTimeRestoreContexts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDatabaseInstancePointInTimeRestoreContext, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'privateIpAddress': ?privateIpAddress,
      'project': ?project,
      'pscServiceAttachmentLink': ?pscServiceAttachmentLink,
      'publicIpAddress': ?publicIpAddress,
      'region': ?region,
      'replicaConfigurations': ?(() { final guardedValue = replicaConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDatabaseInstanceReplicaConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'replicaNames': ?replicaNames,
      'replicationClusters': ?(() { final guardedValue = replicationClusters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDatabaseInstanceReplicationCluster, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'restoreBackupContexts': ?(() { final guardedValue = restoreBackupContexts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDatabaseInstanceRestoreBackupContext, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'rootPassword': ?rootPassword,
      'rootPasswordWo': ?rootPasswordWo,
      'rootPasswordWoVersion': ?rootPasswordWoVersion,
      'selfLink': ?selfLink,
      'serverCaCerts': ?(() { final guardedValue = serverCaCerts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDatabaseInstanceServerCaCert, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'serviceAccountEmailAddress': ?serviceAccountEmailAddress,
      'settings': ?(() { final guardedValue = settings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDatabaseInstanceSetting, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'switchTransactionLogsToCloudStorageEnabled': ?switchTransactionLogsToCloudStorageEnabled,
    };
  }

  factory GetDatabaseInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstanceResult(
      availableMaintenanceVersions: (() { final guardedValue = map['availableMaintenanceVersions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      backupdrBackup: (() { final guardedValue = map['backupdrBackup']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clones: (() { final guardedValue = map['clones']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDatabaseInstanceClone>(guardedValue, (value) => GetDatabaseInstanceClone.fromMap((value as Map).cast<String, dynamic>())); })(),
      connectionName: (() { final guardedValue = map['connectionName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      databaseVersion: (() { final guardedValue = map['databaseVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      dnsName: (() { final guardedValue = map['dnsName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dnsNames: (() { final guardedValue = map['dnsNames']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDatabaseInstanceDnsName>(guardedValue, (value) => GetDatabaseInstanceDnsName.fromMap((value as Map).cast<String, dynamic>())); })(),
      encryptionKeyName: (() { final guardedValue = map['encryptionKeyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enforceNewSqlNetworkArchitecture: (() { final guardedValue = map['enforceNewSqlNetworkArchitecture']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      finalBackupDescription: (() { final guardedValue = map['finalBackupDescription']; if (guardedValue == null) return null; return guardedValue as String; })(),
      firstIpAddress: (() { final guardedValue = map['firstIpAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      includeReplicasForMajorVersionUpgrade: (() { final guardedValue = map['includeReplicasForMajorVersionUpgrade']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipAddresses: (() { final guardedValue = map['ipAddresses']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDatabaseInstanceIpAddress>(guardedValue, (value) => GetDatabaseInstanceIpAddress.fromMap((value as Map).cast<String, dynamic>())); })(),
      maintenanceVersion: (() { final guardedValue = map['maintenanceVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      masterInstanceName: (() { final guardedValue = map['masterInstanceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodeCount: (() { final guardedValue = map['nodeCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      pointInTimeRestoreContexts: (() { final guardedValue = map['pointInTimeRestoreContexts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDatabaseInstancePointInTimeRestoreContext>(guardedValue, (value) => GetDatabaseInstancePointInTimeRestoreContext.fromMap((value as Map).cast<String, dynamic>())); })(),
      privateIpAddress: (() { final guardedValue = map['privateIpAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pscServiceAttachmentLink: (() { final guardedValue = map['pscServiceAttachmentLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicIpAddress: (() { final guardedValue = map['publicIpAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      replicaConfigurations: (() { final guardedValue = map['replicaConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDatabaseInstanceReplicaConfiguration>(guardedValue, (value) => GetDatabaseInstanceReplicaConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      replicaNames: (() { final guardedValue = map['replicaNames']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      replicationClusters: (() { final guardedValue = map['replicationClusters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDatabaseInstanceReplicationCluster>(guardedValue, (value) => GetDatabaseInstanceReplicationCluster.fromMap((value as Map).cast<String, dynamic>())); })(),
      restoreBackupContexts: (() { final guardedValue = map['restoreBackupContexts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDatabaseInstanceRestoreBackupContext>(guardedValue, (value) => GetDatabaseInstanceRestoreBackupContext.fromMap((value as Map).cast<String, dynamic>())); })(),
      rootPassword: (() { final guardedValue = map['rootPassword']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rootPasswordWo: (() { final guardedValue = map['rootPasswordWo']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rootPasswordWoVersion: (() { final guardedValue = map['rootPasswordWoVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverCaCerts: (() { final guardedValue = map['serverCaCerts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDatabaseInstanceServerCaCert>(guardedValue, (value) => GetDatabaseInstanceServerCaCert.fromMap((value as Map).cast<String, dynamic>())); })(),
      serviceAccountEmailAddress: (() { final guardedValue = map['serviceAccountEmailAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDatabaseInstanceSetting>(guardedValue, (value) => GetDatabaseInstanceSetting.fromMap((value as Map).cast<String, dynamic>())); })(),
      switchTransactionLogsToCloudStorageEnabled: (() { final guardedValue = map['switchTransactionLogsToCloudStorageEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
