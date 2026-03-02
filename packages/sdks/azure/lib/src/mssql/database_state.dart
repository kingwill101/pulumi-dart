// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_identity.dart';
import 'database_import.dart';
import 'database_long_term_retention_policy.dart';
import 'database_short_term_retention_policy.dart';
import 'database_threat_detection_policy.dart';

/// Input properties used for looking up and filtering Database resources.
class DatabaseState {
  /// Time in minutes after which database is automatically paused. A value of `-1` means that automatic pause is disabled. This property is only settable for Serverless databases.
  final pulumi.Input<int>? autoPauseDelayInMinutes;
  /// Specifies the collation of the database. Changing this forces a new resource to be created.
  final pulumi.Input<String>? collation;
  /// The create mode of the database. Possible values are `Copy`, `Default`, `OnlineSecondary`, `PointInTimeRestore`, `Recovery`, `Restore`, `RestoreExternalBackup`, `RestoreExternalBackupSecondary`, `RestoreLongTermRetentionBackup` and `Secondary`. Mutually exclusive with `import`. Changing this forces a new resource to be created. Defaults to `Default`.
  final pulumi.Input<String>? createMode;
  /// The ID of the source database from which to create the new database. This should only be used for databases with `create_mode` values that use another database as reference. Changing this forces a new resource to be created.
  ///
  /// > **Note:** When configuring a secondary database, please be aware of the constraints for the `sku_name` property, as noted below, for both the primary and secondary databases. The `sku_name` of the secondary database may be inadvertently changed to match that of the primary when an incompatible combination of SKUs is detected by the provider.
  final pulumi.Input<String>? creationSourceDatabaseId;
  /// Specifies the ID of the elastic pool containing this database.
  final pulumi.Input<String>? elasticPoolId;
  /// Specifies the type of enclave to be used by the elastic pool. When `enclave_type` is not specified (e.g., the default) enclaves are not enabled on the database. Once enabled (e.g., by specifying `Default` or `VBS`) removing the `enclave_type` field from the configuration file will force the creation of a new resource. Possible values are `Default` or `VBS`.
  ///
  /// > **Note:** `enclave_type` is currently not supported for DW (e.g, DataWarehouse) and DC-series SKUs.
  ///
  /// > **Note:** Geo Replicated and Failover databases must have the same `enclave_type`.
  ///
  /// > **Note:** The default value for the `enclave_type` field is unset not `Default`.
  final pulumi.Input<String>? enclaveType;
  /// A boolean that specifies if the Geo Backup Policy is enabled. Defaults to `true`.
  ///
  /// > **Note:** `geo_backup_enabled` is only applicable for DataWarehouse SKUs (DW*). This setting is ignored for all other SKUs.
  final pulumi.Input<bool>? geoBackupEnabled;
  /// An `identity` block as defined below.
  final pulumi.Input<DatabaseIdentity>? identity;
  /// A `import` block as documented below. Mutually exclusive with `create_mode`.
  final pulumi.Input<DatabaseImport>? import;
  /// A boolean that specifies if this is a ledger database. Defaults to `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? ledgerEnabled;
  /// Specifies the license type applied to this database. Possible values are `LicenseIncluded` and `BasePrice`.
  final pulumi.Input<String>? licenseType;
  /// A `long_term_retention_policy` block as defined below.
  final pulumi.Input<DatabaseLongTermRetentionPolicy>? longTermRetentionPolicy;
  /// The name of the Public Maintenance Configuration window to apply to the database. Valid values include `SQL_Default`, `SQL_EastUS_DB_1`, `SQL_EastUS2_DB_1`, `SQL_SoutheastAsia_DB_1`, `SQL_AustraliaEast_DB_1`, `SQL_NorthEurope_DB_1`, `SQL_SouthCentralUS_DB_1`, `SQL_WestUS2_DB_1`, `SQL_UKSouth_DB_1`, `SQL_WestEurope_DB_1`, `SQL_EastUS_DB_2`, `SQL_EastUS2_DB_2`, `SQL_WestUS2_DB_2`, `SQL_SoutheastAsia_DB_2`, `SQL_AustraliaEast_DB_2`, `SQL_NorthEurope_DB_2`, `SQL_SouthCentralUS_DB_2`, `SQL_UKSouth_DB_2`, `SQL_WestEurope_DB_2`, `SQL_AustraliaSoutheast_DB_1`, `SQL_BrazilSouth_DB_1`, `SQL_CanadaCentral_DB_1`, `SQL_CanadaEast_DB_1`, `SQL_CentralUS_DB_1`, `SQL_EastAsia_DB_1`, `SQL_FranceCentral_DB_1`, `SQL_GermanyWestCentral_DB_1`, `SQL_CentralIndia_DB_1`, `SQL_SouthIndia_DB_1`, `SQL_JapanEast_DB_1`, `SQL_JapanWest_DB_1`, `SQL_NorthCentralUS_DB_1`, `SQL_UKWest_DB_1`, `SQL_WestUS_DB_1`, `SQL_AustraliaSoutheast_DB_2`, `SQL_BrazilSouth_DB_2`, `SQL_CanadaCentral_DB_2`, `SQL_CanadaEast_DB_2`, `SQL_CentralUS_DB_2`, `SQL_EastAsia_DB_2`, `SQL_FranceCentral_DB_2`, `SQL_GermanyWestCentral_DB_2`, `SQL_CentralIndia_DB_2`, `SQL_SouthIndia_DB_2`, `SQL_JapanEast_DB_2`, `SQL_JapanWest_DB_2`, `SQL_NorthCentralUS_DB_2`, `SQL_UKWest_DB_2`, `SQL_WestUS_DB_2`, `SQL_WestCentralUS_DB_1`, `SQL_FranceSouth_DB_1`, `SQL_WestCentralUS_DB_2`, `SQL_FranceSouth_DB_2`, `SQL_SwitzerlandNorth_DB_1`, `SQL_SwitzerlandNorth_DB_2`, `SQL_BrazilSoutheast_DB_1`, `SQL_UAENorth_DB_1`, `SQL_BrazilSoutheast_DB_2`, `SQL_UAENorth_DB_2`, `SQL_SouthAfricaNorth_DB_1`, `SQL_SouthAfricaNorth_DB_2`, `SQL_WestUS3_DB_1`, `SQL_WestUS3_DB_2`, `SQL_SwedenCentral_DB_1`, `SQL_SwedenCentral_DB_2`. Defaults to `SQL_Default`.
  ///
  /// > **Note:** `maintenance_configuration_name` is only applicable if `elastic_pool_id` is not set.
  final pulumi.Input<String>? maintenanceConfigurationName;
  /// The max size of the database in gigabytes.
  ///
  /// > **Note:** This value should not be configured when the `create_mode` is `Secondary` or `OnlineSecondary`, as the sizing of the primary is then used as per [Azure documentation](https://docs.microsoft.com/azure/azure-sql/database/single-database-scale#geo-replicated-database). The value of `max_size_gb` accepts `0.1`, `0.5` and positive integers greater than or equal to 1. `0.1` means `100MB`, and `0.5` means `500MB`.
  final pulumi.Input<double>? maxSizeGb;
  /// Minimal capacity that database will always have allocated, if not paused. This property is only settable for Serverless databases.
  final pulumi.Input<double>? minCapacity;
  /// The name of the MS SQL Database. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The number of readonly secondary replicas associated with the database to which readonly application intent connections may be routed. This property is only settable for Hyperscale edition databases.
  final pulumi.Input<int>? readReplicaCount;
  /// If enabled, connections that have application intent set to readonly in their connection string may be routed to a readonly secondary replica. This property is only settable for Premium and Business Critical databases.
  final pulumi.Input<bool>? readScale;
  /// The ID of the database to be recovered. This property is only applicable when the `create_mode` is `Recovery`.
  final pulumi.Input<String>? recoverDatabaseId;
  /// The ID of the Recovery Services Recovery Point Id to be restored. This property is only applicable when the `create_mode` is `Recovery`.
  final pulumi.Input<String>? recoveryPointId;
  /// The ID of the database to be restored. This property is only applicable when the `create_mode` is `Restore`.
  final pulumi.Input<String>? restoreDroppedDatabaseId;
  /// The ID of the long term retention backup to be restored. This property is only applicable when the `create_mode` is `RestoreLongTermRetentionBackup`.
  final pulumi.Input<String>? restoreLongTermRetentionBackupId;
  /// Specifies the point in time (ISO8601 format) of the source database that will be restored to create the new database. This property is only settable for `create_mode`= `PointInTimeRestore` databases.
  final pulumi.Input<String>? restorePointInTime;
  /// Specifies the name of the sample schema to apply when creating this database. Possible value is `AdventureWorksLT`.
  final pulumi.Input<String>? sampleName;
  /// How do you want your replica to be made? Valid values include `Geo`, `Named` and `Standby`. Defaults to `Geo`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? secondaryType;
  /// The id of the MS SQL Server on which to create the database. Changing this forces a new resource to be created.
  ///
  /// > **Note:** This setting is still required for "Serverless" SKUs
  final pulumi.Input<String>? serverId;
  /// A `short_term_retention_policy` block as defined below.
  final pulumi.Input<DatabaseShortTermRetentionPolicy>? shortTermRetentionPolicy;
  /// Specifies the name of the SKU used by the database. For example, `GP_S_Gen5_2`,`HS_Gen4_1`,`BC_Gen5_2`, `ElasticPool`, `Basic`,`S0`, `P2` ,`DW100c`, `DS100`. Changing this from the HyperScale service tier to another service tier will create a new resource.
  ///
  /// > **Note:** A full list of supported SKU names by region can be retrieved using the Azure CLI: `az sql db list-editions -l <region> -o table`
  ///
  /// > **Note:** The default `sku_name` value may differ between Azure locations depending on local availability of Gen4/Gen5 capacity. When databases are replicated using the `creation_source_database_id` property, the source (primary) database cannot have a higher SKU service tier than any secondary databases. When changing the `sku_name` of a database having one or more secondary databases, this resource will first update any secondary databases as necessary. In such cases it's recommended to use the same `sku_name` in your configuration for all related databases, as not doing so may cause an unresolvable diff during subsequent plans.
  final pulumi.Input<String>? skuName;
  /// Specifies the storage account type used to store backups for this database. Possible values are `Geo`, `GeoZone`, `Local` and `Zone`. Defaults to `Geo`.
  final pulumi.Input<String>? storageAccountType;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Threat detection policy configuration. The `threat_detection_policy` block supports fields documented below.
  final pulumi.Input<DatabaseThreatDetectionPolicy>? threatDetectionPolicy;
  /// If set to true, Transparent Data Encryption will be enabled on the database. Defaults to `true`.
  ///
  /// > **Note:** `transparent_data_encryption_enabled` can only be set to `false` on DW (e.g, DataWarehouse) server SKUs.
  final pulumi.Input<bool>? transparentDataEncryptionEnabled;
  /// Boolean flag to specify whether TDE automatically rotates the encryption Key to latest version or not. Possible values are `true` or `false`. Defaults to `false`.
  ///
  /// > **Note:** When the `sku_name` is `DW100c`, the `transparent_data_encryption_key_automatic_rotation_enabled` and the `transparent_data_encryption_key_vault_key_id` properties should not be specified, as database-level CMK is not supported for Data Warehouse SKUs.
  final pulumi.Input<bool>? transparentDataEncryptionKeyAutomaticRotationEnabled;
  /// The fully versioned `Key Vault` `Key` URL (e.g. `'https://<YourVaultName>.vault.azure.net/keys/<YourKeyName>/<YourKeyVersion>`) to be used as the `Customer Managed Key`(CMK/BYOK) for the `Transparent Data Encryption`(TDE) layer.
  ///
  /// > **Note:** To successfully deploy a `Microsoft SQL Database` in CMK/BYOK TDE the `Key Vault` must have `Soft-delete` and `purge protection` enabled to protect from data loss due to accidental key and/or key vault deletion. The `Key Vault` and the `Microsoft SQL Server` `User Managed Identity Instance` must belong to the same `Azure Active Directory` `tenant`.
  final pulumi.Input<String>? transparentDataEncryptionKeyVaultKeyId;
  /// Whether or not this database is zone redundant, which means the replicas of this database will be spread across multiple availability zones. This property is only settable for Premium and Business Critical databases.
  final pulumi.Input<bool>? zoneRedundant;

  /// Creates a new [DatabaseState].
  /// [autoPauseDelayInMinutes] Time in minutes after which database is automatically paused. A value of `-1` means that automatic pause is disabled. This property is only settable for Serverless databases.
  /// [collation] Specifies the collation of the database. Changing this forces a new resource to be created.
  /// [createMode] The create mode of the database. Possible values are `Copy`, `Default`, `OnlineSecondary`, `PointInTimeRestore`, `Recovery`, `Restore`, `RestoreExternalBackup`, `RestoreExternalBackupSecondary`, `RestoreLongTermRetentionBackup` and `Secondary`. Mutually exclusive with `import`. Changing this forces a new resource to be created. Defaults to `Default`.
  /// [creationSourceDatabaseId] The ID of the source database from which to create the new database. This should only be used for databases with `create_mode` values that use another database as reference. Changing this forces a new resource to be created.
  /// [elasticPoolId] Specifies the ID of the elastic pool containing this database.
  /// [enclaveType] Specifies the type of enclave to be used by the elastic pool. When `enclave_type` is not specified (e.g., the default) enclaves are not enabled on the database. Once enabled (e.g., by specifying `Default` or `VBS`) removing the `enclave_type` field from the configuration file will force the creation of a new resource. Possible values are `Default` or `VBS`.
  /// [geoBackupEnabled] A boolean that specifies if the Geo Backup Policy is enabled. Defaults to `true`.
  /// [identity] An `identity` block as defined below.
  /// [import] A `import` block as documented below. Mutually exclusive with `create_mode`.
  /// [ledgerEnabled] A boolean that specifies if this is a ledger database. Defaults to `false`. Changing this forces a new resource to be created.
  /// [licenseType] Specifies the license type applied to this database. Possible values are `LicenseIncluded` and `BasePrice`.
  /// [longTermRetentionPolicy] A `long_term_retention_policy` block as defined below.
  /// [maintenanceConfigurationName] The name of the Public Maintenance Configuration window to apply to the database. Valid values include `SQL_Default`, `SQL_EastUS_DB_1`, `SQL_EastUS2_DB_1`, `SQL_SoutheastAsia_DB_1`, `SQL_AustraliaEast_DB_1`, `SQL_NorthEurope_DB_1`, `SQL_SouthCentralUS_DB_1`, `SQL_WestUS2_DB_1`, `SQL_UKSouth_DB_1`, `SQL_WestEurope_DB_1`, `SQL_EastUS_DB_2`, `SQL_EastUS2_DB_2`, `SQL_WestUS2_DB_2`, `SQL_SoutheastAsia_DB_2`, `SQL_AustraliaEast_DB_2`, `SQL_NorthEurope_DB_2`, `SQL_SouthCentralUS_DB_2`, `SQL_UKSouth_DB_2`, `SQL_WestEurope_DB_2`, `SQL_AustraliaSoutheast_DB_1`, `SQL_BrazilSouth_DB_1`, `SQL_CanadaCentral_DB_1`, `SQL_CanadaEast_DB_1`, `SQL_CentralUS_DB_1`, `SQL_EastAsia_DB_1`, `SQL_FranceCentral_DB_1`, `SQL_GermanyWestCentral_DB_1`, `SQL_CentralIndia_DB_1`, `SQL_SouthIndia_DB_1`, `SQL_JapanEast_DB_1`, `SQL_JapanWest_DB_1`, `SQL_NorthCentralUS_DB_1`, `SQL_UKWest_DB_1`, `SQL_WestUS_DB_1`, `SQL_AustraliaSoutheast_DB_2`, `SQL_BrazilSouth_DB_2`, `SQL_CanadaCentral_DB_2`, `SQL_CanadaEast_DB_2`, `SQL_CentralUS_DB_2`, `SQL_EastAsia_DB_2`, `SQL_FranceCentral_DB_2`, `SQL_GermanyWestCentral_DB_2`, `SQL_CentralIndia_DB_2`, `SQL_SouthIndia_DB_2`, `SQL_JapanEast_DB_2`, `SQL_JapanWest_DB_2`, `SQL_NorthCentralUS_DB_2`, `SQL_UKWest_DB_2`, `SQL_WestUS_DB_2`, `SQL_WestCentralUS_DB_1`, `SQL_FranceSouth_DB_1`, `SQL_WestCentralUS_DB_2`, `SQL_FranceSouth_DB_2`, `SQL_SwitzerlandNorth_DB_1`, `SQL_SwitzerlandNorth_DB_2`, `SQL_BrazilSoutheast_DB_1`, `SQL_UAENorth_DB_1`, `SQL_BrazilSoutheast_DB_2`, `SQL_UAENorth_DB_2`, `SQL_SouthAfricaNorth_DB_1`, `SQL_SouthAfricaNorth_DB_2`, `SQL_WestUS3_DB_1`, `SQL_WestUS3_DB_2`, `SQL_SwedenCentral_DB_1`, `SQL_SwedenCentral_DB_2`. Defaults to `SQL_Default`.
  /// [maxSizeGb] The max size of the database in gigabytes.
  /// [minCapacity] Minimal capacity that database will always have allocated, if not paused. This property is only settable for Serverless databases.
  /// [name] The name of the MS SQL Database. Changing this forces a new resource to be created.
  /// [readReplicaCount] The number of readonly secondary replicas associated with the database to which readonly application intent connections may be routed. This property is only settable for Hyperscale edition databases.
  /// [readScale] If enabled, connections that have application intent set to readonly in their connection string may be routed to a readonly secondary replica. This property is only settable for Premium and Business Critical databases.
  /// [recoverDatabaseId] The ID of the database to be recovered. This property is only applicable when the `create_mode` is `Recovery`.
  /// [recoveryPointId] The ID of the Recovery Services Recovery Point Id to be restored. This property is only applicable when the `create_mode` is `Recovery`.
  /// [restoreDroppedDatabaseId] The ID of the database to be restored. This property is only applicable when the `create_mode` is `Restore`.
  /// [restoreLongTermRetentionBackupId] The ID of the long term retention backup to be restored. This property is only applicable when the `create_mode` is `RestoreLongTermRetentionBackup`.
  /// [restorePointInTime] Specifies the point in time (ISO8601 format) of the source database that will be restored to create the new database. This property is only settable for `create_mode`= `PointInTimeRestore` databases.
  /// [sampleName] Specifies the name of the sample schema to apply when creating this database. Possible value is `AdventureWorksLT`.
  /// [secondaryType] How do you want your replica to be made? Valid values include `Geo`, `Named` and `Standby`. Defaults to `Geo`. Changing this forces a new resource to be created.
  /// [serverId] The id of the MS SQL Server on which to create the database. Changing this forces a new resource to be created.
  /// [shortTermRetentionPolicy] A `short_term_retention_policy` block as defined below.
  /// [skuName] Specifies the name of the SKU used by the database. For example, `GP_S_Gen5_2`,`HS_Gen4_1`,`BC_Gen5_2`, `ElasticPool`, `Basic`,`S0`, `P2` ,`DW100c`, `DS100`. Changing this from the HyperScale service tier to another service tier will create a new resource.
  /// [storageAccountType] Specifies the storage account type used to store backups for this database. Possible values are `Geo`, `GeoZone`, `Local` and `Zone`. Defaults to `Geo`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [threatDetectionPolicy] Threat detection policy configuration. The `threat_detection_policy` block supports fields documented below.
  /// [transparentDataEncryptionEnabled] If set to true, Transparent Data Encryption will be enabled on the database. Defaults to `true`.
  /// [transparentDataEncryptionKeyAutomaticRotationEnabled] Boolean flag to specify whether TDE automatically rotates the encryption Key to latest version or not. Possible values are `true` or `false`. Defaults to `false`.
  /// [transparentDataEncryptionKeyVaultKeyId] The fully versioned `Key Vault` `Key` URL (e.g. `'https://<YourVaultName>.vault.azure.net/keys/<YourKeyName>/<YourKeyVersion>`) to be used as the `Customer Managed Key`(CMK/BYOK) for the `Transparent Data Encryption`(TDE) layer.
  /// [zoneRedundant] Whether or not this database is zone redundant, which means the replicas of this database will be spread across multiple availability zones. This property is only settable for Premium and Business Critical databases.
  DatabaseState({
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
    this.serverId,
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
      'serverId': ?serverId,
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

  factory DatabaseState.fromMap(Map<String, dynamic> map) {
    return DatabaseState(
      autoPauseDelayInMinutes: map['autoPauseDelayInMinutes'] == null ? null : (map['autoPauseDelayInMinutes']! as int).input(),
      collation: map['collation'] == null ? null : (map['collation']! as String).input(),
      createMode: map['createMode'] == null ? null : (map['createMode']! as String).input(),
      creationSourceDatabaseId: map['creationSourceDatabaseId'] == null ? null : (map['creationSourceDatabaseId']! as String).input(),
      elasticPoolId: map['elasticPoolId'] == null ? null : (map['elasticPoolId']! as String).input(),
      enclaveType: map['enclaveType'] == null ? null : (map['enclaveType']! as String).input(),
      geoBackupEnabled: map['geoBackupEnabled'] == null ? null : (map['geoBackupEnabled']! as bool).input(),
      identity: map['identity'] == null ? null : (DatabaseIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      import: map['import'] == null ? null : (DatabaseImport.fromMap((map['import']! as Map).cast<String, dynamic>())).input(),
      ledgerEnabled: map['ledgerEnabled'] == null ? null : (map['ledgerEnabled']! as bool).input(),
      licenseType: map['licenseType'] == null ? null : (map['licenseType']! as String).input(),
      longTermRetentionPolicy: map['longTermRetentionPolicy'] == null ? null : (DatabaseLongTermRetentionPolicy.fromMap((map['longTermRetentionPolicy']! as Map).cast<String, dynamic>())).input(),
      maintenanceConfigurationName: map['maintenanceConfigurationName'] == null ? null : (map['maintenanceConfigurationName']! as String).input(),
      maxSizeGb: map['maxSizeGb'] == null ? null : (map['maxSizeGb']! as double).input(),
      minCapacity: map['minCapacity'] == null ? null : (map['minCapacity']! as double).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      readReplicaCount: map['readReplicaCount'] == null ? null : (map['readReplicaCount']! as int).input(),
      readScale: map['readScale'] == null ? null : (map['readScale']! as bool).input(),
      recoverDatabaseId: map['recoverDatabaseId'] == null ? null : (map['recoverDatabaseId']! as String).input(),
      recoveryPointId: map['recoveryPointId'] == null ? null : (map['recoveryPointId']! as String).input(),
      restoreDroppedDatabaseId: map['restoreDroppedDatabaseId'] == null ? null : (map['restoreDroppedDatabaseId']! as String).input(),
      restoreLongTermRetentionBackupId: map['restoreLongTermRetentionBackupId'] == null ? null : (map['restoreLongTermRetentionBackupId']! as String).input(),
      restorePointInTime: map['restorePointInTime'] == null ? null : (map['restorePointInTime']! as String).input(),
      sampleName: map['sampleName'] == null ? null : (map['sampleName']! as String).input(),
      secondaryType: map['secondaryType'] == null ? null : (map['secondaryType']! as String).input(),
      serverId: map['serverId'] == null ? null : (map['serverId']! as String).input(),
      shortTermRetentionPolicy: map['shortTermRetentionPolicy'] == null ? null : (DatabaseShortTermRetentionPolicy.fromMap((map['shortTermRetentionPolicy']! as Map).cast<String, dynamic>())).input(),
      skuName: map['skuName'] == null ? null : (map['skuName']! as String).input(),
      storageAccountType: map['storageAccountType'] == null ? null : (map['storageAccountType']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      threatDetectionPolicy: map['threatDetectionPolicy'] == null ? null : (DatabaseThreatDetectionPolicy.fromMap((map['threatDetectionPolicy']! as Map).cast<String, dynamic>())).input(),
      transparentDataEncryptionEnabled: map['transparentDataEncryptionEnabled'] == null ? null : (map['transparentDataEncryptionEnabled']! as bool).input(),
      transparentDataEncryptionKeyAutomaticRotationEnabled: map['transparentDataEncryptionKeyAutomaticRotationEnabled'] == null ? null : (map['transparentDataEncryptionKeyAutomaticRotationEnabled']! as bool).input(),
      transparentDataEncryptionKeyVaultKeyId: map['transparentDataEncryptionKeyVaultKeyId'] == null ? null : (map['transparentDataEncryptionKeyVaultKeyId']! as String).input(),
      zoneRedundant: map['zoneRedundant'] == null ? null : (map['zoneRedundant']! as bool).input(),
    );
  }
}

