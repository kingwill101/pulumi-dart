// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_identity.dart';
import 'server_threat_detection_policy.dart';

/// {@template pulumi_postgresql_server_server_args_doc}
/// The set of arguments for Server.
/// {@endtemplate}
/// {@macro pulumi_postgresql_server_server_args_doc}
class ServerArgs {
  /// The Administrator login for the PostgreSQL Server. Required when `create_mode` is `Default`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? administratorLogin;
  /// The Password associated with the `administrator_login` for the PostgreSQL Server.
  final pulumi.Input<String>? administratorLoginPassword;
  /// An integer value used to trigger an update for `administrator_login_password_wo`. This property should be incremented when updating `administrator_login_password_wo`.
  final pulumi.Input<int>? administratorLoginPasswordWoVersion;
  /// Enable/Disable auto-growing of the storage. Storage auto-grow prevents your server from running out of storage and becoming read-only. If storage auto grow is enabled, the storage automatically grows without impacting the workload. Defaults to `true`.
  final pulumi.Input<bool>? autoGrowEnabled;
  /// Backup retention days for the server, supported values are between `7` and `35` days.
  final pulumi.Input<int>? backupRetentionDays;
  /// The creation mode. Can be used to restore or replicate existing servers. Possible values are `Default`, `Replica`, `GeoRestore`, and `PointInTimeRestore`. Defaults to `Default`.
  final pulumi.Input<String>? createMode;
  /// For creation modes other than `Default`, the source server ID to use.
  final pulumi.Input<String>? creationSourceServerId;
  /// Turn Geo-redundant server backups on/off. This allows you to choose between locally redundant or geo-redundant backup storage in the General Purpose and Memory Optimized tiers. When the backups are stored in geo-redundant backup storage, they are not only stored within the region in which your server is hosted, but are also replicated to a paired data center. This provides better protection and ability to restore your server in a different region in the event of a disaster. This is not support for the Basic tier. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? geoRedundantBackupEnabled;
  /// An `identity` block as defined below.
  final pulumi.Input<ServerIdentity>? identity;
  /// Whether or not infrastructure is encrypted for this server. Changing this forces a new resource to be created.
  ///
  /// > **Note:** This property is currently still in development and not supported by Microsoft. If the `infrastructure_encryption_enabled` attribute is set to `true` the PostgreSQL instance will incur a substantial performance degradation due to a second encryption pass on top of the existing default encryption that is already provided by Azure Storage. It is strongly suggested to leave this value `false` as not doing so can lead to unclear error messages.
  final pulumi.Input<bool>? infrastructureEncryptionEnabled;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the PostgreSQL Server. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Whether or not public network access is allowed for this server. Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The name of the resource group in which to create the PostgreSQL Server. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// When `create_mode` is `PointInTimeRestore` the point in time to restore from `creation_source_server_id`. It should be provided in [RFC3339](https://www.rfc-editor.org/rfc/rfc3339) format, e.g. `2013-11-08T22:00:40Z`.
  final pulumi.Input<String>? restorePointInTime;
  /// Specifies the SKU Name for this PostgreSQL Server. The name of the SKU, follows the `tier` + `family` + `cores` pattern (e.g. `B_Gen4_1`, `GP_Gen5_8`). For more information see the [product documentation](https://docs.microsoft.com/rest/api/postgresql/singleserver/servers/create#sku). Possible values are `B_Gen4_1`, `B_Gen4_2`, `B_Gen5_1`, `B_Gen5_2`, `GP_Gen4_2`, `GP_Gen4_4`, `GP_Gen4_8`, `GP_Gen4_16`, `GP_Gen4_32`, `GP_Gen5_2`, `GP_Gen5_4`, `GP_Gen5_8`, `GP_Gen5_16`, `GP_Gen5_32`, `GP_Gen5_64`, `MO_Gen5_2`, `MO_Gen5_4`, `MO_Gen5_8`, `MO_Gen5_16` and `MO_Gen5_32`.
  ///
  /// > **Note:** When replication is set up and `sku_name` is changed to a higher tier or more capacity for the primary, all replicas are scaled up to the same tier/capacity. This is an Azure requirement, for more information see the [replica scaling documentation](https://docs.microsoft.com/azure/postgresql/concepts-read-replicas#scaling)
  final pulumi.Input<String> skuName;
  /// Specifies if SSL should be enforced on connections. Possible values are `true` and `false`.
  ///
  /// > **Note:** `ssl_minimal_tls_version_enforced` must be set to `TLSEnforcementDisabled` when `ssl_enforcement_enabled` is set to `false`.
  final pulumi.Input<bool> sslEnforcementEnabled;
  /// The minimum TLS version to support on the sever. Possible values are `TLSEnforcementDisabled`, `TLS1_0`, `TLS1_1`, and `TLS1_2`. Defaults to `TLS1_2`.
  final pulumi.Input<String>? sslMinimalTlsVersionEnforced;
  /// Max storage allowed for a server. Possible values are between `5120` MB(5GB) and `1048576` MB(1TB) for the Basic SKU and between `5120` MB(5GB) and `16777216` MB(16TB) for General Purpose/Memory Optimized SKUs. For more information see the [product documentation](https://docs.microsoft.com/azure/postgresql/concepts-pricing-tiers#storage).
  final pulumi.Input<int>? storageMb;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Threat detection policy configuration, known in the API as Server Security Alerts Policy. The `threat_detection_policy` block supports fields documented below.
  final pulumi.Input<ServerThreatDetectionPolicy>? threatDetectionPolicy;
  /// Specifies the version of PostgreSQL to use. Valid values are `9.5`, `9.6`, `10`, `10.0`, `10.2` and `11`. Changing this forces a new resource to be created.
  final pulumi.Input<String> version;

  /// Creates a new [ServerArgs].
  /// [administratorLogin] The Administrator login for the PostgreSQL Server. Required when `create_mode` is `Default`. Changing this forces a new resource to be created.
  /// [administratorLoginPassword] The Password associated with the `administrator_login` for the PostgreSQL Server.
  /// [administratorLoginPasswordWoVersion] An integer value used to trigger an update for `administrator_login_password_wo`. This property should be incremented when updating `administrator_login_password_wo`.
  /// [autoGrowEnabled] Enable/Disable auto-growing of the storage. Storage auto-grow prevents your server from running out of storage and becoming read-only. If storage auto grow is enabled, the storage automatically grows without impacting the workload. Defaults to `true`.
  /// [backupRetentionDays] Backup retention days for the server, supported values are between `7` and `35` days.
  /// [createMode] The creation mode. Can be used to restore or replicate existing servers. Possible values are `Default`, `Replica`, `GeoRestore`, and `PointInTimeRestore`. Defaults to `Default`.
  /// [creationSourceServerId] For creation modes other than `Default`, the source server ID to use.
  /// [geoRedundantBackupEnabled] Turn Geo-redundant server backups on/off. This allows you to choose between locally redundant or geo-redundant backup storage in the General Purpose and Memory Optimized tiers. When the backups are stored in geo-redundant backup storage, they are not only stored within the region in which your server is hosted, but are also replicated to a paired data center. This provides better protection and ability to restore your server in a different region in the event of a disaster. This is not support for the Basic tier. Changing this forces a new resource to be created.
  /// [identity] An `identity` block as defined below.
  /// [infrastructureEncryptionEnabled] Whether or not infrastructure is encrypted for this server. Changing this forces a new resource to be created.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the PostgreSQL Server. Changing this forces a new resource to be created.
  /// [publicNetworkAccessEnabled] Whether or not public network access is allowed for this server. Defaults to `true`.
  /// [resourceGroupName] The name of the resource group in which to create the PostgreSQL Server. Changing this forces a new resource to be created.
  /// [restorePointInTime] When `create_mode` is `PointInTimeRestore` the point in time to restore from `creation_source_server_id`. It should be provided in [RFC3339](https://www.rfc-editor.org/rfc/rfc3339) format, e.g. `2013-11-08T22:00:40Z`.
  /// [skuName] Specifies the SKU Name for this PostgreSQL Server. The name of the SKU, follows the `tier` + `family` + `cores` pattern (e.g. `B_Gen4_1`, `GP_Gen5_8`). For more information see the [product documentation](https://docs.microsoft.com/rest/api/postgresql/singleserver/servers/create#sku). Possible values are `B_Gen4_1`, `B_Gen4_2`, `B_Gen5_1`, `B_Gen5_2`, `GP_Gen4_2`, `GP_Gen4_4`, `GP_Gen4_8`, `GP_Gen4_16`, `GP_Gen4_32`, `GP_Gen5_2`, `GP_Gen5_4`, `GP_Gen5_8`, `GP_Gen5_16`, `GP_Gen5_32`, `GP_Gen5_64`, `MO_Gen5_2`, `MO_Gen5_4`, `MO_Gen5_8`, `MO_Gen5_16` and `MO_Gen5_32`.
  /// [sslEnforcementEnabled] Specifies if SSL should be enforced on connections. Possible values are `true` and `false`.
  /// [sslMinimalTlsVersionEnforced] The minimum TLS version to support on the sever. Possible values are `TLSEnforcementDisabled`, `TLS1_0`, `TLS1_1`, and `TLS1_2`. Defaults to `TLS1_2`.
  /// [storageMb] Max storage allowed for a server. Possible values are between `5120` MB(5GB) and `1048576` MB(1TB) for the Basic SKU and between `5120` MB(5GB) and `16777216` MB(16TB) for General Purpose/Memory Optimized SKUs. For more information see the [product documentation](https://docs.microsoft.com/azure/postgresql/concepts-pricing-tiers#storage).
  /// [tags] A mapping of tags to assign to the resource.
  /// [threatDetectionPolicy] Threat detection policy configuration, known in the API as Server Security Alerts Policy. The `threat_detection_policy` block supports fields documented below.
  /// [version] Specifies the version of PostgreSQL to use. Valid values are `9.5`, `9.6`, `10`, `10.0`, `10.2` and `11`. Changing this forces a new resource to be created.
  ServerArgs({
    this.administratorLogin,
    this.administratorLoginPassword,
    this.administratorLoginPasswordWoVersion,
    this.autoGrowEnabled,
    this.backupRetentionDays,
    this.createMode,
    this.creationSourceServerId,
    this.geoRedundantBackupEnabled,
    this.identity,
    this.infrastructureEncryptionEnabled,
    this.location,
    this.name,
    this.publicNetworkAccessEnabled,
    required this.resourceGroupName,
    this.restorePointInTime,
    required this.skuName,
    required this.sslEnforcementEnabled,
    this.sslMinimalTlsVersionEnforced,
    this.storageMb,
    this.tags,
    this.threatDetectionPolicy,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorLogin': ?administratorLogin,
      'administratorLoginPassword': ?administratorLoginPassword,
      'administratorLoginPasswordWoVersion': ?administratorLoginPasswordWoVersion,
      'autoGrowEnabled': ?autoGrowEnabled,
      'backupRetentionDays': ?backupRetentionDays,
      'createMode': ?createMode,
      'creationSourceServerId': ?creationSourceServerId,
      'geoRedundantBackupEnabled': ?geoRedundantBackupEnabled,
      'identity': ?pulumi.Input.mapOptionalInputValue<ServerIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'infrastructureEncryptionEnabled': ?infrastructureEncryptionEnabled,
      'location': ?location,
      'name': ?name,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': resourceGroupName,
      'restorePointInTime': ?restorePointInTime,
      'skuName': skuName,
      'sslEnforcementEnabled': sslEnforcementEnabled,
      'sslMinimalTlsVersionEnforced': ?sslMinimalTlsVersionEnforced,
      'storageMb': ?storageMb,
      'tags': ?tags,
      'threatDetectionPolicy': ?pulumi.Input.mapOptionalInputValue<ServerThreatDetectionPolicy, Map<String, dynamic>>(threatDetectionPolicy, (value) => value.toMap()),
      'version': version,
    };
  }

  factory ServerArgs.fromMap(Map<String, dynamic> map) {
    return ServerArgs(
      administratorLogin: map['administratorLogin'] == null ? null : (map['administratorLogin']! as String).input(),
      administratorLoginPassword: map['administratorLoginPassword'] == null ? null : (map['administratorLoginPassword']! as String).input(),
      administratorLoginPasswordWoVersion: map['administratorLoginPasswordWoVersion'] == null ? null : (map['administratorLoginPasswordWoVersion']! as int).input(),
      autoGrowEnabled: map['autoGrowEnabled'] == null ? null : (map['autoGrowEnabled']! as bool).input(),
      backupRetentionDays: map['backupRetentionDays'] == null ? null : (map['backupRetentionDays']! as int).input(),
      createMode: map['createMode'] == null ? null : (map['createMode']! as String).input(),
      creationSourceServerId: map['creationSourceServerId'] == null ? null : (map['creationSourceServerId']! as String).input(),
      geoRedundantBackupEnabled: map['geoRedundantBackupEnabled'] == null ? null : (map['geoRedundantBackupEnabled']! as bool).input(),
      identity: map['identity'] == null ? null : (ServerIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      infrastructureEncryptionEnabled: map['infrastructureEncryptionEnabled'] == null ? null : (map['infrastructureEncryptionEnabled']! as bool).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : (map['publicNetworkAccessEnabled']! as bool).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      restorePointInTime: map['restorePointInTime'] == null ? null : (map['restorePointInTime']! as String).input(),
      skuName: (map['skuName'] as String).input(),
      sslEnforcementEnabled: (map['sslEnforcementEnabled'] as bool).input(),
      sslMinimalTlsVersionEnforced: map['sslMinimalTlsVersionEnforced'] == null ? null : (map['sslMinimalTlsVersionEnforced']! as String).input(),
      storageMb: map['storageMb'] == null ? null : (map['storageMb']! as int).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      threatDetectionPolicy: map['threatDetectionPolicy'] == null ? null : (ServerThreatDetectionPolicy.fromMap((map['threatDetectionPolicy']! as Map).cast<String, dynamic>())).input(),
      version: (map['version'] as String).input(),
    );
  }
}

