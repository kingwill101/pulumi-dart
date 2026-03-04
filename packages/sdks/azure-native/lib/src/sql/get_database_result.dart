// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_identity_response.dart';
import 'database_key_response.dart';
import 'sku_response.dart';

/// Result data returned by getDatabase.
class GetDatabaseResult {
  /// Time in minutes after which database is automatically paused. A value of -1 means that automatic pause is disabled
  final int? autoPauseDelay;

  /// Specifies the availability zone the database is pinned to.
  final String? availabilityZone;

  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Collation of the metadata catalog.
  final String? catalogCollation;

  /// The collation of the database.
  final String? collation;

  /// The creation date of the database (ISO8601 format).
  final String creationDate;

  /// The storage account type used to store backups for this database.
  final String currentBackupStorageRedundancy;

  /// The current service level objective name of the database.
  final String currentServiceObjectiveName;

  /// The name and tier of the SKU.
  final SkuResponse currentSku;

  /// The ID of the database.
  final String databaseId;

  /// The default secondary region for this database.
  final String defaultSecondaryLocation;

  /// This records the earliest start date and time that restore is available for this database (ISO8601 format).
  final String earliestRestoreDate;

  /// The resource identifier of the elastic pool containing this database.
  final String? elasticPoolId;

  /// The azure key vault URI of the database if it's configured with per Database Customer Managed Keys.
  final String? encryptionProtector;

  /// The flag to enable or disable auto rotation of database encryption protector AKV key.
  final bool? encryptionProtectorAutoRotation;

  /// Failover Group resource identifier that this database belongs to.
  final String failoverGroupId;

  /// The Client id used for cross tenant per database CMK scenario
  final String? federatedClientId;

  /// Specifies the behavior when monthly free limits are exhausted for the free database.
  ///
  /// AutoPause: The database will be auto paused upon exhaustion of free limits for remainder of the month.
  ///
  /// BillForUsage: The database will continue to be online upon exhaustion of free limits and any overage will be billed.
  final String? freeLimitExhaustionBehavior;

  /// The number of secondary replicas associated with the Business Critical, Premium, or Hyperscale edition database that are used to provide high availability. Not applicable to a Hyperscale database within an elastic pool.
  final int? highAvailabilityReplicaCount;

  /// Resource ID.
  final String id;

  /// The Azure Active Directory identity of the database.
  final DatabaseIdentityResponse? identity;

  /// Infra encryption is enabled for this database.
  final bool isInfraEncryptionEnabled;

  /// Whether or not this database is a ledger database, which means all tables in the database are ledger tables. Note: the value of this property cannot be changed after the database has been created.
  final bool? isLedgerOn;

  /// The resource ids of the user assigned identities to use
  final Map<String, DatabaseKeyResponse>? keys;

  /// Kind of database. This is metadata used for the Azure portal experience.
  final String kind;

  /// The license type to apply for this database. `LicenseIncluded` if you need a license, or `BasePrice` if you have a license and are eligible for the Azure Hybrid Benefit.
  final String? licenseType;

  /// Resource location.
  final String location;

  /// Maintenance configuration id assigned to the database. This configuration defines the period when the maintenance updates will occur.
  final String? maintenanceConfigurationId;

  /// Resource that manages the database.
  final String managedBy;

  /// Whether or not customer controlled manual cutover needs to be done during Update Database operation to Hyperscale tier.
  ///
  /// This property is only applicable when scaling database from Business Critical/General Purpose/Premium/Standard tier to Hyperscale tier.
  ///
  /// When manualCutover is specified, the scaling operation will wait for user input to trigger cutover to Hyperscale database.
  ///
  /// To trigger cutover, please provide 'performCutover' parameter when the Scaling operation is in Waiting state.
  final bool? manualCutover;

  /// The max log size for this database.
  final double maxLogSizeBytes;

  /// The max size of the database expressed in bytes.
  final double? maxSizeBytes;

  /// Minimal capacity that database will always have allocated, if not paused
  final double? minCapacity;

  /// Resource name.
  final String name;

  /// The date when database was paused by user configuration or action(ISO8601 format). Null if the database is ready.
  final String pausedDate;

  /// To trigger customer controlled manual cutover during the wait state while Scaling operation is in progress.
  ///
  /// This property parameter is only applicable for scaling operations that are initiated along with 'manualCutover' parameter.
  ///
  /// This property is only applicable when scaling database from Business Critical/General Purpose/Premium/Standard tier to Hyperscale tier is already in progress.
  ///
  /// When performCutover is specified, the scaling operation will trigger cutover and perform role-change to Hyperscale database.
  final bool? performCutover;

  /// Type of enclave requested on the database i.e. Default or VBS enclaves.
  final String? preferredEnclaveType;

  /// The state of read-only routing. If enabled, connections that have application intent set to readonly in their connection string may be routed to a readonly secondary replica in the same region. Not applicable to a Hyperscale database within an elastic pool.
  final String? readScale;

  /// The storage account type to be used to store backups for this database.
  final String? requestedBackupStorageRedundancy;

  /// The requested service level objective name of the database.
  final String requestedServiceObjectiveName;

  /// The date when database was resumed by user action or database login (ISO8601 format). Null if the database is paused.
  final String resumedDate;

  /// The secondary type of the database if it is a secondary.  Valid values are Geo, Named and Standby.
  final String? secondaryType;

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
  final SkuResponse? sku;

  /// The status of the database.
  final String status;

  /// Resource tags.
  final Map<String, String>? tags;

  /// Resource type.
  final String type;

  /// Whether or not the database uses free monthly limits. Allowed on one database in a subscription.
  final bool? useFreeLimit;

  /// Whether or not this database is zone redundant, which means the replicas of this database will be spread across multiple availability zones.
  final bool? zoneRedundant;

  /// Creates a new [GetDatabaseResult].
  /// [autoPauseDelay] Time in minutes after which database is automatically paused. A value of -1 means that automatic pause is disabled
  /// [availabilityZone] Specifies the availability zone the database is pinned to.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [catalogCollation] Collation of the metadata catalog.
  /// [collation] The collation of the database.
  /// [creationDate] The creation date of the database (ISO8601 format).
  /// [currentBackupStorageRedundancy] The storage account type used to store backups for this database.
  /// [currentServiceObjectiveName] The current service level objective name of the database.
  /// [currentSku] The name and tier of the SKU.
  /// [databaseId] The ID of the database.
  /// [defaultSecondaryLocation] The default secondary region for this database.
  /// [earliestRestoreDate] This records the earliest start date and time that restore is available for this database (ISO8601 format).
  /// [elasticPoolId] The resource identifier of the elastic pool containing this database.
  /// [encryptionProtector] The azure key vault URI of the database if it's configured with per Database Customer Managed Keys.
  /// [encryptionProtectorAutoRotation] The flag to enable or disable auto rotation of database encryption protector AKV key.
  /// [failoverGroupId] Failover Group resource identifier that this database belongs to.
  /// [federatedClientId] The Client id used for cross tenant per database CMK scenario
  /// [freeLimitExhaustionBehavior] Specifies the behavior when monthly free limits are exhausted for the free database.
  /// [highAvailabilityReplicaCount] The number of secondary replicas associated with the Business Critical, Premium, or Hyperscale edition database that are used to provide high availability. Not applicable to a Hyperscale database within an elastic pool.
  /// [id] Resource ID.
  /// [identity] The Azure Active Directory identity of the database.
  /// [isInfraEncryptionEnabled] Infra encryption is enabled for this database.
  /// [isLedgerOn] Whether or not this database is a ledger database, which means all tables in the database are ledger tables. Note: the value of this property cannot be changed after the database has been created.
  /// [keys] The resource ids of the user assigned identities to use
  /// [kind] Kind of database. This is metadata used for the Azure portal experience.
  /// [licenseType] The license type to apply for this database. `LicenseIncluded` if you need a license, or `BasePrice` if you have a license and are eligible for the Azure Hybrid Benefit.
  /// [location] Resource location.
  /// [maintenanceConfigurationId] Maintenance configuration id assigned to the database. This configuration defines the period when the maintenance updates will occur.
  /// [managedBy] Resource that manages the database.
  /// [manualCutover] Whether or not customer controlled manual cutover needs to be done during Update Database operation to Hyperscale tier.
  /// [maxLogSizeBytes] The max log size for this database.
  /// [maxSizeBytes] The max size of the database expressed in bytes.
  /// [minCapacity] Minimal capacity that database will always have allocated, if not paused
  /// [name] Resource name.
  /// [pausedDate] The date when database was paused by user configuration or action(ISO8601 format). Null if the database is ready.
  /// [performCutover] To trigger customer controlled manual cutover during the wait state while Scaling operation is in progress.
  /// [preferredEnclaveType] Type of enclave requested on the database i.e. Default or VBS enclaves.
  /// [readScale] The state of read-only routing. If enabled, connections that have application intent set to readonly in their connection string may be routed to a readonly secondary replica in the same region. Not applicable to a Hyperscale database within an elastic pool.
  /// [requestedBackupStorageRedundancy] The storage account type to be used to store backups for this database.
  /// [requestedServiceObjectiveName] The requested service level objective name of the database.
  /// [resumedDate] The date when database was resumed by user action or database login (ISO8601 format). Null if the database is paused.
  /// [secondaryType] The secondary type of the database if it is a secondary.  Valid values are Geo, Named and Standby.
  /// [sku] The database SKU.
  /// [status] The status of the database.
  /// [tags] Resource tags.
  /// [type] Resource type.
  /// [useFreeLimit] Whether or not the database uses free monthly limits. Allowed on one database in a subscription.
  /// [zoneRedundant] Whether or not this database is zone redundant, which means the replicas of this database will be spread across multiple availability zones.
  GetDatabaseResult({
    this.autoPauseDelay,
    this.availabilityZone,
    required this.azureApiVersion,
    this.catalogCollation,
    this.collation,
    required this.creationDate,
    required this.currentBackupStorageRedundancy,
    required this.currentServiceObjectiveName,
    required this.currentSku,
    required this.databaseId,
    required this.defaultSecondaryLocation,
    required this.earliestRestoreDate,
    this.elasticPoolId,
    this.encryptionProtector,
    this.encryptionProtectorAutoRotation,
    required this.failoverGroupId,
    this.federatedClientId,
    this.freeLimitExhaustionBehavior,
    this.highAvailabilityReplicaCount,
    required this.id,
    this.identity,
    required this.isInfraEncryptionEnabled,
    this.isLedgerOn,
    this.keys,
    required this.kind,
    this.licenseType,
    required this.location,
    this.maintenanceConfigurationId,
    required this.managedBy,
    this.manualCutover,
    required this.maxLogSizeBytes,
    this.maxSizeBytes,
    this.minCapacity,
    required this.name,
    required this.pausedDate,
    this.performCutover,
    this.preferredEnclaveType,
    this.readScale,
    this.requestedBackupStorageRedundancy,
    required this.requestedServiceObjectiveName,
    required this.resumedDate,
    this.secondaryType,
    this.sku,
    required this.status,
    this.tags,
    required this.type,
    this.useFreeLimit,
    this.zoneRedundant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPauseDelay': ?autoPauseDelay,
      'availabilityZone': ?availabilityZone,
      'azureApiVersion': azureApiVersion,
      'catalogCollation': ?catalogCollation,
      'collation': ?collation,
      'creationDate': creationDate,
      'currentBackupStorageRedundancy': currentBackupStorageRedundancy,
      'currentServiceObjectiveName': currentServiceObjectiveName,
      'currentSku': currentSku.toMap(),
      'databaseId': databaseId,
      'defaultSecondaryLocation': defaultSecondaryLocation,
      'earliestRestoreDate': earliestRestoreDate,
      'elasticPoolId': ?elasticPoolId,
      'encryptionProtector': ?encryptionProtector,
      'encryptionProtectorAutoRotation': ?encryptionProtectorAutoRotation,
      'failoverGroupId': failoverGroupId,
      'federatedClientId': ?federatedClientId,
      'freeLimitExhaustionBehavior': ?freeLimitExhaustionBehavior,
      'highAvailabilityReplicaCount': ?highAvailabilityReplicaCount,
      'id': id,
      'identity': ?identity?.toMap(),
      'isInfraEncryptionEnabled': isInfraEncryptionEnabled,
      'isLedgerOn': ?isLedgerOn,
      'keys': ?(() {
        final guardedValue = keys;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeMapValues<
          DatabaseKeyResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'kind': kind,
      'licenseType': ?licenseType,
      'location': location,
      'maintenanceConfigurationId': ?maintenanceConfigurationId,
      'managedBy': managedBy,
      'manualCutover': ?manualCutover,
      'maxLogSizeBytes': maxLogSizeBytes,
      'maxSizeBytes': ?maxSizeBytes,
      'minCapacity': ?minCapacity,
      'name': name,
      'pausedDate': pausedDate,
      'performCutover': ?performCutover,
      'preferredEnclaveType': ?preferredEnclaveType,
      'readScale': ?readScale,
      'requestedBackupStorageRedundancy': ?requestedBackupStorageRedundancy,
      'requestedServiceObjectiveName': requestedServiceObjectiveName,
      'resumedDate': resumedDate,
      'secondaryType': ?secondaryType,
      'sku': ?sku?.toMap(),
      'status': status,
      'tags': ?tags,
      'type': type,
      'useFreeLimit': ?useFreeLimit,
      'zoneRedundant': ?zoneRedundant,
    };
  }

  factory GetDatabaseResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseResult(
      autoPauseDelay: (() {
        final guardedValue = map['autoPauseDelay'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      availabilityZone: (() {
        final guardedValue = map['availabilityZone'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      azureApiVersion: map['azureApiVersion'] as String,
      catalogCollation: (() {
        final guardedValue = map['catalogCollation'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      collation: (() {
        final guardedValue = map['collation'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      creationDate: map['creationDate'] as String,
      currentBackupStorageRedundancy:
          map['currentBackupStorageRedundancy'] as String,
      currentServiceObjectiveName: map['currentServiceObjectiveName'] as String,
      currentSku: SkuResponse.fromMap(
        (map['currentSku']! as Map).cast<String, dynamic>(),
      ),
      databaseId: map['databaseId'] as String,
      defaultSecondaryLocation: map['defaultSecondaryLocation'] as String,
      earliestRestoreDate: map['earliestRestoreDate'] as String,
      elasticPoolId: (() {
        final guardedValue = map['elasticPoolId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      encryptionProtector: (() {
        final guardedValue = map['encryptionProtector'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      encryptionProtectorAutoRotation: (() {
        final guardedValue = map['encryptionProtectorAutoRotation'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      failoverGroupId: map['failoverGroupId'] as String,
      federatedClientId: (() {
        final guardedValue = map['federatedClientId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      freeLimitExhaustionBehavior: (() {
        final guardedValue = map['freeLimitExhaustionBehavior'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      highAvailabilityReplicaCount: (() {
        final guardedValue = map['highAvailabilityReplicaCount'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      id: map['id'] as String,
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return DatabaseIdentityResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      isInfraEncryptionEnabled: map['isInfraEncryptionEnabled'] as bool,
      isLedgerOn: (() {
        final guardedValue = map['isLedgerOn'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      keys: (() {
        final guardedValue = map['keys'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeMapValues<DatabaseKeyResponse>(
          guardedValue,
          (value) => DatabaseKeyResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      kind: map['kind'] as String,
      licenseType: (() {
        final guardedValue = map['licenseType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      location: map['location'] as String,
      maintenanceConfigurationId: (() {
        final guardedValue = map['maintenanceConfigurationId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      managedBy: map['managedBy'] as String,
      manualCutover: (() {
        final guardedValue = map['manualCutover'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      maxLogSizeBytes: map['maxLogSizeBytes'] as double,
      maxSizeBytes: (() {
        final guardedValue = map['maxSizeBytes'];
        if (guardedValue == null) return null;
        return guardedValue as double;
      })(),
      minCapacity: (() {
        final guardedValue = map['minCapacity'];
        if (guardedValue == null) return null;
        return guardedValue as double;
      })(),
      name: map['name'] as String,
      pausedDate: map['pausedDate'] as String,
      performCutover: (() {
        final guardedValue = map['performCutover'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      preferredEnclaveType: (() {
        final guardedValue = map['preferredEnclaveType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      readScale: (() {
        final guardedValue = map['readScale'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      requestedBackupStorageRedundancy: (() {
        final guardedValue = map['requestedBackupStorageRedundancy'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      requestedServiceObjectiveName:
          map['requestedServiceObjectiveName'] as String,
      resumedDate: map['resumedDate'] as String,
      secondaryType: (() {
        final guardedValue = map['secondaryType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      sku: (() {
        final guardedValue = map['sku'];
        if (guardedValue == null) return null;
        return SkuResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      status: map['status'] as String,
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      type: map['type'] as String,
      useFreeLimit: (() {
        final guardedValue = map['useFreeLimit'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      zoneRedundant: (() {
        final guardedValue = map['zoneRedundant'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
    );
  }
}
