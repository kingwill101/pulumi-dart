// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_identity.dart';
import 'sku.dart';

/// {@template pulumi_sql_database_args_doc}
/// The set of arguments for Database.
/// {@endtemplate}
/// {@macro pulumi_sql_database_args_doc}
class DatabaseArgs {
  /// Time in minutes after which database is automatically paused. A value of -1 means that automatic pause is disabled
  final pulumi.Input<int>? autoPauseDelay;
  /// Specifies the availability zone the database is pinned to.
  final pulumi.Input<String>? availabilityZone;
  /// Collation of the metadata catalog.
  final pulumi.Input<String>? catalogCollation;
  /// The collation of the database.
  final pulumi.Input<String>? collation;
  /// Specifies the mode of database creation.
  ///
  /// Default: regular database creation.
  ///
  /// Copy: creates a database as a copy of an existing database. sourceDatabaseId must be specified as the resource ID of the source database.
  ///
  /// Secondary: creates a database as a secondary replica of an existing database. sourceDatabaseId must be specified as the resource ID of the existing primary database.
  ///
  /// PointInTimeRestore: Creates a database by restoring a point in time backup of an existing database. sourceDatabaseId must be specified as the resource ID of the existing database, and restorePointInTime must be specified.
  ///
  /// Recovery: Creates a database by restoring a geo-replicated backup. sourceDatabaseId must be specified as the recoverable database resource ID to restore.
  ///
  /// Restore: Creates a database by restoring a backup of a deleted database. sourceDatabaseId must be specified. If sourceDatabaseId is the database's original resource ID, then sourceDatabaseDeletionDate must be specified. Otherwise sourceDatabaseId must be the restorable dropped database resource ID and sourceDatabaseDeletionDate is ignored. restorePointInTime may also be specified to restore from an earlier point in time.
  ///
  /// RestoreLongTermRetentionBackup: Creates a database by restoring from a long term retention vault. recoveryServicesRecoveryPointResourceId must be specified as the recovery point resource ID.
  ///
  /// Copy, Secondary, and RestoreLongTermRetentionBackup are not supported for DataWarehouse edition.
  final pulumi.Input<String>? createMode;
  /// The name of the database.
  final pulumi.Input<String>? databaseName;
  /// The resource identifier of the elastic pool containing this database.
  final pulumi.Input<String>? elasticPoolId;
  /// The azure key vault URI of the database if it's configured with per Database Customer Managed Keys.
  final pulumi.Input<String>? encryptionProtector;
  /// The flag to enable or disable auto rotation of database encryption protector AKV key.
  final pulumi.Input<bool>? encryptionProtectorAutoRotation;
  /// The Client id used for cross tenant per database CMK scenario
  final pulumi.Input<String>? federatedClientId;
  /// Specifies the behavior when monthly free limits are exhausted for the free database.
  ///
  /// AutoPause: The database will be auto paused upon exhaustion of free limits for remainder of the month.
  ///
  /// BillForUsage: The database will continue to be online upon exhaustion of free limits and any overage will be billed.
  final pulumi.Input<String>? freeLimitExhaustionBehavior;
  /// The number of secondary replicas associated with the Business Critical, Premium, or Hyperscale edition database that are used to provide high availability. Not applicable to a Hyperscale database within an elastic pool.
  final pulumi.Input<int>? highAvailabilityReplicaCount;
  /// The Azure Active Directory identity of the database.
  final pulumi.Input<DatabaseIdentity>? identity;
  /// Whether or not this database is a ledger database, which means all tables in the database are ledger tables. Note: the value of this property cannot be changed after the database has been created.
  final pulumi.Input<bool>? isLedgerOn;
  /// The resource ids of the user assigned identities to use
  final pulumi.Input<List<String>>? keys;
  /// The license type to apply for this database. `LicenseIncluded` if you need a license, or `BasePrice` if you have a license and are eligible for the Azure Hybrid Benefit.
  final pulumi.Input<String>? licenseType;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The resource identifier of the long term retention backup associated with create operation of this database.
  final pulumi.Input<String>? longTermRetentionBackupResourceId;
  /// Maintenance configuration id assigned to the database. This configuration defines the period when the maintenance updates will occur.
  final pulumi.Input<String>? maintenanceConfigurationId;
  /// Whether or not customer controlled manual cutover needs to be done during Update Database operation to Hyperscale tier.
  ///
  /// This property is only applicable when scaling database from Business Critical/General Purpose/Premium/Standard tier to Hyperscale tier.
  ///
  /// When manualCutover is specified, the scaling operation will wait for user input to trigger cutover to Hyperscale database.
  ///
  /// To trigger cutover, please provide 'performCutover' parameter when the Scaling operation is in Waiting state.
  final pulumi.Input<bool>? manualCutover;
  /// The max size of the database expressed in bytes.
  final pulumi.Input<double>? maxSizeBytes;
  /// Minimal capacity that database will always have allocated, if not paused
  final pulumi.Input<double>? minCapacity;
  /// To trigger customer controlled manual cutover during the wait state while Scaling operation is in progress.
  ///
  /// This property parameter is only applicable for scaling operations that are initiated along with 'manualCutover' parameter.
  ///
  /// This property is only applicable when scaling database from Business Critical/General Purpose/Premium/Standard tier to Hyperscale tier is already in progress.
  ///
  /// When performCutover is specified, the scaling operation will trigger cutover and perform role-change to Hyperscale database.
  final pulumi.Input<bool>? performCutover;
  /// Type of enclave requested on the database i.e. Default or VBS enclaves.
  final pulumi.Input<String>? preferredEnclaveType;
  /// The state of read-only routing. If enabled, connections that have application intent set to readonly in their connection string may be routed to a readonly secondary replica in the same region. Not applicable to a Hyperscale database within an elastic pool.
  final pulumi.Input<String>? readScale;
  /// The resource identifier of the recoverable database associated with create operation of this database.
  final pulumi.Input<String>? recoverableDatabaseId;
  /// The resource identifier of the recovery point associated with create operation of this database.
  final pulumi.Input<String>? recoveryServicesRecoveryPointId;
  /// The storage account type to be used to store backups for this database.
  final pulumi.Input<String>? requestedBackupStorageRedundancy;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The resource identifier of the restorable dropped database associated with create operation of this database.
  final pulumi.Input<String>? restorableDroppedDatabaseId;
  /// Specifies the point in time (ISO8601 format) of the source database that will be restored to create the new database.
  final pulumi.Input<String>? restorePointInTime;
  /// The name of the sample schema to apply when creating this database.
  final pulumi.Input<String>? sampleName;
  /// The secondary type of the database if it is a secondary.  Valid values are Geo, Named and Standby.
  final pulumi.Input<String>? secondaryType;
  /// The name of the server.
  final pulumi.Input<String> serverName;
  /// The database SKU.
  ///
  /// The list of SKUs may vary by region and support offer. To determine the SKUs (including the SKU name, tier/edition, family, and capacity) that are available to your subscription in an Azure region, use the `Capabilities_ListByLocation` REST API or one of the following commands:
  ///
  /// ```azurecli
  /// az sql db list-editions -l <location> -o table
  /// ````
  ///
  /// ```powershell
  /// Get-AzSqlServerServiceObjective -Location <location>
  /// ````
  final pulumi.Input<Sku>? sku;
  /// Specifies the time that the database was deleted.
  final pulumi.Input<String>? sourceDatabaseDeletionDate;
  /// The resource identifier of the source database associated with create operation of this database.
  final pulumi.Input<String>? sourceDatabaseId;
  /// The resource identifier of the source associated with the create operation of this database.
  ///
  /// This property is only supported for DataWarehouse edition and allows to restore across subscriptions.
  ///
  /// When sourceResourceId is specified, sourceDatabaseId, recoverableDatabaseId, restorableDroppedDatabaseId and sourceDatabaseDeletionDate must not be specified and CreateMode must be PointInTimeRestore, Restore or Recover.
  ///
  /// When createMode is PointInTimeRestore, sourceResourceId must be the resource ID of the existing database or existing sql pool, and restorePointInTime must be specified.
  ///
  /// When createMode is Restore, sourceResourceId must be the resource ID of restorable dropped database or restorable dropped sql pool.
  ///
  /// When createMode is Recover, sourceResourceId must be the resource ID of recoverable database or recoverable sql pool.
  ///
  /// When source subscription belongs to a different tenant than target subscription, “x-ms-authorization-auxiliary” header must contain authentication token for the source tenant. For more details about “x-ms-authorization-auxiliary” header see https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/authenticate-multi-tenant
  final pulumi.Input<String>? sourceResourceId;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Whether or not the database uses free monthly limits. Allowed on one database in a subscription.
  final pulumi.Input<bool>? useFreeLimit;
  /// Whether or not this database is zone redundant, which means the replicas of this database will be spread across multiple availability zones.
  final pulumi.Input<bool>? zoneRedundant;

  /// Creates a new [DatabaseArgs].
  /// [autoPauseDelay] Time in minutes after which database is automatically paused. A value of -1 means that automatic pause is disabled
  /// [availabilityZone] Specifies the availability zone the database is pinned to.
  /// [catalogCollation] Collation of the metadata catalog.
  /// [collation] The collation of the database.
  /// [createMode] Specifies the mode of database creation.
  /// [databaseName] The name of the database.
  /// [elasticPoolId] The resource identifier of the elastic pool containing this database.
  /// [encryptionProtector] The azure key vault URI of the database if it's configured with per Database Customer Managed Keys.
  /// [encryptionProtectorAutoRotation] The flag to enable or disable auto rotation of database encryption protector AKV key.
  /// [federatedClientId] The Client id used for cross tenant per database CMK scenario
  /// [freeLimitExhaustionBehavior] Specifies the behavior when monthly free limits are exhausted for the free database.
  /// [highAvailabilityReplicaCount] The number of secondary replicas associated with the Business Critical, Premium, or Hyperscale edition database that are used to provide high availability. Not applicable to a Hyperscale database within an elastic pool.
  /// [identity] The Azure Active Directory identity of the database.
  /// [isLedgerOn] Whether or not this database is a ledger database, which means all tables in the database are ledger tables. Note: the value of this property cannot be changed after the database has been created.
  /// [keys] The resource ids of the user assigned identities to use
  /// [licenseType] The license type to apply for this database. `LicenseIncluded` if you need a license, or `BasePrice` if you have a license and are eligible for the Azure Hybrid Benefit.
  /// [location] Resource location.
  /// [longTermRetentionBackupResourceId] The resource identifier of the long term retention backup associated with create operation of this database.
  /// [maintenanceConfigurationId] Maintenance configuration id assigned to the database. This configuration defines the period when the maintenance updates will occur.
  /// [manualCutover] Whether or not customer controlled manual cutover needs to be done during Update Database operation to Hyperscale tier.
  /// [maxSizeBytes] The max size of the database expressed in bytes.
  /// [minCapacity] Minimal capacity that database will always have allocated, if not paused
  /// [performCutover] To trigger customer controlled manual cutover during the wait state while Scaling operation is in progress.
  /// [preferredEnclaveType] Type of enclave requested on the database i.e. Default or VBS enclaves.
  /// [readScale] The state of read-only routing. If enabled, connections that have application intent set to readonly in their connection string may be routed to a readonly secondary replica in the same region. Not applicable to a Hyperscale database within an elastic pool.
  /// [recoverableDatabaseId] The resource identifier of the recoverable database associated with create operation of this database.
  /// [recoveryServicesRecoveryPointId] The resource identifier of the recovery point associated with create operation of this database.
  /// [requestedBackupStorageRedundancy] The storage account type to be used to store backups for this database.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [restorableDroppedDatabaseId] The resource identifier of the restorable dropped database associated with create operation of this database.
  /// [restorePointInTime] Specifies the point in time (ISO8601 format) of the source database that will be restored to create the new database.
  /// [sampleName] The name of the sample schema to apply when creating this database.
  /// [secondaryType] The secondary type of the database if it is a secondary.  Valid values are Geo, Named and Standby.
  /// [serverName] The name of the server.
  /// [sku] The database SKU.
  /// [sourceDatabaseDeletionDate] Specifies the time that the database was deleted.
  /// [sourceDatabaseId] The resource identifier of the source database associated with create operation of this database.
  /// [sourceResourceId] The resource identifier of the source associated with the create operation of this database.
  /// [tags] Resource tags.
  /// [useFreeLimit] Whether or not the database uses free monthly limits. Allowed on one database in a subscription.
  /// [zoneRedundant] Whether or not this database is zone redundant, which means the replicas of this database will be spread across multiple availability zones.
  const DatabaseArgs({
    this.autoPauseDelay,
    this.availabilityZone,
    this.catalogCollation,
    this.collation,
    this.createMode,
    this.databaseName,
    this.elasticPoolId,
    this.encryptionProtector,
    this.encryptionProtectorAutoRotation,
    this.federatedClientId,
    this.freeLimitExhaustionBehavior,
    this.highAvailabilityReplicaCount,
    this.identity,
    this.isLedgerOn,
    this.keys,
    this.licenseType,
    this.location,
    this.longTermRetentionBackupResourceId,
    this.maintenanceConfigurationId,
    this.manualCutover,
    this.maxSizeBytes,
    this.minCapacity,
    this.performCutover,
    this.preferredEnclaveType,
    this.readScale,
    this.recoverableDatabaseId,
    this.recoveryServicesRecoveryPointId,
    this.requestedBackupStorageRedundancy,
    required this.resourceGroupName,
    this.restorableDroppedDatabaseId,
    this.restorePointInTime,
    this.sampleName,
    this.secondaryType,
    required this.serverName,
    this.sku,
    this.sourceDatabaseDeletionDate,
    this.sourceDatabaseId,
    this.sourceResourceId,
    this.tags,
    this.useFreeLimit,
    this.zoneRedundant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPauseDelay': ?autoPauseDelay,
      'availabilityZone': ?availabilityZone,
      'catalogCollation': ?catalogCollation,
      'collation': ?collation,
      'createMode': ?createMode,
      'databaseName': ?databaseName,
      'elasticPoolId': ?elasticPoolId,
      'encryptionProtector': ?encryptionProtector,
      'encryptionProtectorAutoRotation': ?encryptionProtectorAutoRotation,
      'federatedClientId': ?federatedClientId,
      'freeLimitExhaustionBehavior': ?freeLimitExhaustionBehavior,
      'highAvailabilityReplicaCount': ?highAvailabilityReplicaCount,
      'identity': ?pulumi.Input.mapOptionalInputValue<DatabaseIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'isLedgerOn': ?isLedgerOn,
      'keys': ?keys,
      'licenseType': ?licenseType,
      'location': ?location,
      'longTermRetentionBackupResourceId': ?longTermRetentionBackupResourceId,
      'maintenanceConfigurationId': ?maintenanceConfigurationId,
      'manualCutover': ?manualCutover,
      'maxSizeBytes': ?maxSizeBytes,
      'minCapacity': ?minCapacity,
      'performCutover': ?performCutover,
      'preferredEnclaveType': ?preferredEnclaveType,
      'readScale': ?readScale,
      'recoverableDatabaseId': ?recoverableDatabaseId,
      'recoveryServicesRecoveryPointId': ?recoveryServicesRecoveryPointId,
      'requestedBackupStorageRedundancy': ?requestedBackupStorageRedundancy,
      'resourceGroupName': resourceGroupName,
      'restorableDroppedDatabaseId': ?restorableDroppedDatabaseId,
      'restorePointInTime': ?restorePointInTime,
      'sampleName': ?sampleName,
      'secondaryType': ?secondaryType,
      'serverName': serverName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'sourceDatabaseDeletionDate': ?sourceDatabaseDeletionDate,
      'sourceDatabaseId': ?sourceDatabaseId,
      'sourceResourceId': ?sourceResourceId,
      'tags': ?tags,
      'useFreeLimit': ?useFreeLimit,
      'zoneRedundant': ?zoneRedundant,
    };
  }

  factory DatabaseArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseArgs(
      autoPauseDelay: (() { final guardedValue = map['autoPauseDelay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      catalogCollation: (() { final guardedValue = map['catalogCollation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      collation: (() { final guardedValue = map['collation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createMode: (() { final guardedValue = map['createMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      elasticPoolId: (() { final guardedValue = map['elasticPoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionProtector: (() { final guardedValue = map['encryptionProtector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionProtectorAutoRotation: (() { final guardedValue = map['encryptionProtectorAutoRotation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      federatedClientId: (() { final guardedValue = map['federatedClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      freeLimitExhaustionBehavior: (() { final guardedValue = map['freeLimitExhaustionBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      highAvailabilityReplicaCount: (() { final guardedValue = map['highAvailabilityReplicaCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatabaseIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      isLedgerOn: (() { final guardedValue = map['isLedgerOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      keys: (() { final guardedValue = map['keys']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      licenseType: (() { final guardedValue = map['licenseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      longTermRetentionBackupResourceId: (() { final guardedValue = map['longTermRetentionBackupResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintenanceConfigurationId: (() { final guardedValue = map['maintenanceConfigurationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      manualCutover: (() { final guardedValue = map['manualCutover']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxSizeBytes: (() { final guardedValue = map['maxSizeBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      minCapacity: (() { final guardedValue = map['minCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      performCutover: (() { final guardedValue = map['performCutover']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      preferredEnclaveType: (() { final guardedValue = map['preferredEnclaveType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      readScale: (() { final guardedValue = map['readScale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoverableDatabaseId: (() { final guardedValue = map['recoverableDatabaseId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryServicesRecoveryPointId: (() { final guardedValue = map['recoveryServicesRecoveryPointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestedBackupStorageRedundancy: (() { final guardedValue = map['requestedBackupStorageRedundancy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      restorableDroppedDatabaseId: (() { final guardedValue = map['restorableDroppedDatabaseId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restorePointInTime: (() { final guardedValue = map['restorePointInTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sampleName: (() { final guardedValue = map['sampleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryType: (() { final guardedValue = map['secondaryType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Sku.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceDatabaseDeletionDate: (() { final guardedValue = map['sourceDatabaseDeletionDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceDatabaseId: (() { final guardedValue = map['sourceDatabaseId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceResourceId: (() { final guardedValue = map['sourceResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      useFreeLimit: (() { final guardedValue = map['useFreeLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      zoneRedundant: (() { final guardedValue = map['zoneRedundant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
