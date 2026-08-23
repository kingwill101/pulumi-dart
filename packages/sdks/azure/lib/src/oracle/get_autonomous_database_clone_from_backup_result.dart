// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_autonomous_database_clone_from_backup_long_term_backup_schedule.dart';

/// Result data returned by getAutonomousDatabaseCloneFromBackup.
class GetAutonomousDatabaseCloneFromBackupResult {
  /// The current amount of storage in use for user and system data in terabytes.
  final double actualUsedDataStorageSizeInTb;
  /// The amount of storage currently allocated for the database tables and billed for, rounded up. When auto-scaling is not enabled, this value is equal to the `dataStorageSizeInTb` value. You can compare this value to the `actualUsedDataStorageSizeInTb` value to determine if a manual shrink operation is appropriate for your allocated storage.
  final double allocatedStorageSizeInTb;
  /// A list of IP addresses on the access control list.
  final List<String> allowedIpAddresses;
  /// Whether auto-scaling is enabled for the Autonomous Database CPU core count.
  final bool autoScalingEnabled;
  /// Whether auto-scaling is enabled for the Autonomous Database storage.
  final bool autoScalingForStorageEnabled;
  /// A list of Oracle Database versions available for a database upgrade. If there are no version upgrades available, this list is empty.
  final List<String> availableUpgradeVersions;
  /// The backup retention period in days.
  final int backupRetentionPeriodInDays;
  /// The character set for the autonomous database.
  final String characterSet;
  /// The compute amount (CPUs) available to the database.
  final double computeCount;
  /// The compute model of the Autonomous Database.
  final String computeModel;
  /// The connection string used to connect to the Autonomous Database.
  final List<String> connectionStrings;
  /// The number of CPU cores available to the database. When the ECPU is selected, the value for cpuCoreCount is 0.
  final int cpuCoreCount;
  /// A list of Customer's contact email addresses.
  final List<String> customerContacts;
  /// The quantity of data in the database in gigabytes.
  final int dataStorageSizeInGb;
  /// The maximum storage that can be allocated for the database in terabytes.
  final int dataStorageSizeInTb;
  /// The Oracle Database version for Autonomous Database.
  final String databaseVersion;
  /// The Autonomous Database workload type.
  final String databaseWorkload;
  /// The display name for the Autonomous Database.
  final String displayName;
  /// Indicates the number of seconds of data loss for Data Guard failover.
  final int failedDataRecoveryInSeconds;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The area assigned to In-Memory tables in Autonomous Database.
  final int inMemoryAreaInGb;
  /// The Oracle license model that applied to the Oracle Autonomous Database.
  final String licenseModel;
  /// Information about the current lifecycle state.
  final String lifecycleDetails;
  /// The current state of the backup.
  final String lifecycleState;
  /// Parameter that allows users to select an acceptable maximum data loss limit in seconds, up to which Automatic Failover will be triggered when necessary for a Local Autonomous Data Guard.
  final int localAdgAutoFailoverMaxDataLossLimitInSeconds;
  /// Indicates whether the Autonomous Database has local (in-region) Data Guard enabled. Not applicable to cross-region Autonomous Data Guard associations, or to Autonomous Databases using dedicated Exadata infrastructure or Exadata Cloud@Customer infrastructure.
  final bool localDataGuardEnabled;
  /// The Azure Region where the autonomous database cloned from backup exists.
  final String location;
  /// A `longTermBackupSchedule` block as defined below.
  final List<GetAutonomousDatabaseCloneFromBackupLongTermBackupSchedule> longTermBackupSchedules;
  /// The amount of memory in gigabytes per ECPU or OCPU.
  final int memoryPerOracleComputeUnitInGb;
  /// Specifies if the Autonomous Database requires mTLS connections.
  final bool mtlsConnectionRequired;
  final String name;
  /// The national character set for the autonomous database.
  final String nationalCharacterSet;
  final String nextLongTermBackupTimestamp;
  /// The URL of the resource in the OCI console.
  final String ociUrl;
  /// The [OCID](https://docs.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the autonomous database.
  final String ocid;
  /// The list of [OCIDs](https://docs.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of standby databases located in Autonomous Data Guard remote regions that are associated with the source database. Note that for Autonomous Database Serverless instances, standby databases located in the same region as the source primary database do not have OCIDs.
  final List<String> peerDatabaseIds;
  /// Indicates if the Autonomous Database version is a preview version.
  final bool preview;
  /// Indicates if the Autonomous Database version is a preview version with service terms accepted.
  final bool previewVersionWithServiceTermsAccepted;
  /// The private endpoint IP address for the resource.
  final String privateEndpointIp;
  /// The private endpoint label for the resource.
  final String privateEndpointLabel;
  /// The private endpoint for the resource.
  final String privateEndpointUrl;
  /// An array of CPU values that an Autonomous Database can be scaled to.
  final List<int> provisionableCpuses;
  /// Indicates whether the Autonomous Database has Cross Region Data Guard enabled. Not applicable to Autonomous Databases using dedicated Exadata infrastructure or Exadata Cloud@Customer infrastructure.
  final bool remoteDataGuardEnabled;
  final String resourceGroupName;
  /// The URL of the Service Console for the Autonomous Database.
  final String serviceConsoleUrl;
  /// The ID of the source Autonomous Database from which this clone was created.
  final String sourceAutonomousDatabaseId;
  /// The URL of the SQL web developer portal.
  final String sqlWebDeveloperUrl;
  /// The ID to an Azure Resource Manager subnet the resource is associated with.
  final String subnetId;
  /// The list of regions that support the creation of an Autonomous Database clone or an Autonomous Data Guard standby database.
  final List<String> supportedRegionsToCloneTos;
  /// A mapping of tags assigned to the autonomous database clone from backup.
  final Map<String, String> tags;
  /// The timestamp the Autonomous Database was created.
  final String timeCreatedInUtc;
  /// The timestamp the Autonomous Data Guard role was switched for the Autonomous Database. For databases that have standbys in both the primary Data Guard region and a remote Data Guard standby region, this is the latest timestamp of either the database using the "primary" role in the primary Data Guard region, or database located in the remote Data Guard standby region.
  final String timeDataGuardRoleChangedInUtc;
  /// The timestamp the Always Free database will be automatically deleted because of inactivity. If the database is in the STOPPED state and without activity until this time, it will be deleted.
  final String timeDeletionOfFreeAutonomousDatabaseInUtc;
  /// The timestamp that Autonomous Data Guard was enabled for an Autonomous Database where the standby was provisioned in the same region as the primary database.
  final String timeLocalDataGuardEnabledInUtc;
  /// The timestamp when maintenance will begin.
  final String timeMaintenanceBeginInUtc;
  /// The timestamp when maintenance will end.
  final String timeMaintenanceEndInUtc;
  /// The timestamp of the last failover operation.
  final String timeOfLastFailoverInUtc;
  /// The timestamp when the last refresh happened.
  final String timeOfLastRefreshInUtc;
  /// The refresh point timestamp (UTC). The refresh point is the time to which the database was most recently refreshed. Data created after the refresh point is not included in the refresh.
  final String timeOfLastRefreshPointInUtc;
  /// The timestamp of the last switchover operation for the Autonomous Database.
  final String timeOfLastSwitchoverInUtc;
  /// The timestamp the Always Free database will be stopped because of inactivity. If this time is reached without any database activity, the database will automatically be put into the STOPPED state.
  final String timeReclamationOfFreeAutonomousDatabaseInUtc;
  /// The storage space consumed by Autonomous Database in gigabytes.
  final int usedDataStorageSizeInGb;
  /// The amount of storage that has been used, in terabytes.
  final int usedDataStorageSizeInTb;
  /// The ID to an Azure Resource Manager virtual network resource.
  final String virtualNetworkId;

  /// Creates a new [GetAutonomousDatabaseCloneFromBackupResult].
  /// [actualUsedDataStorageSizeInTb] The current amount of storage in use for user and system data in terabytes.
  /// [allocatedStorageSizeInTb] The amount of storage currently allocated for the database tables and billed for, rounded up. When auto-scaling is not enabled, this value is equal to the `dataStorageSizeInTb` value. You can compare this value to the `actualUsedDataStorageSizeInTb` value to determine if a manual shrink operation is appropriate for your allocated storage.
  /// [allowedIpAddresses] A list of IP addresses on the access control list.
  /// [autoScalingEnabled] Whether auto-scaling is enabled for the Autonomous Database CPU core count.
  /// [autoScalingForStorageEnabled] Whether auto-scaling is enabled for the Autonomous Database storage.
  /// [availableUpgradeVersions] A list of Oracle Database versions available for a database upgrade. If there are no version upgrades available, this list is empty.
  /// [backupRetentionPeriodInDays] The backup retention period in days.
  /// [characterSet] The character set for the autonomous database.
  /// [computeCount] The compute amount (CPUs) available to the database.
  /// [computeModel] The compute model of the Autonomous Database.
  /// [connectionStrings] The connection string used to connect to the Autonomous Database.
  /// [cpuCoreCount] The number of CPU cores available to the database. When the ECPU is selected, the value for cpuCoreCount is 0.
  /// [customerContacts] A list of Customer's contact email addresses.
  /// [dataStorageSizeInGb] The quantity of data in the database in gigabytes.
  /// [dataStorageSizeInTb] The maximum storage that can be allocated for the database in terabytes.
  /// [databaseVersion] The Oracle Database version for Autonomous Database.
  /// [databaseWorkload] The Autonomous Database workload type.
  /// [displayName] The display name for the Autonomous Database.
  /// [failedDataRecoveryInSeconds] Indicates the number of seconds of data loss for Data Guard failover.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [inMemoryAreaInGb] The area assigned to In-Memory tables in Autonomous Database.
  /// [licenseModel] The Oracle license model that applied to the Oracle Autonomous Database.
  /// [lifecycleDetails] Information about the current lifecycle state.
  /// [lifecycleState] The current state of the backup.
  /// [localAdgAutoFailoverMaxDataLossLimitInSeconds] Parameter that allows users to select an acceptable maximum data loss limit in seconds, up to which Automatic Failover will be triggered when necessary for a Local Autonomous Data Guard.
  /// [localDataGuardEnabled] Indicates whether the Autonomous Database has local (in-region) Data Guard enabled. Not applicable to cross-region Autonomous Data Guard associations, or to Autonomous Databases using dedicated Exadata infrastructure or Exadata Cloud@Customer infrastructure.
  /// [location] The Azure Region where the autonomous database cloned from backup exists.
  /// [longTermBackupSchedules] A `longTermBackupSchedule` block as defined below.
  /// [memoryPerOracleComputeUnitInGb] The amount of memory in gigabytes per ECPU or OCPU.
  /// [mtlsConnectionRequired] Specifies if the Autonomous Database requires mTLS connections.
  /// [name] Required.
  /// [nationalCharacterSet] The national character set for the autonomous database.
  /// [nextLongTermBackupTimestamp] Required.
  /// [ociUrl] The URL of the resource in the OCI console.
  /// [ocid] The [OCID](https://docs.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the autonomous database.
  /// [peerDatabaseIds] The list of [OCIDs](https://docs.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of standby databases located in Autonomous Data Guard remote regions that are associated with the source database. Note that for Autonomous Database Serverless instances, standby databases located in the same region as the source primary database do not have OCIDs.
  /// [preview] Indicates if the Autonomous Database version is a preview version.
  /// [previewVersionWithServiceTermsAccepted] Indicates if the Autonomous Database version is a preview version with service terms accepted.
  /// [privateEndpointIp] The private endpoint IP address for the resource.
  /// [privateEndpointLabel] The private endpoint label for the resource.
  /// [privateEndpointUrl] The private endpoint for the resource.
  /// [provisionableCpuses] An array of CPU values that an Autonomous Database can be scaled to.
  /// [remoteDataGuardEnabled] Indicates whether the Autonomous Database has Cross Region Data Guard enabled. Not applicable to Autonomous Databases using dedicated Exadata infrastructure or Exadata Cloud@Customer infrastructure.
  /// [resourceGroupName] Required.
  /// [serviceConsoleUrl] The URL of the Service Console for the Autonomous Database.
  /// [sourceAutonomousDatabaseId] The ID of the source Autonomous Database from which this clone was created.
  /// [sqlWebDeveloperUrl] The URL of the SQL web developer portal.
  /// [subnetId] The ID to an Azure Resource Manager subnet the resource is associated with.
  /// [supportedRegionsToCloneTos] The list of regions that support the creation of an Autonomous Database clone or an Autonomous Data Guard standby database.
  /// [tags] A mapping of tags assigned to the autonomous database clone from backup.
  /// [timeCreatedInUtc] The timestamp the Autonomous Database was created.
  /// [timeDataGuardRoleChangedInUtc] The timestamp the Autonomous Data Guard role was switched for the Autonomous Database. For databases that have standbys in both the primary Data Guard region and a remote Data Guard standby region, this is the latest timestamp of either the database using the "primary" role in the primary Data Guard region, or database located in the remote Data Guard standby region.
  /// [timeDeletionOfFreeAutonomousDatabaseInUtc] The timestamp the Always Free database will be automatically deleted because of inactivity. If the database is in the STOPPED state and without activity until this time, it will be deleted.
  /// [timeLocalDataGuardEnabledInUtc] The timestamp that Autonomous Data Guard was enabled for an Autonomous Database where the standby was provisioned in the same region as the primary database.
  /// [timeMaintenanceBeginInUtc] The timestamp when maintenance will begin.
  /// [timeMaintenanceEndInUtc] The timestamp when maintenance will end.
  /// [timeOfLastFailoverInUtc] The timestamp of the last failover operation.
  /// [timeOfLastRefreshInUtc] The timestamp when the last refresh happened.
  /// [timeOfLastRefreshPointInUtc] The refresh point timestamp (UTC). The refresh point is the time to which the database was most recently refreshed. Data created after the refresh point is not included in the refresh.
  /// [timeOfLastSwitchoverInUtc] The timestamp of the last switchover operation for the Autonomous Database.
  /// [timeReclamationOfFreeAutonomousDatabaseInUtc] The timestamp the Always Free database will be stopped because of inactivity. If this time is reached without any database activity, the database will automatically be put into the STOPPED state.
  /// [usedDataStorageSizeInGb] The storage space consumed by Autonomous Database in gigabytes.
  /// [usedDataStorageSizeInTb] The amount of storage that has been used, in terabytes.
  /// [virtualNetworkId] The ID to an Azure Resource Manager virtual network resource.
  const GetAutonomousDatabaseCloneFromBackupResult({
    required this.actualUsedDataStorageSizeInTb,
    required this.allocatedStorageSizeInTb,
    required this.allowedIpAddresses,
    required this.autoScalingEnabled,
    required this.autoScalingForStorageEnabled,
    required this.availableUpgradeVersions,
    required this.backupRetentionPeriodInDays,
    required this.characterSet,
    required this.computeCount,
    required this.computeModel,
    required this.connectionStrings,
    required this.cpuCoreCount,
    required this.customerContacts,
    required this.dataStorageSizeInGb,
    required this.dataStorageSizeInTb,
    required this.databaseVersion,
    required this.databaseWorkload,
    required this.displayName,
    required this.failedDataRecoveryInSeconds,
    required this.id,
    required this.inMemoryAreaInGb,
    required this.licenseModel,
    required this.lifecycleDetails,
    required this.lifecycleState,
    required this.localAdgAutoFailoverMaxDataLossLimitInSeconds,
    required this.localDataGuardEnabled,
    required this.location,
    required this.longTermBackupSchedules,
    required this.memoryPerOracleComputeUnitInGb,
    required this.mtlsConnectionRequired,
    required this.name,
    required this.nationalCharacterSet,
    required this.nextLongTermBackupTimestamp,
    required this.ociUrl,
    required this.ocid,
    required this.peerDatabaseIds,
    required this.preview,
    required this.previewVersionWithServiceTermsAccepted,
    required this.privateEndpointIp,
    required this.privateEndpointLabel,
    required this.privateEndpointUrl,
    required this.provisionableCpuses,
    required this.remoteDataGuardEnabled,
    required this.resourceGroupName,
    required this.serviceConsoleUrl,
    required this.sourceAutonomousDatabaseId,
    required this.sqlWebDeveloperUrl,
    required this.subnetId,
    required this.supportedRegionsToCloneTos,
    required this.tags,
    required this.timeCreatedInUtc,
    required this.timeDataGuardRoleChangedInUtc,
    required this.timeDeletionOfFreeAutonomousDatabaseInUtc,
    required this.timeLocalDataGuardEnabledInUtc,
    required this.timeMaintenanceBeginInUtc,
    required this.timeMaintenanceEndInUtc,
    required this.timeOfLastFailoverInUtc,
    required this.timeOfLastRefreshInUtc,
    required this.timeOfLastRefreshPointInUtc,
    required this.timeOfLastSwitchoverInUtc,
    required this.timeReclamationOfFreeAutonomousDatabaseInUtc,
    required this.usedDataStorageSizeInGb,
    required this.usedDataStorageSizeInTb,
    required this.virtualNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actualUsedDataStorageSizeInTb': actualUsedDataStorageSizeInTb,
      'allocatedStorageSizeInTb': allocatedStorageSizeInTb,
      'allowedIpAddresses': allowedIpAddresses,
      'autoScalingEnabled': autoScalingEnabled,
      'autoScalingForStorageEnabled': autoScalingForStorageEnabled,
      'availableUpgradeVersions': availableUpgradeVersions,
      'backupRetentionPeriodInDays': backupRetentionPeriodInDays,
      'characterSet': characterSet,
      'computeCount': computeCount,
      'computeModel': computeModel,
      'connectionStrings': connectionStrings,
      'cpuCoreCount': cpuCoreCount,
      'customerContacts': customerContacts,
      'dataStorageSizeInGb': dataStorageSizeInGb,
      'dataStorageSizeInTb': dataStorageSizeInTb,
      'databaseVersion': databaseVersion,
      'databaseWorkload': databaseWorkload,
      'displayName': displayName,
      'failedDataRecoveryInSeconds': failedDataRecoveryInSeconds,
      'id': id,
      'inMemoryAreaInGb': inMemoryAreaInGb,
      'licenseModel': licenseModel,
      'lifecycleDetails': lifecycleDetails,
      'lifecycleState': lifecycleState,
      'localAdgAutoFailoverMaxDataLossLimitInSeconds': localAdgAutoFailoverMaxDataLossLimitInSeconds,
      'localDataGuardEnabled': localDataGuardEnabled,
      'location': location,
      'longTermBackupSchedules': pulumi.Input.encodeList<GetAutonomousDatabaseCloneFromBackupLongTermBackupSchedule, Map<String, dynamic>>(longTermBackupSchedules, (value) => value.toMap()),
      'memoryPerOracleComputeUnitInGb': memoryPerOracleComputeUnitInGb,
      'mtlsConnectionRequired': mtlsConnectionRequired,
      'name': name,
      'nationalCharacterSet': nationalCharacterSet,
      'nextLongTermBackupTimestamp': nextLongTermBackupTimestamp,
      'ociUrl': ociUrl,
      'ocid': ocid,
      'peerDatabaseIds': peerDatabaseIds,
      'preview': preview,
      'previewVersionWithServiceTermsAccepted': previewVersionWithServiceTermsAccepted,
      'privateEndpointIp': privateEndpointIp,
      'privateEndpointLabel': privateEndpointLabel,
      'privateEndpointUrl': privateEndpointUrl,
      'provisionableCpuses': provisionableCpuses,
      'remoteDataGuardEnabled': remoteDataGuardEnabled,
      'resourceGroupName': resourceGroupName,
      'serviceConsoleUrl': serviceConsoleUrl,
      'sourceAutonomousDatabaseId': sourceAutonomousDatabaseId,
      'sqlWebDeveloperUrl': sqlWebDeveloperUrl,
      'subnetId': subnetId,
      'supportedRegionsToCloneTos': supportedRegionsToCloneTos,
      'tags': tags,
      'timeCreatedInUtc': timeCreatedInUtc,
      'timeDataGuardRoleChangedInUtc': timeDataGuardRoleChangedInUtc,
      'timeDeletionOfFreeAutonomousDatabaseInUtc': timeDeletionOfFreeAutonomousDatabaseInUtc,
      'timeLocalDataGuardEnabledInUtc': timeLocalDataGuardEnabledInUtc,
      'timeMaintenanceBeginInUtc': timeMaintenanceBeginInUtc,
      'timeMaintenanceEndInUtc': timeMaintenanceEndInUtc,
      'timeOfLastFailoverInUtc': timeOfLastFailoverInUtc,
      'timeOfLastRefreshInUtc': timeOfLastRefreshInUtc,
      'timeOfLastRefreshPointInUtc': timeOfLastRefreshPointInUtc,
      'timeOfLastSwitchoverInUtc': timeOfLastSwitchoverInUtc,
      'timeReclamationOfFreeAutonomousDatabaseInUtc': timeReclamationOfFreeAutonomousDatabaseInUtc,
      'usedDataStorageSizeInGb': usedDataStorageSizeInGb,
      'usedDataStorageSizeInTb': usedDataStorageSizeInTb,
      'virtualNetworkId': virtualNetworkId,
    };
  }

  factory GetAutonomousDatabaseCloneFromBackupResult.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabaseCloneFromBackupResult(
      actualUsedDataStorageSizeInTb: map['actualUsedDataStorageSizeInTb'] as double,
      allocatedStorageSizeInTb: map['allocatedStorageSizeInTb'] as double,
      allowedIpAddresses: (map['allowedIpAddresses'] as List).cast<String>(),
      autoScalingEnabled: map['autoScalingEnabled'] as bool,
      autoScalingForStorageEnabled: map['autoScalingForStorageEnabled'] as bool,
      availableUpgradeVersions: (map['availableUpgradeVersions'] as List).cast<String>(),
      backupRetentionPeriodInDays: map['backupRetentionPeriodInDays'] as int,
      characterSet: map['characterSet'] as String,
      computeCount: map['computeCount'] as double,
      computeModel: map['computeModel'] as String,
      connectionStrings: (map['connectionStrings'] as List).cast<String>(),
      cpuCoreCount: map['cpuCoreCount'] as int,
      customerContacts: (map['customerContacts'] as List).cast<String>(),
      dataStorageSizeInGb: map['dataStorageSizeInGb'] as int,
      dataStorageSizeInTb: map['dataStorageSizeInTb'] as int,
      databaseVersion: map['databaseVersion'] as String,
      databaseWorkload: map['databaseWorkload'] as String,
      displayName: map['displayName'] as String,
      failedDataRecoveryInSeconds: map['failedDataRecoveryInSeconds'] as int,
      id: map['id'] as String,
      inMemoryAreaInGb: map['inMemoryAreaInGb'] as int,
      licenseModel: map['licenseModel'] as String,
      lifecycleDetails: map['lifecycleDetails'] as String,
      lifecycleState: map['lifecycleState'] as String,
      localAdgAutoFailoverMaxDataLossLimitInSeconds: map['localAdgAutoFailoverMaxDataLossLimitInSeconds'] as int,
      localDataGuardEnabled: map['localDataGuardEnabled'] as bool,
      location: map['location'] as String,
      longTermBackupSchedules: pulumi.Input.decodeList<GetAutonomousDatabaseCloneFromBackupLongTermBackupSchedule>(map['longTermBackupSchedules']!, (value) => GetAutonomousDatabaseCloneFromBackupLongTermBackupSchedule.fromMap((value as Map).cast<String, dynamic>())),
      memoryPerOracleComputeUnitInGb: map['memoryPerOracleComputeUnitInGb'] as int,
      mtlsConnectionRequired: map['mtlsConnectionRequired'] as bool,
      name: map['name'] as String,
      nationalCharacterSet: map['nationalCharacterSet'] as String,
      nextLongTermBackupTimestamp: map['nextLongTermBackupTimestamp'] as String,
      ociUrl: map['ociUrl'] as String,
      ocid: map['ocid'] as String,
      peerDatabaseIds: (map['peerDatabaseIds'] as List).cast<String>(),
      preview: map['preview'] as bool,
      previewVersionWithServiceTermsAccepted: map['previewVersionWithServiceTermsAccepted'] as bool,
      privateEndpointIp: map['privateEndpointIp'] as String,
      privateEndpointLabel: map['privateEndpointLabel'] as String,
      privateEndpointUrl: map['privateEndpointUrl'] as String,
      provisionableCpuses: (map['provisionableCpuses'] as List).cast<int>(),
      remoteDataGuardEnabled: map['remoteDataGuardEnabled'] as bool,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceConsoleUrl: map['serviceConsoleUrl'] as String,
      sourceAutonomousDatabaseId: map['sourceAutonomousDatabaseId'] as String,
      sqlWebDeveloperUrl: map['sqlWebDeveloperUrl'] as String,
      subnetId: map['subnetId'] as String,
      supportedRegionsToCloneTos: (map['supportedRegionsToCloneTos'] as List).cast<String>(),
      tags: (map['tags'] as Map).cast<String, String>(),
      timeCreatedInUtc: map['timeCreatedInUtc'] as String,
      timeDataGuardRoleChangedInUtc: map['timeDataGuardRoleChangedInUtc'] as String,
      timeDeletionOfFreeAutonomousDatabaseInUtc: map['timeDeletionOfFreeAutonomousDatabaseInUtc'] as String,
      timeLocalDataGuardEnabledInUtc: map['timeLocalDataGuardEnabledInUtc'] as String,
      timeMaintenanceBeginInUtc: map['timeMaintenanceBeginInUtc'] as String,
      timeMaintenanceEndInUtc: map['timeMaintenanceEndInUtc'] as String,
      timeOfLastFailoverInUtc: map['timeOfLastFailoverInUtc'] as String,
      timeOfLastRefreshInUtc: map['timeOfLastRefreshInUtc'] as String,
      timeOfLastRefreshPointInUtc: map['timeOfLastRefreshPointInUtc'] as String,
      timeOfLastSwitchoverInUtc: map['timeOfLastSwitchoverInUtc'] as String,
      timeReclamationOfFreeAutonomousDatabaseInUtc: map['timeReclamationOfFreeAutonomousDatabaseInUtc'] as String,
      usedDataStorageSizeInGb: map['usedDataStorageSizeInGb'] as int,
      usedDataStorageSizeInTb: map['usedDataStorageSizeInTb'] as int,
      virtualNetworkId: map['virtualNetworkId'] as String,
    );
  }
}
