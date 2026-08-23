// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_identity.dart';
import 'database_import.dart';
import 'database_long_term_retention_policy.dart';
import 'database_short_term_retention_policy.dart';
import 'database_threat_detection_policy.dart';

/// {@template pulumi_mssql_database_database_args_doc}
/// The set of arguments for Database.
/// {@endtemplate}
/// {@macro pulumi_mssql_database_database_args_doc}
class DatabaseArgs {
  /// Time in minutes after which database is automatically paused. A value of `-1` means that automatic pause is disabled. This property is only settable for Serverless databases.
  final pulumi.Input<int>? autoPauseDelayInMinutes;
  /// Specifies the collation of the database. Changing this forces a new resource to be created.
  final pulumi.Input<String>? collation;
  /// The create mode of the database. Possible values are `Copy`, `Default`, `OnlineSecondary`, `PointInTimeRestore`, `Recovery`, `Restore`, `RestoreExternalBackup`, `RestoreExternalBackupSecondary`, `RestoreLongTermRetentionBackup` and `Secondary`. Mutually exclusive with `import`. Changing this forces a new resource to be created. Defaults to `Default`.
  final pulumi.Input<String>? createMode;
  /// The ID of the source database from which to create the new database. This should only be used for databases with `createMode` values that use another database as reference. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** When configuring a secondary database, please be aware of the constraints for the `skuName` property, as noted below, for both the primary and secondary databases. The `skuName` of the secondary database may be inadvertently changed to match that of the primary when an incompatible combination of SKUs is detected by the provider.
  final pulumi.Input<String>? creationSourceDatabaseId;
  /// Specifies the ID of the elastic pool containing this database.
  final pulumi.Input<String>? elasticPoolId;
  /// Specifies the type of enclave to be used by the elastic pool. When `enclaveType` is not specified (e.g., the default) enclaves are not enabled on the database. Once enabled (e.g., by specifying `Default` or `VBS`) removing the `enclaveType` field from the configuration file will force the creation of a new resource. Possible values are `Default` or `VBS`.
  ///
  /// &gt; **Note:** `enclaveType` is currently not supported for DW (e.g, DataWarehouse) and DC-series SKUs.
  ///
  /// &gt; **Note:** Geo Replicated and Failover databases must have the same `enclaveType`.
  ///
  /// &gt; **Note:** The default value for the `enclaveType` field is unset not `Default`.
  final pulumi.Input<String>? enclaveType;
  /// A boolean that specifies if the Geo Backup Policy is enabled. Defaults to `true`.
  ///
  /// &gt; **Note:** `geoBackupEnabled` is only applicable for DataWarehouse SKUs (DW*). This setting is ignored for all other SKUs.
  final pulumi.Input<bool>? geoBackupEnabled;
  /// An `identity` block as defined below.
  final pulumi.Input<DatabaseIdentity>? identity;
  /// A `import` block as documented below. Mutually exclusive with `createMode`.
  final pulumi.Input<DatabaseImport>? import;
  /// A boolean that specifies if this is a ledger database. Defaults to `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? ledgerEnabled;
  /// Specifies the license type applied to this database. Possible values are `LicenseIncluded` and `BasePrice`.
  final pulumi.Input<String>? licenseType;
  /// A `longTermRetentionPolicy` block as defined below.
  final pulumi.Input<DatabaseLongTermRetentionPolicy>? longTermRetentionPolicy;
  /// The name of the Public Maintenance Configuration window to apply to the database. Valid values include `SQL_Default`, `SQL_EastUS_DB_1`, `SQL_EastUS2_DB_1`, `SQL_SoutheastAsia_DB_1`, `SQL_AustraliaEast_DB_1`, `SQL_NorthEurope_DB_1`, `SQL_SouthCentralUS_DB_1`, `SQL_WestUS2_DB_1`, `SQL_UKSouth_DB_1`, `SQL_WestEurope_DB_1`, `SQL_EastUS_DB_2`, `SQL_EastUS2_DB_2`, `SQL_WestUS2_DB_2`, `SQL_SoutheastAsia_DB_2`, `SQL_AustraliaEast_DB_2`, `SQL_NorthEurope_DB_2`, `SQL_SouthCentralUS_DB_2`, `SQL_UKSouth_DB_2`, `SQL_WestEurope_DB_2`, `SQL_AustraliaSoutheast_DB_1`, `SQL_BrazilSouth_DB_1`, `SQL_CanadaCentral_DB_1`, `SQL_CanadaEast_DB_1`, `SQL_CentralUS_DB_1`, `SQL_EastAsia_DB_1`, `SQL_FranceCentral_DB_1`, `SQL_GermanyWestCentral_DB_1`, `SQL_CentralIndia_DB_1`, `SQL_SouthIndia_DB_1`, `SQL_JapanEast_DB_1`, `SQL_JapanWest_DB_1`, `SQL_NorthCentralUS_DB_1`, `SQL_UKWest_DB_1`, `SQL_WestUS_DB_1`, `SQL_AustraliaSoutheast_DB_2`, `SQL_BrazilSouth_DB_2`, `SQL_CanadaCentral_DB_2`, `SQL_CanadaEast_DB_2`, `SQL_CentralUS_DB_2`, `SQL_EastAsia_DB_2`, `SQL_FranceCentral_DB_2`, `SQL_GermanyWestCentral_DB_2`, `SQL_CentralIndia_DB_2`, `SQL_SouthIndia_DB_2`, `SQL_JapanEast_DB_2`, `SQL_JapanWest_DB_2`, `SQL_NorthCentralUS_DB_2`, `SQL_UKWest_DB_2`, `SQL_WestUS_DB_2`, `SQL_WestCentralUS_DB_1`, `SQL_FranceSouth_DB_1`, `SQL_WestCentralUS_DB_2`, `SQL_FranceSouth_DB_2`, `SQL_SwitzerlandNorth_DB_1`, `SQL_SwitzerlandNorth_DB_2`, `SQL_BrazilSoutheast_DB_1`, `SQL_UAENorth_DB_1`, `SQL_BrazilSoutheast_DB_2`, `SQL_UAENorth_DB_2`, `SQL_SouthAfricaNorth_DB_1`, `SQL_SouthAfricaNorth_DB_2`, `SQL_WestUS3_DB_1`, `SQL_WestUS3_DB_2`, `SQL_SwedenCentral_DB_1`, `SQL_SwedenCentral_DB_2`. Defaults to `SQL_Default`.
  ///
  /// &gt; **Note:** `maintenanceConfigurationName` is only applicable if `elasticPoolId` is not set.
  final pulumi.Input<String>? maintenanceConfigurationName;
  /// The max size of the database in gigabytes.
  ///
  /// &gt; **Note:** This value should not be configured when the `createMode` is `Secondary` or `OnlineSecondary`, as the sizing of the primary is then used as per [Azure documentation](https://docs.microsoft.com/azure/azure-sql/database/single-database-scale#geo-replicated-database). The value of `maxSizeGb` accepts `0.1`, `0.5` and positive integers greater than or equal to 1. `0.1` means `100MB`, and `0.5` means `500MB`.
  final pulumi.Input<double>? maxSizeGb;
  /// Minimal capacity that database will always have allocated, if not paused. This property is only settable for Serverless databases.
  final pulumi.Input<double>? minCapacity;
  /// The name of the MS SQL Database. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The number of readonly secondary replicas associated with the database to which readonly application intent connections may be routed. This property is only settable for Hyperscale edition databases.
  final pulumi.Input<int>? readReplicaCount;
  /// If enabled, connections that have application intent set to readonly in their connection string may be routed to a readonly secondary replica. This property is only settable for Premium and Business Critical databases.
  final pulumi.Input<bool>? readScale;
  /// The ID of the database to be recovered. This property is only applicable when the `createMode` is `Recovery`.
  final pulumi.Input<String>? recoverDatabaseId;
  /// The ID of the Recovery Services Recovery Point Id to be restored. This property is only applicable when the `createMode` is `Recovery`.
  final pulumi.Input<String>? recoveryPointId;
  /// The ID of the database to be restored. This property is only applicable when the `createMode` is `Restore`.
  final pulumi.Input<String>? restoreDroppedDatabaseId;
  /// The ID of the long term retention backup to be restored. This property is only applicable when the `createMode` is `RestoreLongTermRetentionBackup`.
  final pulumi.Input<String>? restoreLongTermRetentionBackupId;
  /// Specifies the point in time (ISO8601 format) of the source database that will be restored to create the new database. This property is only settable for `createMode`= `PointInTimeRestore` databases.
  final pulumi.Input<String>? restorePointInTime;
  /// Specifies the name of the sample schema to apply when creating this database. Possible value is `AdventureWorksLT`.
  final pulumi.Input<String>? sampleName;
  /// How do you want your replica to be made? Valid values include `Geo`, `Named` and `Standby`. Defaults to `Geo`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? secondaryType;
  /// The id of the MS SQL Server on which to create the database. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** This setting is still required for "Serverless" SKUs
  final pulumi.Input<String> serverId;
  /// A `shortTermRetentionPolicy` block as defined below.
  final pulumi.Input<DatabaseShortTermRetentionPolicy>? shortTermRetentionPolicy;
  /// Specifies the name of the SKU used by the database. For example, `GP_S_Gen5_2`,`HS_Gen4_1`,`BC_Gen5_2`, `ElasticPool`, `Basic`,`S0`, `P2` ,`DW100c`, `DS100`. Changing this from the HyperScale service tier to another service tier will create a new resource.
  ///
  /// &gt; **Note:** A full list of supported SKU names by region can be retrieved using the Azure CLI: `az sql db list-editions -l &lt;region&gt; -o table`
  ///
  /// &gt; **Note:** The default `skuName` value may differ between Azure locations depending on local availability of Gen4/Gen5 capacity. When databases are replicated using the `creationSourceDatabaseId` property, the source (primary) database cannot have a higher SKU service tier than any secondary databases. When changing the `skuName` of a database having one or more secondary databases, this resource will first update any secondary databases as necessary. In such cases it's recommended to use the same `skuName` in your configuration for all related databases, as not doing so may cause an unresolvable diff during subsequent plans.
  final pulumi.Input<String>? skuName;
  /// Specifies the storage account type used to store backups for this database. Possible values are `Geo`, `GeoZone`, `Local` and `Zone`. Defaults to `Geo`.
  final pulumi.Input<String>? storageAccountType;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Threat detection policy configuration. The `threatDetectionPolicy` block supports fields documented below.
  final pulumi.Input<DatabaseThreatDetectionPolicy>? threatDetectionPolicy;
  /// If set to true, Transparent Data Encryption will be enabled on the database. Defaults to `true`.
  ///
  /// &gt; **Note:** `transparentDataEncryptionEnabled` can only be set to `false` on DW (e.g, DataWarehouse) server SKUs.
  final pulumi.Input<bool>? transparentDataEncryptionEnabled;
  /// Boolean flag to specify whether TDE automatically rotates the encryption Key to latest version or not. Possible values are `true` or `false`. Defaults to `false`.
  ///
  /// &gt; **Note:** When the `skuName` is `DW100c`, the `transparentDataEncryptionKeyAutomaticRotationEnabled` and the `transparentDataEncryptionKeyVaultKeyId` properties should not be specified, as database-level CMK is not supported for Data Warehouse SKUs.
  final pulumi.Input<bool>? transparentDataEncryptionKeyAutomaticRotationEnabled;
  /// The fully versioned `Key Vault` `Key` URL (e.g. `'https://&lt;YourVaultName&gt;.vault.azure.net/keys/&lt;YourKeyName&gt;/&lt;YourKeyVersion&gt;`) to be used as the `Customer Managed Key`(CMK/BYOK) for the `Transparent Data Encryption`(TDE) layer.
  ///
  /// &gt; **Note:** To successfully deploy a `Microsoft SQL Database` in CMK/BYOK TDE the `Key Vault` must have `Soft-delete` and `purge protection` enabled to protect from data loss due to accidental key and/or key vault deletion. The `Key Vault` and the `Microsoft SQL Server` `User Managed Identity Instance` must belong to the same `Azure Active Directory` `tenant`.
  final pulumi.Input<String>? transparentDataEncryptionKeyVaultKeyId;
  /// Whether or not this database is zone redundant, which means the replicas of this database will be spread across multiple availability zones. This property is only settable for Premium and Business Critical databases.
  final pulumi.Input<bool>? zoneRedundant;

  /// Creates a new [DatabaseArgs].
  /// [autoPauseDelayInMinutes] Time in minutes after which database is automatically paused. A value of `-1` means that automatic pause is disabled. This property is only settable for Serverless databases.
  /// [collation] Specifies the collation of the database. Changing this forces a new resource to be created.
  /// [createMode] The create mode of the database. Possible values are `Copy`, `Default`, `OnlineSecondary`, `PointInTimeRestore`, `Recovery`, `Restore`, `RestoreExternalBackup`, `RestoreExternalBackupSecondary`, `RestoreLongTermRetentionBackup` and `Secondary`. Mutually exclusive with `import`. Changing this forces a new resource to be created. Defaults to `Default`.
  /// [creationSourceDatabaseId] The ID of the source database from which to create the new database. This should only be used for databases with `createMode` values that use another database as reference. Changing this forces a new resource to be created.
  /// [elasticPoolId] Specifies the ID of the elastic pool containing this database.
  /// [enclaveType] Specifies the type of enclave to be used by the elastic pool. When `enclaveType` is not specified (e.g., the default) enclaves are not enabled on the database. Once enabled (e.g., by specifying `Default` or `VBS`) removing the `enclaveType` field from the configuration file will force the creation of a new resource. Possible values are `Default` or `VBS`.
  /// [geoBackupEnabled] A boolean that specifies if the Geo Backup Policy is enabled. Defaults to `true`.
  /// [identity] An `identity` block as defined below.
  /// [import] A `import` block as documented below. Mutually exclusive with `createMode`.
  /// [ledgerEnabled] A boolean that specifies if this is a ledger database. Defaults to `false`. Changing this forces a new resource to be created.
  /// [licenseType] Specifies the license type applied to this database. Possible values are `LicenseIncluded` and `BasePrice`.
  /// [longTermRetentionPolicy] A `longTermRetentionPolicy` block as defined below.
  /// [maintenanceConfigurationName] The name of the Public Maintenance Configuration window to apply to the database. Valid values include `SQL_Default`, `SQL_EastUS_DB_1`, `SQL_EastUS2_DB_1`, `SQL_SoutheastAsia_DB_1`, `SQL_AustraliaEast_DB_1`, `SQL_NorthEurope_DB_1`, `SQL_SouthCentralUS_DB_1`, `SQL_WestUS2_DB_1`, `SQL_UKSouth_DB_1`, `SQL_WestEurope_DB_1`, `SQL_EastUS_DB_2`, `SQL_EastUS2_DB_2`, `SQL_WestUS2_DB_2`, `SQL_SoutheastAsia_DB_2`, `SQL_AustraliaEast_DB_2`, `SQL_NorthEurope_DB_2`, `SQL_SouthCentralUS_DB_2`, `SQL_UKSouth_DB_2`, `SQL_WestEurope_DB_2`, `SQL_AustraliaSoutheast_DB_1`, `SQL_BrazilSouth_DB_1`, `SQL_CanadaCentral_DB_1`, `SQL_CanadaEast_DB_1`, `SQL_CentralUS_DB_1`, `SQL_EastAsia_DB_1`, `SQL_FranceCentral_DB_1`, `SQL_GermanyWestCentral_DB_1`, `SQL_CentralIndia_DB_1`, `SQL_SouthIndia_DB_1`, `SQL_JapanEast_DB_1`, `SQL_JapanWest_DB_1`, `SQL_NorthCentralUS_DB_1`, `SQL_UKWest_DB_1`, `SQL_WestUS_DB_1`, `SQL_AustraliaSoutheast_DB_2`, `SQL_BrazilSouth_DB_2`, `SQL_CanadaCentral_DB_2`, `SQL_CanadaEast_DB_2`, `SQL_CentralUS_DB_2`, `SQL_EastAsia_DB_2`, `SQL_FranceCentral_DB_2`, `SQL_GermanyWestCentral_DB_2`, `SQL_CentralIndia_DB_2`, `SQL_SouthIndia_DB_2`, `SQL_JapanEast_DB_2`, `SQL_JapanWest_DB_2`, `SQL_NorthCentralUS_DB_2`, `SQL_UKWest_DB_2`, `SQL_WestUS_DB_2`, `SQL_WestCentralUS_DB_1`, `SQL_FranceSouth_DB_1`, `SQL_WestCentralUS_DB_2`, `SQL_FranceSouth_DB_2`, `SQL_SwitzerlandNorth_DB_1`, `SQL_SwitzerlandNorth_DB_2`, `SQL_BrazilSoutheast_DB_1`, `SQL_UAENorth_DB_1`, `SQL_BrazilSoutheast_DB_2`, `SQL_UAENorth_DB_2`, `SQL_SouthAfricaNorth_DB_1`, `SQL_SouthAfricaNorth_DB_2`, `SQL_WestUS3_DB_1`, `SQL_WestUS3_DB_2`, `SQL_SwedenCentral_DB_1`, `SQL_SwedenCentral_DB_2`. Defaults to `SQL_Default`.
  /// [maxSizeGb] The max size of the database in gigabytes.
  /// [minCapacity] Minimal capacity that database will always have allocated, if not paused. This property is only settable for Serverless databases.
  /// [name] The name of the MS SQL Database. Changing this forces a new resource to be created.
  /// [readReplicaCount] The number of readonly secondary replicas associated with the database to which readonly application intent connections may be routed. This property is only settable for Hyperscale edition databases.
  /// [readScale] If enabled, connections that have application intent set to readonly in their connection string may be routed to a readonly secondary replica. This property is only settable for Premium and Business Critical databases.
  /// [recoverDatabaseId] The ID of the database to be recovered. This property is only applicable when the `createMode` is `Recovery`.
  /// [recoveryPointId] The ID of the Recovery Services Recovery Point Id to be restored. This property is only applicable when the `createMode` is `Recovery`.
  /// [restoreDroppedDatabaseId] The ID of the database to be restored. This property is only applicable when the `createMode` is `Restore`.
  /// [restoreLongTermRetentionBackupId] The ID of the long term retention backup to be restored. This property is only applicable when the `createMode` is `RestoreLongTermRetentionBackup`.
  /// [restorePointInTime] Specifies the point in time (ISO8601 format) of the source database that will be restored to create the new database. This property is only settable for `createMode`= `PointInTimeRestore` databases.
  /// [sampleName] Specifies the name of the sample schema to apply when creating this database. Possible value is `AdventureWorksLT`.
  /// [secondaryType] How do you want your replica to be made? Valid values include `Geo`, `Named` and `Standby`. Defaults to `Geo`. Changing this forces a new resource to be created.
  /// [serverId] The id of the MS SQL Server on which to create the database. Changing this forces a new resource to be created.
  /// [shortTermRetentionPolicy] A `shortTermRetentionPolicy` block as defined below.
  /// [skuName] Specifies the name of the SKU used by the database. For example, `GP_S_Gen5_2`,`HS_Gen4_1`,`BC_Gen5_2`, `ElasticPool`, `Basic`,`S0`, `P2` ,`DW100c`, `DS100`. Changing this from the HyperScale service tier to another service tier will create a new resource.
  /// [storageAccountType] Specifies the storage account type used to store backups for this database. Possible values are `Geo`, `GeoZone`, `Local` and `Zone`. Defaults to `Geo`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [threatDetectionPolicy] Threat detection policy configuration. The `threatDetectionPolicy` block supports fields documented below.
  /// [transparentDataEncryptionEnabled] If set to true, Transparent Data Encryption will be enabled on the database. Defaults to `true`.
  /// [transparentDataEncryptionKeyAutomaticRotationEnabled] Boolean flag to specify whether TDE automatically rotates the encryption Key to latest version or not. Possible values are `true` or `false`. Defaults to `false`.
  /// [transparentDataEncryptionKeyVaultKeyId] The fully versioned `Key Vault` `Key` URL (e.g. `'https://&lt;YourVaultName&gt;.vault.azure.net/keys/&lt;YourKeyName&gt;/&lt;YourKeyVersion&gt;`) to be used as the `Customer Managed Key`(CMK/BYOK) for the `Transparent Data Encryption`(TDE) layer.
  /// [zoneRedundant] Whether or not this database is zone redundant, which means the replicas of this database will be spread across multiple availability zones. This property is only settable for Premium and Business Critical databases.
  const DatabaseArgs({
    this.autoPauseDelayInMinutes,
    this.collation,
    this.createMode,
    this.creationSourceDatabaseId,
    this.elasticPoolId,
    this.enclaveType,
    this.geoBackupEnabled,
    this.identity,
    this.import,
    this.ledgerEnabled,
    this.licenseType,
    this.longTermRetentionPolicy,
    this.maintenanceConfigurationName,
    this.maxSizeGb,
    this.minCapacity,
    this.name,
    this.readReplicaCount,
    this.readScale,
    this.recoverDatabaseId,
    this.recoveryPointId,
    this.restoreDroppedDatabaseId,
    this.restoreLongTermRetentionBackupId,
    this.restorePointInTime,
    this.sampleName,
    this.secondaryType,
    required this.serverId,
    this.shortTermRetentionPolicy,
    this.skuName,
    this.storageAccountType,
    this.tags,
    this.threatDetectionPolicy,
    this.transparentDataEncryptionEnabled,
    this.transparentDataEncryptionKeyAutomaticRotationEnabled,
    this.transparentDataEncryptionKeyVaultKeyId,
    this.zoneRedundant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPauseDelayInMinutes': ?autoPauseDelayInMinutes,
      'collation': ?collation,
      'createMode': ?createMode,
      'creationSourceDatabaseId': ?creationSourceDatabaseId,
      'elasticPoolId': ?elasticPoolId,
      'enclaveType': ?enclaveType,
      'geoBackupEnabled': ?geoBackupEnabled,
      'identity': ?pulumi.Input.mapOptionalInputValue<DatabaseIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'import': ?pulumi.Input.mapOptionalInputValue<DatabaseImport, Map<String, dynamic>>(import, (value) => value.toMap()),
      'ledgerEnabled': ?ledgerEnabled,
      'licenseType': ?licenseType,
      'longTermRetentionPolicy': ?pulumi.Input.mapOptionalInputValue<DatabaseLongTermRetentionPolicy, Map<String, dynamic>>(longTermRetentionPolicy, (value) => value.toMap()),
      'maintenanceConfigurationName': ?maintenanceConfigurationName,
      'maxSizeGb': ?maxSizeGb,
      'minCapacity': ?minCapacity,
      'name': ?name,
      'readReplicaCount': ?readReplicaCount,
      'readScale': ?readScale,
      'recoverDatabaseId': ?recoverDatabaseId,
      'recoveryPointId': ?recoveryPointId,
      'restoreDroppedDatabaseId': ?restoreDroppedDatabaseId,
      'restoreLongTermRetentionBackupId': ?restoreLongTermRetentionBackupId,
      'restorePointInTime': ?restorePointInTime,
      'sampleName': ?sampleName,
      'secondaryType': ?secondaryType,
      'serverId': serverId,
      'shortTermRetentionPolicy': ?pulumi.Input.mapOptionalInputValue<DatabaseShortTermRetentionPolicy, Map<String, dynamic>>(shortTermRetentionPolicy, (value) => value.toMap()),
      'skuName': ?skuName,
      'storageAccountType': ?storageAccountType,
      'tags': ?tags,
      'threatDetectionPolicy': ?pulumi.Input.mapOptionalInputValue<DatabaseThreatDetectionPolicy, Map<String, dynamic>>(threatDetectionPolicy, (value) => value.toMap()),
      'transparentDataEncryptionEnabled': ?transparentDataEncryptionEnabled,
      'transparentDataEncryptionKeyAutomaticRotationEnabled': ?transparentDataEncryptionKeyAutomaticRotationEnabled,
      'transparentDataEncryptionKeyVaultKeyId': ?transparentDataEncryptionKeyVaultKeyId,
      'zoneRedundant': ?zoneRedundant,
    };
  }

  factory DatabaseArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseArgs(
      autoPauseDelayInMinutes: (() { final guardedValue = map['autoPauseDelayInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      collation: (() { final guardedValue = map['collation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createMode: (() { final guardedValue = map['createMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creationSourceDatabaseId: (() { final guardedValue = map['creationSourceDatabaseId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      elasticPoolId: (() { final guardedValue = map['elasticPoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enclaveType: (() { final guardedValue = map['enclaveType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      geoBackupEnabled: (() { final guardedValue = map['geoBackupEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatabaseIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      import: (() { final guardedValue = map['import']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatabaseImport.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ledgerEnabled: (() { final guardedValue = map['ledgerEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      licenseType: (() { final guardedValue = map['licenseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      longTermRetentionPolicy: (() { final guardedValue = map['longTermRetentionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatabaseLongTermRetentionPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maintenanceConfigurationName: (() { final guardedValue = map['maintenanceConfigurationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxSizeGb: (() { final guardedValue = map['maxSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      minCapacity: (() { final guardedValue = map['minCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      readReplicaCount: (() { final guardedValue = map['readReplicaCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      readScale: (() { final guardedValue = map['readScale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      recoverDatabaseId: (() { final guardedValue = map['recoverDatabaseId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryPointId: (() { final guardedValue = map['recoveryPointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restoreDroppedDatabaseId: (() { final guardedValue = map['restoreDroppedDatabaseId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restoreLongTermRetentionBackupId: (() { final guardedValue = map['restoreLongTermRetentionBackupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restorePointInTime: (() { final guardedValue = map['restorePointInTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sampleName: (() { final guardedValue = map['sampleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryType: (() { final guardedValue = map['secondaryType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverId: pulumi.Input.fromValue(map['serverId'] as String),
      shortTermRetentionPolicy: (() { final guardedValue = map['shortTermRetentionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatabaseShortTermRetentionPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      skuName: (() { final guardedValue = map['skuName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountType: (() { final guardedValue = map['storageAccountType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      threatDetectionPolicy: (() { final guardedValue = map['threatDetectionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatabaseThreatDetectionPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      transparentDataEncryptionEnabled: (() { final guardedValue = map['transparentDataEncryptionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      transparentDataEncryptionKeyAutomaticRotationEnabled: (() { final guardedValue = map['transparentDataEncryptionKeyAutomaticRotationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      transparentDataEncryptionKeyVaultKeyId: (() { final guardedValue = map['transparentDataEncryptionKeyVaultKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneRedundant: (() { final guardedValue = map['zoneRedundant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
