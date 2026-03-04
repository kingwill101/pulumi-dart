// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_autonomous_database_long_term_backup_schedule.dart';

/// Result data returned by getAutonomousDatabase.
class GetAutonomousDatabaseResult {
  /// The current amount of storage in use for user and system data, in terabytes (TB).
  final double actualUsedDataStorageSizeInTbs;

  /// The amount of storage currently allocated for the database tables and billed for, rounded up. When auto-scaling is not enabled, this value is equal to the `dataStorageSizeInTBs` value. You can compare this value to the `actualUsedDataStorageSizeInTBs` value to determine if a manual shrink operation is appropriate for your allocated storage.
  final double allocatedStorageSizeInTbs;

  /// The client IP access control list (ACL). This feature is available for [Autonomous Database Serverless] (https://docs.oracle.com/en/cloud/paas/autonomous-database/index.html) and on Exadata Cloud@Customer. Only clients connecting from an IP address included in the ACL may access the Autonomous Database instance. If `arePrimaryWhitelistedIpsUsed` is 'TRUE' then Autonomous Database uses this primary's IP access control list (ACL) for the disaster recovery peer called `standbywhitelistedips`.
  final List<int> allowedIps;

  /// Indicates if auto scaling is enabled for the Autonomous Database CPU core count.
  final bool autoScalingEnabled;

  /// Indicates if auto scaling is enabled for the Autonomous Database storage.
  final bool autoScalingForStorageEnabled;

  /// The database [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm).
  final String autonomousDatabaseId;

  /// List of Oracle Database versions available for a database upgrade. If there are no version upgrades available, this list is empty.
  final List<String> availableUpgradeVersions;

  /// Retention period, in days, for backups.
  final int backupRetentionPeriodInDays;

  /// The character set for the autonomous database.
  final String characterSet;

  /// The compute amount (CPUs) available to the database.
  final double computeCount;

  /// The number of CPU cores to be made available to the database. When the ECPU is selected, the value for cpuCoreCount is 0. For Autonomous Database on Dedicated Exadata infrastructure, the maximum number of cores is determined by the infrastructure shape. See [Characteristics of Infrastructure Shapes](https://www.oracle.com/pls/topic/lookup?ctx=en/cloud/paas/autonomous-database&id=ATPFG-GUID-B0F033C1-CC5A-42F0-B2E7-3CECFEDA1FD1) for shape details.
  final int cpuCoreCount;

  /// The quantity of data in the database, in gigabytes.
  final int dataStorageSizeInGbs;

  /// The maximum storage that can be allocated for the database, in terabytes.
  final int dataStorageSizeInTbs;

  /// The DB node storage size in, in gigabytes.
  final int dbNodeStorageSizeInGbs;

  /// A valid Oracle Database version for Autonomous Database.
  final String dbVersion;

  /// The user-friendly name for the Autonomous Database. The name does not have to be unique.
  final String displayName;

  /// Indicates the number of seconds of data loss for a Data Guard failover.
  final int failedDataRecoveryInSeconds;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The area assigned to In-Memory tables in Autonomous Database.
  final int inMemoryAreaInGbs;

  /// Information about the current lifecycle state.
  final String lifecycleDetails;

  /// Parameter that allows users to select an acceptable maximum data loss limit in seconds, up to which Automatic Failover will be triggered when necessary for a Local Autonomous Data Guard
  final int localAdgAutoFailoverMaxDataLossLimit;

  /// Indicates whether the Autonomous Database has local (in-region) Data Guard enabled. Not applicable to cross-region Autonomous Data Guard associations, or to Autonomous Databases using dedicated Exadata infrastructure or Exadata Cloud@Customer infrastructure.
  final bool localDataGuardEnabled;

  /// The Azure Region where the Autonomous Database exists.
  final String location;

  /// A `long_term_backup_schedule` block as defined below
  final List<GetAutonomousDatabaseLongTermBackupSchedule>
  longTermBackupSchedules;

  /// The amount of memory (in GBs) enabled per ECPU or OCPU.
  final int memoryPerOracleComputeUnitInGbs;

  /// Specifies if the Autonomous Database requires mTLS connections.
  final bool mtlsConnectionRequired;
  final String name;

  /// The national character set for the autonomous database.  The default is AL16UTF16. Allowed values are: AL16UTF16 or UTF8.
  final String nationalCharacterSet;

  /// The date and time when the next long-term backup would be created.
  final String nextLongTermBackupTimeStamp;

  /// The URL of the resource in the OCI console.
  final String ociUrl;

  /// The [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) of the autonomous database.
  final String ocid;
  final String peerDbId;

  /// The list of [OCIDs](https://docs.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of standby databases located in Autonomous Data Guard remote regions that are associated with the source database. Note that for Autonomous Database Serverless instances, standby databases located in the same region as the source primary database do not have OCIDs.
  final List<String> peerDbIds;

  /// Indicates if the Autonomous Database version is a preview version.
  final bool preview;

  /// Indicates if the Autonomous Database version is a preview version with service terms accepted.
  final bool previewVersionWithServiceTermsAccepted;

  /// The private endpoint for the resource.
  final String privateEndpoint;

  /// The private endpoint Ip address for the resource.
  final String privateEndpointIp;

  /// The private endpoint label for the resource.
  final String privateEndpointLabel;

  /// An array of CPU values that an Autonomous Database can be scaled to.
  final List<int> provisionableCpuses;

  /// Indicates whether the Autonomous Database has Cross Region Data Guard enabled. Not applicable to Autonomous Databases using dedicated Exadata infrastructure or Exadata Cloud@Customer infrastructure.
  final bool remoteDataGuardEnabled;
  final String resourceGroupName;

  /// The URL of the Service Console for the Autonomous Database.
  final String serviceConsoleUrl;

  /// The URL of the SQL web developer.
  final String sqlWebDeveloperUrl;

  /// The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the subnet the resource is associated with.
  final String subnetId;

  /// The list of regions that support the creation of an Autonomous Database clone or an Autonomous Data Guard standby database.
  final List<String> supportedRegionsToCloneTos;

  /// A mapping of tags assigned to the Autonomous Database.
  final Map<String, String> tags;

  /// The date and time the Autonomous Database was created.
  final String timeCreated;

  /// The date and time the Autonomous Data Guard role was switched for the Autonomous Database. For databases that have standbys in both the primary Data Guard region and a remote Data Guard standby region, this is the latest timestamp of either the database using the "primary" role in the primary Data Guard region, or database located in the remote Data Guard standby region.
  final String timeDataGuardRoleChanged;

  /// The date and time the Always Free database will be automatically deleted because of inactivity. If the database is in the STOPPED state and without activity until this time, it will be deleted.
  final String timeDeletionOfFreeAutonomousDatabase;

  /// The date and time that Autonomous Data Guard was enabled for an Autonomous Database where the standby was provisioned in the same region as the primary database.
  final String timeLocalDataGuardEnabledOn;

  /// The date and time when maintenance will begin.
  final String timeMaintenanceBegin;

  /// The date and time when maintenance will end.
  final String timeMaintenanceEnd;

  /// The timestamp of the last failover operation.
  final String timeOfLastFailover;

  /// The date and time when last refresh happened.
  final String timeOfLastRefresh;

  /// The refresh point timestamp (UTC). The refresh point is the time to which the database was most recently refreshed. Data created after the refresh point is not included in the refresh.
  final String timeOfLastRefreshPoint;

  /// The timestamp of the last switchover operation for the Autonomous Database.
  final String timeOfLastSwitchover;

  /// The date and time the Always Free database will be stopped because of inactivity. If this time is reached without any database activity, the database will automatically be put into the STOPPED state.
  final String timeReclamationOfFreeAutonomousDatabase;

  /// The storage space consumed by Autonomous Database in GBs.
  final int usedDataStorageSizeInGbs;

  /// The amount of storage that has been used, in terabytes.
  final int usedDataStorageSizeInTbs;

  /// The ID to an Azure Resource Manager vnet resource.
  final String virtualNetworkId;

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
  /// [longTermBackupSchedules] A `long_term_backup_schedule` block as defined below
  /// [memoryPerOracleComputeUnitInGbs] The amount of memory (in GBs) enabled per ECPU or OCPU.
  /// [mtlsConnectionRequired] Specifies if the Autonomous Database requires mTLS connections.
  /// [name] Required.
  /// [nationalCharacterSet] The national character set for the autonomous database.  The default is AL16UTF16. Allowed values are: AL16UTF16 or UTF8.
  /// [nextLongTermBackupTimeStamp] The date and time when the next long-term backup would be created.
  /// [ociUrl] The URL of the resource in the OCI console.
  /// [ocid] The [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) of the autonomous database.
  /// [peerDbId] Required.
  /// [peerDbIds] The list of [OCIDs](https://docs.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of standby databases located in Autonomous Data Guard remote regions that are associated with the source database. Note that for Autonomous Database Serverless instances, standby databases located in the same region as the source primary database do not have OCIDs.
  /// [preview] Indicates if the Autonomous Database version is a preview version.
  /// [previewVersionWithServiceTermsAccepted] Indicates if the Autonomous Database version is a preview version with service terms accepted.
  /// [privateEndpoint] The private endpoint for the resource.
  /// [privateEndpointIp] The private endpoint Ip address for the resource.
  /// [privateEndpointLabel] The private endpoint label for the resource.
  /// [provisionableCpuses] An array of CPU values that an Autonomous Database can be scaled to.
  /// [remoteDataGuardEnabled] Indicates whether the Autonomous Database has Cross Region Data Guard enabled. Not applicable to Autonomous Databases using dedicated Exadata infrastructure or Exadata Cloud@Customer infrastructure.
  /// [resourceGroupName] Required.
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
  GetAutonomousDatabaseResult({
    required this.actualUsedDataStorageSizeInTbs,
    required this.allocatedStorageSizeInTbs,
    required this.allowedIps,
    required this.autoScalingEnabled,
    required this.autoScalingForStorageEnabled,
    required this.autonomousDatabaseId,
    required this.availableUpgradeVersions,
    required this.backupRetentionPeriodInDays,
    required this.characterSet,
    required this.computeCount,
    required this.cpuCoreCount,
    required this.dataStorageSizeInGbs,
    required this.dataStorageSizeInTbs,
    required this.dbNodeStorageSizeInGbs,
    required this.dbVersion,
    required this.displayName,
    required this.failedDataRecoveryInSeconds,
    required this.id,
    required this.inMemoryAreaInGbs,
    required this.lifecycleDetails,
    required this.localAdgAutoFailoverMaxDataLossLimit,
    required this.localDataGuardEnabled,
    required this.location,
    required this.longTermBackupSchedules,
    required this.memoryPerOracleComputeUnitInGbs,
    required this.mtlsConnectionRequired,
    required this.name,
    required this.nationalCharacterSet,
    required this.nextLongTermBackupTimeStamp,
    required this.ociUrl,
    required this.ocid,
    required this.peerDbId,
    required this.peerDbIds,
    required this.preview,
    required this.previewVersionWithServiceTermsAccepted,
    required this.privateEndpoint,
    required this.privateEndpointIp,
    required this.privateEndpointLabel,
    required this.provisionableCpuses,
    required this.remoteDataGuardEnabled,
    required this.resourceGroupName,
    required this.serviceConsoleUrl,
    required this.sqlWebDeveloperUrl,
    required this.subnetId,
    required this.supportedRegionsToCloneTos,
    required this.tags,
    required this.timeCreated,
    required this.timeDataGuardRoleChanged,
    required this.timeDeletionOfFreeAutonomousDatabase,
    required this.timeLocalDataGuardEnabledOn,
    required this.timeMaintenanceBegin,
    required this.timeMaintenanceEnd,
    required this.timeOfLastFailover,
    required this.timeOfLastRefresh,
    required this.timeOfLastRefreshPoint,
    required this.timeOfLastSwitchover,
    required this.timeReclamationOfFreeAutonomousDatabase,
    required this.usedDataStorageSizeInGbs,
    required this.usedDataStorageSizeInTbs,
    required this.virtualNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actualUsedDataStorageSizeInTbs': actualUsedDataStorageSizeInTbs,
      'allocatedStorageSizeInTbs': allocatedStorageSizeInTbs,
      'allowedIps': allowedIps,
      'autoScalingEnabled': autoScalingEnabled,
      'autoScalingForStorageEnabled': autoScalingForStorageEnabled,
      'autonomousDatabaseId': autonomousDatabaseId,
      'availableUpgradeVersions': availableUpgradeVersions,
      'backupRetentionPeriodInDays': backupRetentionPeriodInDays,
      'characterSet': characterSet,
      'computeCount': computeCount,
      'cpuCoreCount': cpuCoreCount,
      'dataStorageSizeInGbs': dataStorageSizeInGbs,
      'dataStorageSizeInTbs': dataStorageSizeInTbs,
      'dbNodeStorageSizeInGbs': dbNodeStorageSizeInGbs,
      'dbVersion': dbVersion,
      'displayName': displayName,
      'failedDataRecoveryInSeconds': failedDataRecoveryInSeconds,
      'id': id,
      'inMemoryAreaInGbs': inMemoryAreaInGbs,
      'lifecycleDetails': lifecycleDetails,
      'localAdgAutoFailoverMaxDataLossLimit':
          localAdgAutoFailoverMaxDataLossLimit,
      'localDataGuardEnabled': localDataGuardEnabled,
      'location': location,
      'longTermBackupSchedules':
          pulumi.Input.encodeList<
            GetAutonomousDatabaseLongTermBackupSchedule,
            Map<String, dynamic>
          >(longTermBackupSchedules, (value) => value.toMap()),
      'memoryPerOracleComputeUnitInGbs': memoryPerOracleComputeUnitInGbs,
      'mtlsConnectionRequired': mtlsConnectionRequired,
      'name': name,
      'nationalCharacterSet': nationalCharacterSet,
      'nextLongTermBackupTimeStamp': nextLongTermBackupTimeStamp,
      'ociUrl': ociUrl,
      'ocid': ocid,
      'peerDbId': peerDbId,
      'peerDbIds': peerDbIds,
      'preview': preview,
      'previewVersionWithServiceTermsAccepted':
          previewVersionWithServiceTermsAccepted,
      'privateEndpoint': privateEndpoint,
      'privateEndpointIp': privateEndpointIp,
      'privateEndpointLabel': privateEndpointLabel,
      'provisionableCpuses': provisionableCpuses,
      'remoteDataGuardEnabled': remoteDataGuardEnabled,
      'resourceGroupName': resourceGroupName,
      'serviceConsoleUrl': serviceConsoleUrl,
      'sqlWebDeveloperUrl': sqlWebDeveloperUrl,
      'subnetId': subnetId,
      'supportedRegionsToCloneTos': supportedRegionsToCloneTos,
      'tags': tags,
      'timeCreated': timeCreated,
      'timeDataGuardRoleChanged': timeDataGuardRoleChanged,
      'timeDeletionOfFreeAutonomousDatabase':
          timeDeletionOfFreeAutonomousDatabase,
      'timeLocalDataGuardEnabledOn': timeLocalDataGuardEnabledOn,
      'timeMaintenanceBegin': timeMaintenanceBegin,
      'timeMaintenanceEnd': timeMaintenanceEnd,
      'timeOfLastFailover': timeOfLastFailover,
      'timeOfLastRefresh': timeOfLastRefresh,
      'timeOfLastRefreshPoint': timeOfLastRefreshPoint,
      'timeOfLastSwitchover': timeOfLastSwitchover,
      'timeReclamationOfFreeAutonomousDatabase':
          timeReclamationOfFreeAutonomousDatabase,
      'usedDataStorageSizeInGbs': usedDataStorageSizeInGbs,
      'usedDataStorageSizeInTbs': usedDataStorageSizeInTbs,
      'virtualNetworkId': virtualNetworkId,
    };
  }

  factory GetAutonomousDatabaseResult.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabaseResult(
      actualUsedDataStorageSizeInTbs:
          map['actualUsedDataStorageSizeInTbs'] as double,
      allocatedStorageSizeInTbs: map['allocatedStorageSizeInTbs'] as double,
      allowedIps: (map['allowedIps'] as List).cast<int>(),
      autoScalingEnabled: map['autoScalingEnabled'] as bool,
      autoScalingForStorageEnabled: map['autoScalingForStorageEnabled'] as bool,
      autonomousDatabaseId: map['autonomousDatabaseId'] as String,
      availableUpgradeVersions: (map['availableUpgradeVersions'] as List)
          .cast<String>(),
      backupRetentionPeriodInDays: map['backupRetentionPeriodInDays'] as int,
      characterSet: map['characterSet'] as String,
      computeCount: map['computeCount'] as double,
      cpuCoreCount: map['cpuCoreCount'] as int,
      dataStorageSizeInGbs: map['dataStorageSizeInGbs'] as int,
      dataStorageSizeInTbs: map['dataStorageSizeInTbs'] as int,
      dbNodeStorageSizeInGbs: map['dbNodeStorageSizeInGbs'] as int,
      dbVersion: map['dbVersion'] as String,
      displayName: map['displayName'] as String,
      failedDataRecoveryInSeconds: map['failedDataRecoveryInSeconds'] as int,
      id: map['id'] as String,
      inMemoryAreaInGbs: map['inMemoryAreaInGbs'] as int,
      lifecycleDetails: map['lifecycleDetails'] as String,
      localAdgAutoFailoverMaxDataLossLimit:
          map['localAdgAutoFailoverMaxDataLossLimit'] as int,
      localDataGuardEnabled: map['localDataGuardEnabled'] as bool,
      location: map['location'] as String,
      longTermBackupSchedules:
          pulumi.Input.decodeList<GetAutonomousDatabaseLongTermBackupSchedule>(
            map['longTermBackupSchedules']!,
            (value) => GetAutonomousDatabaseLongTermBackupSchedule.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      memoryPerOracleComputeUnitInGbs:
          map['memoryPerOracleComputeUnitInGbs'] as int,
      mtlsConnectionRequired: map['mtlsConnectionRequired'] as bool,
      name: map['name'] as String,
      nationalCharacterSet: map['nationalCharacterSet'] as String,
      nextLongTermBackupTimeStamp: map['nextLongTermBackupTimeStamp'] as String,
      ociUrl: map['ociUrl'] as String,
      ocid: map['ocid'] as String,
      peerDbId: map['peerDbId'] as String,
      peerDbIds: (map['peerDbIds'] as List).cast<String>(),
      preview: map['preview'] as bool,
      previewVersionWithServiceTermsAccepted:
          map['previewVersionWithServiceTermsAccepted'] as bool,
      privateEndpoint: map['privateEndpoint'] as String,
      privateEndpointIp: map['privateEndpointIp'] as String,
      privateEndpointLabel: map['privateEndpointLabel'] as String,
      provisionableCpuses: (map['provisionableCpuses'] as List).cast<int>(),
      remoteDataGuardEnabled: map['remoteDataGuardEnabled'] as bool,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceConsoleUrl: map['serviceConsoleUrl'] as String,
      sqlWebDeveloperUrl: map['sqlWebDeveloperUrl'] as String,
      subnetId: map['subnetId'] as String,
      supportedRegionsToCloneTos: (map['supportedRegionsToCloneTos'] as List)
          .cast<String>(),
      tags: (map['tags'] as Map).cast<String, String>(),
      timeCreated: map['timeCreated'] as String,
      timeDataGuardRoleChanged: map['timeDataGuardRoleChanged'] as String,
      timeDeletionOfFreeAutonomousDatabase:
          map['timeDeletionOfFreeAutonomousDatabase'] as String,
      timeLocalDataGuardEnabledOn: map['timeLocalDataGuardEnabledOn'] as String,
      timeMaintenanceBegin: map['timeMaintenanceBegin'] as String,
      timeMaintenanceEnd: map['timeMaintenanceEnd'] as String,
      timeOfLastFailover: map['timeOfLastFailover'] as String,
      timeOfLastRefresh: map['timeOfLastRefresh'] as String,
      timeOfLastRefreshPoint: map['timeOfLastRefreshPoint'] as String,
      timeOfLastSwitchover: map['timeOfLastSwitchover'] as String,
      timeReclamationOfFreeAutonomousDatabase:
          map['timeReclamationOfFreeAutonomousDatabase'] as String,
      usedDataStorageSizeInGbs: map['usedDataStorageSizeInGbs'] as int,
      usedDataStorageSizeInTbs: map['usedDataStorageSizeInTbs'] as int,
      virtualNetworkId: map['virtualNetworkId'] as String,
    );
  }
}
