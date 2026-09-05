// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_autonomous_database_long_term_backup_schedule.dart';

/// Result data returned by getAutonomousDatabase.
class GetAutonomousDatabaseResult {
  /// The current amount of storage in use for user and system data, in terabytes (TB).
  final double? actualUsedDataStorageSizeInTbs;
  /// The amount of storage currently allocated for the database tables and billed for, rounded up. When auto-scaling is not enabled, this value is equal to the `dataStorageSizeInTBs` value. You can compare this value to the `actualUsedDataStorageSizeInTBs` value to determine if a manual shrink operation is appropriate for your allocated storage.
  final double? allocatedStorageSizeInTbs;
  /// The client IP access control list (ACL). This feature is available for [Autonomous Database Serverless] (https://docs.oracle.com/en/cloud/paas/autonomous-database/index.html) and on Exadata Cloud@Customer. Only clients connecting from an IP address included in the ACL may access the Autonomous Database instance. If `arePrimaryWhitelistedIpsUsed` is 'TRUE' then Autonomous Database uses this primary's IP access control list (ACL) for the disaster recovery peer called `standbywhitelistedips`.
  final List<int>? allowedIps;
  /// Indicates if auto scaling is enabled for the Autonomous Database CPU core count.
  final bool? autoScalingEnabled;
  /// Indicates if auto scaling is enabled for the Autonomous Database storage.
  final bool? autoScalingForStorageEnabled;
  /// The database [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm).
  final String? autonomousDatabaseId;
  /// List of Oracle Database versions available for a database upgrade. If there are no version upgrades available, this list is empty.
  final List<String>? availableUpgradeVersions;
  /// Retention period, in days, for backups.
  final int? backupRetentionPeriodInDays;
  /// The character set for the autonomous database.
  final String? characterSet;
  /// The compute amount (CPUs) available to the database.
  final double? computeCount;
  /// The number of CPU cores to be made available to the database. When the ECPU is selected, the value for cpuCoreCount is 0. For Autonomous Database on Dedicated Exadata infrastructure, the maximum number of cores is determined by the infrastructure shape. See [Characteristics of Infrastructure Shapes](https://www.oracle.com/pls/topic/lookup?ctx=en/cloud/paas/autonomous-database&id=ATPFG-GUID-B0F033C1-CC5A-42F0-B2E7-3CECFEDA1FD1) for shape details.
  final int? cpuCoreCount;
  /// The quantity of data in the database, in gigabytes.
  final int? dataStorageSizeInGbs;
  /// The maximum storage that can be allocated for the database, in terabytes.
  final int? dataStorageSizeInTbs;
  /// The DB node storage size in, in gigabytes.
  final int? dbNodeStorageSizeInGbs;
  /// A valid Oracle Database version for Autonomous Database.
  final String? dbVersion;
  /// The user-friendly name for the Autonomous Database. The name does not have to be unique.
  final String? displayName;
  /// Indicates the number of seconds of data loss for a Data Guard failover.
  final int? failedDataRecoveryInSeconds;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The area assigned to In-Memory tables in Autonomous Database.
  final int? inMemoryAreaInGbs;
  /// Information about the current lifecycle state.
  final String? lifecycleDetails;
  /// Parameter that allows users to select an acceptable maximum data loss limit in seconds, up to which Automatic Failover will be triggered when necessary for a Local Autonomous Data Guard
  final int? localAdgAutoFailoverMaxDataLossLimit;
  /// Indicates whether the Autonomous Database has local (in-region) Data Guard enabled. Not applicable to cross-region Autonomous Data Guard associations, or to Autonomous Databases using dedicated Exadata infrastructure or Exadata Cloud@Customer infrastructure.
  final bool? localDataGuardEnabled;
  /// The Azure Region where the Autonomous Database exists.
  final String? location;
  /// A `longTermBackupSchedule` block as defined below
  final List<GetAutonomousDatabaseLongTermBackupSchedule>? longTermBackupSchedules;
  /// The amount of memory (in GBs) enabled per ECPU or OCPU.
  final int? memoryPerOracleComputeUnitInGbs;
  /// Specifies if the Autonomous Database requires mTLS connections.
  final bool? mtlsConnectionRequired;
  final String? name;
  /// The national character set for the autonomous database.  The default is AL16UTF16. Allowed values are: AL16UTF16 or UTF8.
  final String? nationalCharacterSet;
  /// The date and time when the next long-term backup would be created.
  final String? nextLongTermBackupTimeStamp;
  /// The URL of the resource in the OCI console.
  final String? ociUrl;
  /// The [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) of the autonomous database.
  final String? ocid;
  final String? peerDbId;
  /// The list of [OCIDs](https://docs.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of standby databases located in Autonomous Data Guard remote regions that are associated with the source database. Note that for Autonomous Database Serverless instances, standby databases located in the same region as the source primary database do not have OCIDs.
  final List<String>? peerDbIds;
  /// Indicates if the Autonomous Database version is a preview version.
  final bool? preview;
  /// Indicates if the Autonomous Database version is a preview version with service terms accepted.
  final bool? previewVersionWithServiceTermsAccepted;
  /// The private endpoint for the resource.
  final String? privateEndpoint;
  /// The private endpoint Ip address for the resource.
  final String? privateEndpointIp;
  /// The private endpoint label for the resource.
  final String? privateEndpointLabel;
  /// An array of CPU values that an Autonomous Database can be scaled to.
  final List<int>? provisionableCpuses;
  /// Indicates whether the Autonomous Database has Cross Region Data Guard enabled. Not applicable to Autonomous Databases using dedicated Exadata infrastructure or Exadata Cloud@Customer infrastructure.
  final bool? remoteDataGuardEnabled;
  final String? resourceGroupName;
  /// The URL of the Service Console for the Autonomous Database.
  final String? serviceConsoleUrl;
  /// The URL of the SQL web developer.
  final String? sqlWebDeveloperUrl;
  /// The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the subnet the resource is associated with.
  final String? subnetId;
  /// The list of regions that support the creation of an Autonomous Database clone or an Autonomous Data Guard standby database.
  final List<String>? supportedRegionsToCloneTos;
  /// A mapping of tags assigned to the Autonomous Database.
  final Map<String, String>? tags;
  /// The date and time the Autonomous Database was created.
  final String? timeCreated;
  /// The date and time the Autonomous Data Guard role was switched for the Autonomous Database. For databases that have standbys in both the primary Data Guard region and a remote Data Guard standby region, this is the latest timestamp of either the database using the "primary" role in the primary Data Guard region, or database located in the remote Data Guard standby region.
  final String? timeDataGuardRoleChanged;
  /// The date and time the Always Free database will be automatically deleted because of inactivity. If the database is in the STOPPED state and without activity until this time, it will be deleted.
  final String? timeDeletionOfFreeAutonomousDatabase;
  /// The date and time that Autonomous Data Guard was enabled for an Autonomous Database where the standby was provisioned in the same region as the primary database.
  final String? timeLocalDataGuardEnabledOn;
  /// The date and time when maintenance will begin.
  final String? timeMaintenanceBegin;
  /// The date and time when maintenance will end.
  final String? timeMaintenanceEnd;
  /// The timestamp of the last failover operation.
  final String? timeOfLastFailover;
  /// The date and time when last refresh happened.
  final String? timeOfLastRefresh;
  /// The refresh point timestamp (UTC). The refresh point is the time to which the database was most recently refreshed. Data created after the refresh point is not included in the refresh.
  final String? timeOfLastRefreshPoint;
  /// The timestamp of the last switchover operation for the Autonomous Database.
  final String? timeOfLastSwitchover;
  /// The date and time the Always Free database will be stopped because of inactivity. If this time is reached without any database activity, the database will automatically be put into the STOPPED state.
  final String? timeReclamationOfFreeAutonomousDatabase;
  /// The storage space consumed by Autonomous Database in GBs.
  final int? usedDataStorageSizeInGbs;
  /// The amount of storage that has been used, in terabytes.
  final int? usedDataStorageSizeInTbs;
  /// The ID to an Azure Resource Manager vnet resource.
  final String? virtualNetworkId;

  /// Creates a new [GetAutonomousDatabaseResult].
  /// [actualUsedDataStorageSizeInTbs] The current amount of storage in use for user and system data, in terabytes (TB).
  /// [allocatedStorageSizeInTbs] The amount of storage currently allocated for the database tables and billed for, rounded up. When auto-scaling is not enabled, this value is equal to the `dataStorageSizeInTBs` value. You can compare this value to the `actualUsedDataStorageSizeInTBs` value to determine if a manual shrink operation is appropriate for your allocated storage.
  /// [allowedIps] The client IP access control list (ACL). This feature is available for [Autonomous Database Serverless] (https://docs.oracle.com/en/cloud/paas/autonomous-database/index.html) and on Exadata Cloud@Customer. Only clients connecting from an IP address included in the ACL may access the Autonomous Database instance. If `arePrimaryWhitelistedIpsUsed` is 'TRUE' then Autonomous Database uses this primary's IP access control list (ACL) for the disaster recovery peer called `standbywhitelistedips`.
  /// [autoScalingEnabled] Indicates if auto scaling is enabled for the Autonomous Database CPU core count.
  /// [autoScalingForStorageEnabled] Indicates if auto scaling is enabled for the Autonomous Database storage.
  /// [autonomousDatabaseId] The database [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm).
  /// [availableUpgradeVersions] List of Oracle Database versions available for a database upgrade. If there are no version upgrades available, this list is empty.
  /// [backupRetentionPeriodInDays] Retention period, in days, for backups.
  /// [characterSet] The character set for the autonomous database.
  /// [computeCount] The compute amount (CPUs) available to the database.
  /// [cpuCoreCount] The number of CPU cores to be made available to the database. When the ECPU is selected, the value for cpuCoreCount is 0. For Autonomous Database on Dedicated Exadata infrastructure, the maximum number of cores is determined by the infrastructure shape. See [Characteristics of Infrastructure Shapes](https://www.oracle.com/pls/topic/lookup?ctx=en/cloud/paas/autonomous-database&id=ATPFG-GUID-B0F033C1-CC5A-42F0-B2E7-3CECFEDA1FD1) for shape details.
  /// [dataStorageSizeInGbs] The quantity of data in the database, in gigabytes.
  /// [dataStorageSizeInTbs] The maximum storage that can be allocated for the database, in terabytes.
  /// [dbNodeStorageSizeInGbs] The DB node storage size in, in gigabytes.
  /// [dbVersion] A valid Oracle Database version for Autonomous Database.
  /// [displayName] The user-friendly name for the Autonomous Database. The name does not have to be unique.
  /// [failedDataRecoveryInSeconds] Indicates the number of seconds of data loss for a Data Guard failover.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [inMemoryAreaInGbs] The area assigned to In-Memory tables in Autonomous Database.
  /// [lifecycleDetails] Information about the current lifecycle state.
  /// [localAdgAutoFailoverMaxDataLossLimit] Parameter that allows users to select an acceptable maximum data loss limit in seconds, up to which Automatic Failover will be triggered when necessary for a Local Autonomous Data Guard
  /// [localDataGuardEnabled] Indicates whether the Autonomous Database has local (in-region) Data Guard enabled. Not applicable to cross-region Autonomous Data Guard associations, or to Autonomous Databases using dedicated Exadata infrastructure or Exadata Cloud@Customer infrastructure.
  /// [location] The Azure Region where the Autonomous Database exists.
  /// [longTermBackupSchedules] A `longTermBackupSchedule` block as defined below
  /// [memoryPerOracleComputeUnitInGbs] The amount of memory (in GBs) enabled per ECPU or OCPU.
  /// [mtlsConnectionRequired] Specifies if the Autonomous Database requires mTLS connections.
  /// [name] Optional.
  /// [nationalCharacterSet] The national character set for the autonomous database.  The default is AL16UTF16. Allowed values are: AL16UTF16 or UTF8.
  /// [nextLongTermBackupTimeStamp] The date and time when the next long-term backup would be created.
  /// [ociUrl] The URL of the resource in the OCI console.
  /// [ocid] The [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) of the autonomous database.
  /// [peerDbId] Optional.
  /// [peerDbIds] The list of [OCIDs](https://docs.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of standby databases located in Autonomous Data Guard remote regions that are associated with the source database. Note that for Autonomous Database Serverless instances, standby databases located in the same region as the source primary database do not have OCIDs.
  /// [preview] Indicates if the Autonomous Database version is a preview version.
  /// [previewVersionWithServiceTermsAccepted] Indicates if the Autonomous Database version is a preview version with service terms accepted.
  /// [privateEndpoint] The private endpoint for the resource.
  /// [privateEndpointIp] The private endpoint Ip address for the resource.
  /// [privateEndpointLabel] The private endpoint label for the resource.
  /// [provisionableCpuses] An array of CPU values that an Autonomous Database can be scaled to.
  /// [remoteDataGuardEnabled] Indicates whether the Autonomous Database has Cross Region Data Guard enabled. Not applicable to Autonomous Databases using dedicated Exadata infrastructure or Exadata Cloud@Customer infrastructure.
  /// [resourceGroupName] Optional.
  /// [serviceConsoleUrl] The URL of the Service Console for the Autonomous Database.
  /// [sqlWebDeveloperUrl] The URL of the SQL web developer.
  /// [subnetId] The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the subnet the resource is associated with.
  /// [supportedRegionsToCloneTos] The list of regions that support the creation of an Autonomous Database clone or an Autonomous Data Guard standby database.
  /// [tags] A mapping of tags assigned to the Autonomous Database.
  /// [timeCreated] The date and time the Autonomous Database was created.
  /// [timeDataGuardRoleChanged] The date and time the Autonomous Data Guard role was switched for the Autonomous Database. For databases that have standbys in both the primary Data Guard region and a remote Data Guard standby region, this is the latest timestamp of either the database using the "primary" role in the primary Data Guard region, or database located in the remote Data Guard standby region.
  /// [timeDeletionOfFreeAutonomousDatabase] The date and time the Always Free database will be automatically deleted because of inactivity. If the database is in the STOPPED state and without activity until this time, it will be deleted.
  /// [timeLocalDataGuardEnabledOn] The date and time that Autonomous Data Guard was enabled for an Autonomous Database where the standby was provisioned in the same region as the primary database.
  /// [timeMaintenanceBegin] The date and time when maintenance will begin.
  /// [timeMaintenanceEnd] The date and time when maintenance will end.
  /// [timeOfLastFailover] The timestamp of the last failover operation.
  /// [timeOfLastRefresh] The date and time when last refresh happened.
  /// [timeOfLastRefreshPoint] The refresh point timestamp (UTC). The refresh point is the time to which the database was most recently refreshed. Data created after the refresh point is not included in the refresh.
  /// [timeOfLastSwitchover] The timestamp of the last switchover operation for the Autonomous Database.
  /// [timeReclamationOfFreeAutonomousDatabase] The date and time the Always Free database will be stopped because of inactivity. If this time is reached without any database activity, the database will automatically be put into the STOPPED state.
  /// [usedDataStorageSizeInGbs] The storage space consumed by Autonomous Database in GBs.
  /// [usedDataStorageSizeInTbs] The amount of storage that has been used, in terabytes.
  /// [virtualNetworkId] The ID to an Azure Resource Manager vnet resource.
  const GetAutonomousDatabaseResult({
    this.actualUsedDataStorageSizeInTbs,
    this.allocatedStorageSizeInTbs,
    this.allowedIps,
    this.autoScalingEnabled,
    this.autoScalingForStorageEnabled,
    this.autonomousDatabaseId,
    this.availableUpgradeVersions,
    this.backupRetentionPeriodInDays,
    this.characterSet,
    this.computeCount,
    this.cpuCoreCount,
    this.dataStorageSizeInGbs,
    this.dataStorageSizeInTbs,
    this.dbNodeStorageSizeInGbs,
    this.dbVersion,
    this.displayName,
    this.failedDataRecoveryInSeconds,
    this.id,
    this.inMemoryAreaInGbs,
    this.lifecycleDetails,
    this.localAdgAutoFailoverMaxDataLossLimit,
    this.localDataGuardEnabled,
    this.location,
    this.longTermBackupSchedules,
    this.memoryPerOracleComputeUnitInGbs,
    this.mtlsConnectionRequired,
    this.name,
    this.nationalCharacterSet,
    this.nextLongTermBackupTimeStamp,
    this.ociUrl,
    this.ocid,
    this.peerDbId,
    this.peerDbIds,
    this.preview,
    this.previewVersionWithServiceTermsAccepted,
    this.privateEndpoint,
    this.privateEndpointIp,
    this.privateEndpointLabel,
    this.provisionableCpuses,
    this.remoteDataGuardEnabled,
    this.resourceGroupName,
    this.serviceConsoleUrl,
    this.sqlWebDeveloperUrl,
    this.subnetId,
    this.supportedRegionsToCloneTos,
    this.tags,
    this.timeCreated,
    this.timeDataGuardRoleChanged,
    this.timeDeletionOfFreeAutonomousDatabase,
    this.timeLocalDataGuardEnabledOn,
    this.timeMaintenanceBegin,
    this.timeMaintenanceEnd,
    this.timeOfLastFailover,
    this.timeOfLastRefresh,
    this.timeOfLastRefreshPoint,
    this.timeOfLastSwitchover,
    this.timeReclamationOfFreeAutonomousDatabase,
    this.usedDataStorageSizeInGbs,
    this.usedDataStorageSizeInTbs,
    this.virtualNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actualUsedDataStorageSizeInTbs': ?actualUsedDataStorageSizeInTbs,
      'allocatedStorageSizeInTbs': ?allocatedStorageSizeInTbs,
      'allowedIps': ?allowedIps,
      'autoScalingEnabled': ?autoScalingEnabled,
      'autoScalingForStorageEnabled': ?autoScalingForStorageEnabled,
      'autonomousDatabaseId': ?autonomousDatabaseId,
      'availableUpgradeVersions': ?availableUpgradeVersions,
      'backupRetentionPeriodInDays': ?backupRetentionPeriodInDays,
      'characterSet': ?characterSet,
      'computeCount': ?computeCount,
      'cpuCoreCount': ?cpuCoreCount,
      'dataStorageSizeInGbs': ?dataStorageSizeInGbs,
      'dataStorageSizeInTbs': ?dataStorageSizeInTbs,
      'dbNodeStorageSizeInGbs': ?dbNodeStorageSizeInGbs,
      'dbVersion': ?dbVersion,
      'displayName': ?displayName,
      'failedDataRecoveryInSeconds': ?failedDataRecoveryInSeconds,
      'id': ?id,
      'inMemoryAreaInGbs': ?inMemoryAreaInGbs,
      'lifecycleDetails': ?lifecycleDetails,
      'localAdgAutoFailoverMaxDataLossLimit': ?localAdgAutoFailoverMaxDataLossLimit,
      'localDataGuardEnabled': ?localDataGuardEnabled,
      'location': ?location,
      'longTermBackupSchedules': ?(() { final guardedValue = longTermBackupSchedules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAutonomousDatabaseLongTermBackupSchedule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'memoryPerOracleComputeUnitInGbs': ?memoryPerOracleComputeUnitInGbs,
      'mtlsConnectionRequired': ?mtlsConnectionRequired,
      'name': ?name,
      'nationalCharacterSet': ?nationalCharacterSet,
      'nextLongTermBackupTimeStamp': ?nextLongTermBackupTimeStamp,
      'ociUrl': ?ociUrl,
      'ocid': ?ocid,
      'peerDbId': ?peerDbId,
      'peerDbIds': ?peerDbIds,
      'preview': ?preview,
      'previewVersionWithServiceTermsAccepted': ?previewVersionWithServiceTermsAccepted,
      'privateEndpoint': ?privateEndpoint,
      'privateEndpointIp': ?privateEndpointIp,
      'privateEndpointLabel': ?privateEndpointLabel,
      'provisionableCpuses': ?provisionableCpuses,
      'remoteDataGuardEnabled': ?remoteDataGuardEnabled,
      'resourceGroupName': ?resourceGroupName,
      'serviceConsoleUrl': ?serviceConsoleUrl,
      'sqlWebDeveloperUrl': ?sqlWebDeveloperUrl,
      'subnetId': ?subnetId,
      'supportedRegionsToCloneTos': ?supportedRegionsToCloneTos,
      'tags': ?tags,
      'timeCreated': ?timeCreated,
      'timeDataGuardRoleChanged': ?timeDataGuardRoleChanged,
      'timeDeletionOfFreeAutonomousDatabase': ?timeDeletionOfFreeAutonomousDatabase,
      'timeLocalDataGuardEnabledOn': ?timeLocalDataGuardEnabledOn,
      'timeMaintenanceBegin': ?timeMaintenanceBegin,
      'timeMaintenanceEnd': ?timeMaintenanceEnd,
      'timeOfLastFailover': ?timeOfLastFailover,
      'timeOfLastRefresh': ?timeOfLastRefresh,
      'timeOfLastRefreshPoint': ?timeOfLastRefreshPoint,
      'timeOfLastSwitchover': ?timeOfLastSwitchover,
      'timeReclamationOfFreeAutonomousDatabase': ?timeReclamationOfFreeAutonomousDatabase,
      'usedDataStorageSizeInGbs': ?usedDataStorageSizeInGbs,
      'usedDataStorageSizeInTbs': ?usedDataStorageSizeInTbs,
      'virtualNetworkId': ?virtualNetworkId,
    };
  }

  factory GetAutonomousDatabaseResult.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabaseResult(
      actualUsedDataStorageSizeInTbs: (() { final guardedValue = map['actualUsedDataStorageSizeInTbs']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      allocatedStorageSizeInTbs: (() { final guardedValue = map['allocatedStorageSizeInTbs']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      allowedIps: (() { final guardedValue = map['allowedIps']; if (guardedValue == null) return null; return (guardedValue as List).cast<int>(); })(),
      autoScalingEnabled: (() { final guardedValue = map['autoScalingEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      autoScalingForStorageEnabled: (() { final guardedValue = map['autoScalingForStorageEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      autonomousDatabaseId: (() { final guardedValue = map['autonomousDatabaseId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      availableUpgradeVersions: (() { final guardedValue = map['availableUpgradeVersions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      backupRetentionPeriodInDays: (() { final guardedValue = map['backupRetentionPeriodInDays']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      characterSet: (() { final guardedValue = map['characterSet']; if (guardedValue == null) return null; return guardedValue as String; })(),
      computeCount: (() { final guardedValue = map['computeCount']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      cpuCoreCount: (() { final guardedValue = map['cpuCoreCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      dataStorageSizeInGbs: (() { final guardedValue = map['dataStorageSizeInGbs']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      dataStorageSizeInTbs: (() { final guardedValue = map['dataStorageSizeInTbs']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      dbNodeStorageSizeInGbs: (() { final guardedValue = map['dbNodeStorageSizeInGbs']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      dbVersion: (() { final guardedValue = map['dbVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      failedDataRecoveryInSeconds: (() { final guardedValue = map['failedDataRecoveryInSeconds']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      inMemoryAreaInGbs: (() { final guardedValue = map['inMemoryAreaInGbs']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      lifecycleDetails: (() { final guardedValue = map['lifecycleDetails']; if (guardedValue == null) return null; return guardedValue as String; })(),
      localAdgAutoFailoverMaxDataLossLimit: (() { final guardedValue = map['localAdgAutoFailoverMaxDataLossLimit']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      localDataGuardEnabled: (() { final guardedValue = map['localDataGuardEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      longTermBackupSchedules: (() { final guardedValue = map['longTermBackupSchedules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAutonomousDatabaseLongTermBackupSchedule>(guardedValue, (value) => GetAutonomousDatabaseLongTermBackupSchedule.fromMap((value as Map).cast<String, dynamic>())); })(),
      memoryPerOracleComputeUnitInGbs: (() { final guardedValue = map['memoryPerOracleComputeUnitInGbs']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      mtlsConnectionRequired: (() { final guardedValue = map['mtlsConnectionRequired']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nationalCharacterSet: (() { final guardedValue = map['nationalCharacterSet']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nextLongTermBackupTimeStamp: (() { final guardedValue = map['nextLongTermBackupTimeStamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ociUrl: (() { final guardedValue = map['ociUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ocid: (() { final guardedValue = map['ocid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      peerDbId: (() { final guardedValue = map['peerDbId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      peerDbIds: (() { final guardedValue = map['peerDbIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      preview: (() { final guardedValue = map['preview']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      previewVersionWithServiceTermsAccepted: (() { final guardedValue = map['previewVersionWithServiceTermsAccepted']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      privateEndpoint: (() { final guardedValue = map['privateEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateEndpointIp: (() { final guardedValue = map['privateEndpointIp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateEndpointLabel: (() { final guardedValue = map['privateEndpointLabel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisionableCpuses: (() { final guardedValue = map['provisionableCpuses']; if (guardedValue == null) return null; return (guardedValue as List).cast<int>(); })(),
      remoteDataGuardEnabled: (() { final guardedValue = map['remoteDataGuardEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceConsoleUrl: (() { final guardedValue = map['serviceConsoleUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sqlWebDeveloperUrl: (() { final guardedValue = map['sqlWebDeveloperUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      supportedRegionsToCloneTos: (() { final guardedValue = map['supportedRegionsToCloneTos']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      timeCreated: (() { final guardedValue = map['timeCreated']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timeDataGuardRoleChanged: (() { final guardedValue = map['timeDataGuardRoleChanged']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timeDeletionOfFreeAutonomousDatabase: (() { final guardedValue = map['timeDeletionOfFreeAutonomousDatabase']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timeLocalDataGuardEnabledOn: (() { final guardedValue = map['timeLocalDataGuardEnabledOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timeMaintenanceBegin: (() { final guardedValue = map['timeMaintenanceBegin']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timeMaintenanceEnd: (() { final guardedValue = map['timeMaintenanceEnd']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timeOfLastFailover: (() { final guardedValue = map['timeOfLastFailover']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timeOfLastRefresh: (() { final guardedValue = map['timeOfLastRefresh']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timeOfLastRefreshPoint: (() { final guardedValue = map['timeOfLastRefreshPoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timeOfLastSwitchover: (() { final guardedValue = map['timeOfLastSwitchover']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timeReclamationOfFreeAutonomousDatabase: (() { final guardedValue = map['timeReclamationOfFreeAutonomousDatabase']; if (guardedValue == null) return null; return guardedValue as String; })(),
      usedDataStorageSizeInGbs: (() { final guardedValue = map['usedDataStorageSizeInGbs']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      usedDataStorageSizeInTbs: (() { final guardedValue = map['usedDataStorageSizeInTbs']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      virtualNetworkId: (() { final guardedValue = map['virtualNetworkId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
