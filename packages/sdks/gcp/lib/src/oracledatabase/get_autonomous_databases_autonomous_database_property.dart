// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_autonomous_databases_autonomous_database_property_apex_detail.dart';
import 'get_autonomous_databases_autonomous_database_property_connection_string.dart';
import 'get_autonomous_databases_autonomous_database_property_connection_url.dart';
import 'get_autonomous_databases_autonomous_database_property_customer_contact.dart';
import 'get_autonomous_databases_autonomous_database_property_local_standby_db.dart';
import 'get_autonomous_databases_autonomous_database_property_scheduled_operation_detail.dart';

class GetAutonomousDatabasesAutonomousDatabaseProperty {
  /// The amount of storage currently being used for user and system data, in
  /// terabytes.
  final pulumi.Input<double> actualUsedDataStorageSizeTb;
  /// The amount of storage currently allocated for the database tables and
  /// billed for, rounded up in terabytes.
  final pulumi.Input<double> allocatedStorageSizeTb;
  /// Oracle APEX Application Development.
  /// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/datatypes/AutonomousDatabaseApex
  final pulumi.Input<List<GetAutonomousDatabasesAutonomousDatabasePropertyApexDetail>> apexDetails;
  /// This field indicates the status of Data Guard and Access control for the
  /// Autonomous Database. The field's value is null if Data Guard is disabled
  /// or Access Control is disabled. The field's value is TRUE if both Data Guard
  /// and Access Control are enabled, and the Autonomous Database is using
  /// primary IP access control list (ACL) for standby. The field's value is
  /// FALSE if both Data Guard and Access Control are enabled, and the Autonomous
  /// Database is using a different IP access control list (ACL) for standby
  /// compared to primary.
  final pulumi.Input<bool> arePrimaryAllowlistedIpsUsed;
  /// The Autonomous Container Database OCID.
  final pulumi.Input<String> autonomousContainerDatabaseId;
  /// The list of available Oracle Database upgrade versions for an Autonomous
  /// Database.
  final pulumi.Input<List<String>> availableUpgradeVersions;
  /// The retention period for the Autonomous Database. This field is specified
  /// in days, can range from 1 day to 60 days, and has a default value of
  /// 60 days.
  final pulumi.Input<int> backupRetentionPeriodDays;
  /// The character set for the Autonomous Database. The default is AL32UTF8.
  final pulumi.Input<String> characterSet;
  /// The number of compute servers for the Autonomous Database.
  final pulumi.Input<double> computeCount;
  /// The connection string used to connect to the Autonomous Database.
  /// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/datatypes/AutonomousDatabaseConnectionStrings
  final pulumi.Input<List<GetAutonomousDatabasesAutonomousDatabasePropertyConnectionString>> connectionStrings;
  /// The URLs for accessing Oracle Application Express (APEX) and SQL Developer
  /// Web with a browser from a Compute instance.
  /// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/datatypes/AutonomousDatabaseConnectionUrls
  final pulumi.Input<List<GetAutonomousDatabasesAutonomousDatabasePropertyConnectionUrl>> connectionUrls;
  /// The number of CPU cores to be made available to the database.
  final pulumi.Input<int> cpuCoreCount;
  /// The list of customer contacts.
  final pulumi.Input<List<GetAutonomousDatabasesAutonomousDatabasePropertyCustomerContact>> customerContacts;
  /// The current state of the Data Safe registration for the
  /// Autonomous Database.
  /// Possible values:
  /// DATA_SAFE_STATE_UNSPECIFIED
  /// REGISTERING
  /// REGISTERED
  /// DEREGISTERING
  /// NOT_REGISTERED
  /// FAILED
  final pulumi.Input<String> dataSafeState;
  /// The size of the data stored in the database, in gigabytes.
  final pulumi.Input<int> dataStorageSizeGb;
  /// The size of the data stored in the database, in terabytes.
  final pulumi.Input<int> dataStorageSizeTb;
  /// The current state of database management for the Autonomous Database.
  /// Possible values:
  /// DATABASE_MANAGEMENT_STATE_UNSPECIFIED
  /// ENABLING
  /// ENABLED
  /// DISABLING
  /// NOT_ENABLED
  /// FAILED_ENABLING
  /// FAILED_DISABLING
  final pulumi.Input<String> databaseManagementState;
  /// The edition of the Autonomous Databases.
  /// Possible values:
  /// DATABASE_EDITION_UNSPECIFIED
  /// STANDARD_EDITION
  /// ENTERPRISE_EDITION
  final pulumi.Input<String> dbEdition;
  /// The Oracle Database version for the Autonomous Database.
  final pulumi.Input<String> dbVersion;
  /// Possible values:
  /// DB_WORKLOAD_UNSPECIFIED
  /// OLTP
  /// DW
  /// AJD
  /// APEX
  final pulumi.Input<String> dbWorkload;
  /// This field indicates the number of seconds of data loss during a Data
  /// Guard failover.
  final pulumi.Input<String> failedDataRecoveryDuration;
  /// This field indicates if auto scaling is enabled for the Autonomous Database
  /// CPU core count.
  final pulumi.Input<bool> isAutoScalingEnabled;
  /// This field indicates whether the Autonomous Database has local (in-region)
  /// Data Guard enabled.
  final pulumi.Input<bool> isLocalDataGuardEnabled;
  /// This field indicates if auto scaling is enabled for the Autonomous Database
  /// storage.
  final pulumi.Input<bool> isStorageAutoScalingEnabled;
  /// The license type used for the Autonomous Database.
  /// Possible values:
  /// LICENSE_TYPE_UNSPECIFIED
  /// LICENSE_INCLUDED
  /// BRING_YOUR_OWN_LICENSE
  final pulumi.Input<String> licenseType;
  /// The details of the current lifestyle state of the Autonomous Database.
  final pulumi.Input<String> lifecycleDetails;
  /// This field indicates the maximum data loss limit for an Autonomous
  /// Database, in seconds.
  final pulumi.Input<int> localAdgAutoFailoverMaxDataLossLimit;
  /// This field indicates the local disaster recovery (DR) type of an
  /// Autonomous Database.
  /// Possible values:
  /// LOCAL_DISASTER_RECOVERY_TYPE_UNSPECIFIED
  /// ADG
  /// BACKUP_BASED
  final pulumi.Input<String> localDisasterRecoveryType;
  /// Autonomous Data Guard standby database details.
  /// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/datatypes/AutonomousDatabaseStandbySummary
  final pulumi.Input<List<GetAutonomousDatabasesAutonomousDatabasePropertyLocalStandbyDb>> localStandbyDbs;
  /// The date and time when maintenance will begin.
  final pulumi.Input<String> maintenanceBeginTime;
  /// The date and time when maintenance will end.
  final pulumi.Input<String> maintenanceEndTime;
  /// The maintenance schedule of the Autonomous Database.
  /// Possible values:
  /// MAINTENANCE_SCHEDULE_TYPE_UNSPECIFIED
  /// EARLY
  /// REGULAR
  final pulumi.Input<String> maintenanceScheduleType;
  /// The amount of memory enabled per ECPU, in gigabytes.
  final pulumi.Input<int> memoryPerOracleComputeUnitGbs;
  /// The memory assigned to in-memory tables in an Autonomous Database.
  final pulumi.Input<int> memoryTableGbs;
  /// This field specifies if the Autonomous Database requires mTLS connections.
  final pulumi.Input<bool> mtlsConnectionRequired;
  /// The national character set for the Autonomous Database. The default is
  /// AL16UTF16.
  final pulumi.Input<String> nCharacterSet;
  /// The long term backup schedule of the Autonomous Database.
  final pulumi.Input<String> nextLongTermBackupTime;
  /// The Oracle Cloud Infrastructure link for the Autonomous Database.
  final pulumi.Input<String> ociUrl;
  /// OCID of the Autonomous Database.
  /// https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm#Oracle
  final pulumi.Input<String> ocid;
  /// This field indicates the current mode of the Autonomous Database.
  /// Possible values:
  /// OPEN_MODE_UNSPECIFIED
  /// READ_ONLY
  /// READ_WRITE
  final pulumi.Input<String> openMode;
  /// Possible values:
  /// OPERATIONS_INSIGHTS_STATE_UNSPECIFIED
  /// ENABLING
  /// ENABLED
  /// DISABLING
  /// NOT_ENABLED
  /// FAILED_ENABLING
  /// FAILED_DISABLING
  final pulumi.Input<String> operationsInsightsState;
  /// The list of OCIDs of standby databases located in Autonomous Data Guard
  /// remote regions that are associated with the source database.
  final pulumi.Input<List<String>> peerDbIds;
  /// The permission level of the Autonomous Database.
  /// Possible values:
  /// PERMISSION_LEVEL_UNSPECIFIED
  /// RESTRICTED
  /// UNRESTRICTED
  final pulumi.Input<String> permissionLevel;
  /// The private endpoint for the Autonomous Database.
  final pulumi.Input<String> privateEndpoint;
  /// The private endpoint IP address for the Autonomous Database.
  final pulumi.Input<String> privateEndpointIp;
  /// The private endpoint label for the Autonomous Database.
  final pulumi.Input<String> privateEndpointLabel;
  /// The refresh mode of the cloned Autonomous Database.
  /// Possible values:
  /// REFRESHABLE_MODE_UNSPECIFIED
  /// AUTOMATIC
  /// MANUAL
  final pulumi.Input<String> refreshableMode;
  /// The refresh State of the clone.
  /// Possible values:
  /// REFRESHABLE_STATE_UNSPECIFIED
  /// REFRESHING
  /// NOT_REFRESHING
  final pulumi.Input<String> refreshableState;
  /// The Data Guard role of the Autonomous Database.
  /// Possible values:
  /// ROLE_UNSPECIFIED
  /// PRIMARY
  /// STANDBY
  /// DISABLED_STANDBY
  /// BACKUP_COPY
  /// SNAPSHOT_STANDBY
  final pulumi.Input<String> role;
  /// The list and details of the scheduled operations of the Autonomous
  /// Database.
  final pulumi.Input<List<GetAutonomousDatabasesAutonomousDatabasePropertyScheduledOperationDetail>> scheduledOperationDetails;
  /// The ID of the Oracle Cloud Infrastructure vault secret.
  final pulumi.Input<String> secretId;
  /// The SQL Web Developer URL for the Autonomous Database.
  final pulumi.Input<String> sqlWebDeveloperUrl;
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// PROVISIONING
  /// AVAILABLE
  /// STOPPING
  /// STOPPED
  /// STARTING
  /// TERMINATING
  /// TERMINATED
  /// UNAVAILABLE
  /// RESTORE_IN_PROGRESS
  /// RESTORE_FAILED
  /// BACKUP_IN_PROGRESS
  /// SCALE_IN_PROGRESS
  /// AVAILABLE_NEEDS_ATTENTION
  /// UPDATING
  /// MAINTENANCE_IN_PROGRESS
  /// RESTARTING
  /// RECREATING
  /// ROLE_CHANGE_IN_PROGRESS
  /// UPGRADING
  /// INACCESSIBLE
  /// STANDBY
  final pulumi.Input<String> state;
  /// The list of available regions that can be used to create a clone for the
  /// Autonomous Database.
  final pulumi.Input<List<String>> supportedCloneRegions;
  /// The storage space used by automatic backups of Autonomous Database, in
  /// gigabytes.
  final pulumi.Input<double> totalAutoBackupStorageSizeGbs;
  /// The storage space used by Autonomous Database, in gigabytes.
  final pulumi.Input<int> usedDataStorageSizeTbs;
  /// The ID of the Oracle Cloud Infrastructure vault.
  final pulumi.Input<String> vaultId;

  /// Creates a new [GetAutonomousDatabasesAutonomousDatabaseProperty].
  /// [actualUsedDataStorageSizeTb] The amount of storage currently being used for user and system data, in
  /// [allocatedStorageSizeTb] The amount of storage currently allocated for the database tables and
  /// [apexDetails] Oracle APEX Application Development.
  /// [arePrimaryAllowlistedIpsUsed] This field indicates the status of Data Guard and Access control for the
  /// [autonomousContainerDatabaseId] The Autonomous Container Database OCID.
  /// [availableUpgradeVersions] The list of available Oracle Database upgrade versions for an Autonomous
  /// [backupRetentionPeriodDays] The retention period for the Autonomous Database. This field is specified
  /// [characterSet] The character set for the Autonomous Database. The default is AL32UTF8.
  /// [computeCount] The number of compute servers for the Autonomous Database.
  /// [connectionStrings] The connection string used to connect to the Autonomous Database.
  /// [connectionUrls] The URLs for accessing Oracle Application Express (APEX) and SQL Developer
  /// [cpuCoreCount] The number of CPU cores to be made available to the database.
  /// [customerContacts] The list of customer contacts.
  /// [dataSafeState] The current state of the Data Safe registration for the
  /// [dataStorageSizeGb] The size of the data stored in the database, in gigabytes.
  /// [dataStorageSizeTb] The size of the data stored in the database, in terabytes.
  /// [databaseManagementState] The current state of database management for the Autonomous Database.
  /// [dbEdition] The edition of the Autonomous Databases.
  /// [dbVersion] The Oracle Database version for the Autonomous Database.
  /// [dbWorkload] Possible values:
  /// [failedDataRecoveryDuration] This field indicates the number of seconds of data loss during a Data
  /// [isAutoScalingEnabled] This field indicates if auto scaling is enabled for the Autonomous Database
  /// [isLocalDataGuardEnabled] This field indicates whether the Autonomous Database has local (in-region)
  /// [isStorageAutoScalingEnabled] This field indicates if auto scaling is enabled for the Autonomous Database
  /// [licenseType] The license type used for the Autonomous Database.
  /// [lifecycleDetails] The details of the current lifestyle state of the Autonomous Database.
  /// [localAdgAutoFailoverMaxDataLossLimit] This field indicates the maximum data loss limit for an Autonomous
  /// [localDisasterRecoveryType] This field indicates the local disaster recovery (DR) type of an
  /// [localStandbyDbs] Autonomous Data Guard standby database details.
  /// [maintenanceBeginTime] The date and time when maintenance will begin.
  /// [maintenanceEndTime] The date and time when maintenance will end.
  /// [maintenanceScheduleType] The maintenance schedule of the Autonomous Database.
  /// [memoryPerOracleComputeUnitGbs] The amount of memory enabled per ECPU, in gigabytes.
  /// [memoryTableGbs] The memory assigned to in-memory tables in an Autonomous Database.
  /// [mtlsConnectionRequired] This field specifies if the Autonomous Database requires mTLS connections.
  /// [nCharacterSet] The national character set for the Autonomous Database. The default is
  /// [nextLongTermBackupTime] The long term backup schedule of the Autonomous Database.
  /// [ociUrl] The Oracle Cloud Infrastructure link for the Autonomous Database.
  /// [ocid] OCID of the Autonomous Database.
  /// [openMode] This field indicates the current mode of the Autonomous Database.
  /// [operationsInsightsState] Possible values:
  /// [peerDbIds] The list of OCIDs of standby databases located in Autonomous Data Guard
  /// [permissionLevel] The permission level of the Autonomous Database.
  /// [privateEndpoint] The private endpoint for the Autonomous Database.
  /// [privateEndpointIp] The private endpoint IP address for the Autonomous Database.
  /// [privateEndpointLabel] The private endpoint label for the Autonomous Database.
  /// [refreshableMode] The refresh mode of the cloned Autonomous Database.
  /// [refreshableState] The refresh State of the clone.
  /// [role] The Data Guard role of the Autonomous Database.
  /// [scheduledOperationDetails] The list and details of the scheduled operations of the Autonomous
  /// [secretId] The ID of the Oracle Cloud Infrastructure vault secret.
  /// [sqlWebDeveloperUrl] The SQL Web Developer URL for the Autonomous Database.
  /// [state] Possible values:
  /// [supportedCloneRegions] The list of available regions that can be used to create a clone for the
  /// [totalAutoBackupStorageSizeGbs] The storage space used by automatic backups of Autonomous Database, in
  /// [usedDataStorageSizeTbs] The storage space used by Autonomous Database, in gigabytes.
  /// [vaultId] The ID of the Oracle Cloud Infrastructure vault.
  GetAutonomousDatabasesAutonomousDatabaseProperty({
    required this.actualUsedDataStorageSizeTb,
    required this.allocatedStorageSizeTb,
    required this.apexDetails,
    required this.arePrimaryAllowlistedIpsUsed,
    required this.autonomousContainerDatabaseId,
    required this.availableUpgradeVersions,
    required this.backupRetentionPeriodDays,
    required this.characterSet,
    required this.computeCount,
    required this.connectionStrings,
    required this.connectionUrls,
    required this.cpuCoreCount,
    required this.customerContacts,
    required this.dataSafeState,
    required this.dataStorageSizeGb,
    required this.dataStorageSizeTb,
    required this.databaseManagementState,
    required this.dbEdition,
    required this.dbVersion,
    required this.dbWorkload,
    required this.failedDataRecoveryDuration,
    required this.isAutoScalingEnabled,
    required this.isLocalDataGuardEnabled,
    required this.isStorageAutoScalingEnabled,
    required this.licenseType,
    required this.lifecycleDetails,
    required this.localAdgAutoFailoverMaxDataLossLimit,
    required this.localDisasterRecoveryType,
    required this.localStandbyDbs,
    required this.maintenanceBeginTime,
    required this.maintenanceEndTime,
    required this.maintenanceScheduleType,
    required this.memoryPerOracleComputeUnitGbs,
    required this.memoryTableGbs,
    required this.mtlsConnectionRequired,
    required this.nCharacterSet,
    required this.nextLongTermBackupTime,
    required this.ociUrl,
    required this.ocid,
    required this.openMode,
    required this.operationsInsightsState,
    required this.peerDbIds,
    required this.permissionLevel,
    required this.privateEndpoint,
    required this.privateEndpointIp,
    required this.privateEndpointLabel,
    required this.refreshableMode,
    required this.refreshableState,
    required this.role,
    required this.scheduledOperationDetails,
    required this.secretId,
    required this.sqlWebDeveloperUrl,
    required this.state,
    required this.supportedCloneRegions,
    required this.totalAutoBackupStorageSizeGbs,
    required this.usedDataStorageSizeTbs,
    required this.vaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actualUsedDataStorageSizeTb': actualUsedDataStorageSizeTb,
      'allocatedStorageSizeTb': allocatedStorageSizeTb,
      'apexDetails': pulumi.Input.mapInputValue<List<GetAutonomousDatabasesAutonomousDatabasePropertyApexDetail>, List<Map<String, dynamic>>>(apexDetails, (value) => pulumi.Input.encodeList<GetAutonomousDatabasesAutonomousDatabasePropertyApexDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'arePrimaryAllowlistedIpsUsed': arePrimaryAllowlistedIpsUsed,
      'autonomousContainerDatabaseId': autonomousContainerDatabaseId,
      'availableUpgradeVersions': availableUpgradeVersions,
      'backupRetentionPeriodDays': backupRetentionPeriodDays,
      'characterSet': characterSet,
      'computeCount': computeCount,
      'connectionStrings': pulumi.Input.mapInputValue<List<GetAutonomousDatabasesAutonomousDatabasePropertyConnectionString>, List<Map<String, dynamic>>>(connectionStrings, (value) => pulumi.Input.encodeList<GetAutonomousDatabasesAutonomousDatabasePropertyConnectionString, Map<String, dynamic>>(value, (value) => value.toMap())),
      'connectionUrls': pulumi.Input.mapInputValue<List<GetAutonomousDatabasesAutonomousDatabasePropertyConnectionUrl>, List<Map<String, dynamic>>>(connectionUrls, (value) => pulumi.Input.encodeList<GetAutonomousDatabasesAutonomousDatabasePropertyConnectionUrl, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cpuCoreCount': cpuCoreCount,
      'customerContacts': pulumi.Input.mapInputValue<List<GetAutonomousDatabasesAutonomousDatabasePropertyCustomerContact>, List<Map<String, dynamic>>>(customerContacts, (value) => pulumi.Input.encodeList<GetAutonomousDatabasesAutonomousDatabasePropertyCustomerContact, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataSafeState': dataSafeState,
      'dataStorageSizeGb': dataStorageSizeGb,
      'dataStorageSizeTb': dataStorageSizeTb,
      'databaseManagementState': databaseManagementState,
      'dbEdition': dbEdition,
      'dbVersion': dbVersion,
      'dbWorkload': dbWorkload,
      'failedDataRecoveryDuration': failedDataRecoveryDuration,
      'isAutoScalingEnabled': isAutoScalingEnabled,
      'isLocalDataGuardEnabled': isLocalDataGuardEnabled,
      'isStorageAutoScalingEnabled': isStorageAutoScalingEnabled,
      'licenseType': licenseType,
      'lifecycleDetails': lifecycleDetails,
      'localAdgAutoFailoverMaxDataLossLimit': localAdgAutoFailoverMaxDataLossLimit,
      'localDisasterRecoveryType': localDisasterRecoveryType,
      'localStandbyDbs': pulumi.Input.mapInputValue<List<GetAutonomousDatabasesAutonomousDatabasePropertyLocalStandbyDb>, List<Map<String, dynamic>>>(localStandbyDbs, (value) => pulumi.Input.encodeList<GetAutonomousDatabasesAutonomousDatabasePropertyLocalStandbyDb, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maintenanceBeginTime': maintenanceBeginTime,
      'maintenanceEndTime': maintenanceEndTime,
      'maintenanceScheduleType': maintenanceScheduleType,
      'memoryPerOracleComputeUnitGbs': memoryPerOracleComputeUnitGbs,
      'memoryTableGbs': memoryTableGbs,
      'mtlsConnectionRequired': mtlsConnectionRequired,
      'nCharacterSet': nCharacterSet,
      'nextLongTermBackupTime': nextLongTermBackupTime,
      'ociUrl': ociUrl,
      'ocid': ocid,
      'openMode': openMode,
      'operationsInsightsState': operationsInsightsState,
      'peerDbIds': peerDbIds,
      'permissionLevel': permissionLevel,
      'privateEndpoint': privateEndpoint,
      'privateEndpointIp': privateEndpointIp,
      'privateEndpointLabel': privateEndpointLabel,
      'refreshableMode': refreshableMode,
      'refreshableState': refreshableState,
      'role': role,
      'scheduledOperationDetails': pulumi.Input.mapInputValue<List<GetAutonomousDatabasesAutonomousDatabasePropertyScheduledOperationDetail>, List<Map<String, dynamic>>>(scheduledOperationDetails, (value) => pulumi.Input.encodeList<GetAutonomousDatabasesAutonomousDatabasePropertyScheduledOperationDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secretId': secretId,
      'sqlWebDeveloperUrl': sqlWebDeveloperUrl,
      'state': state,
      'supportedCloneRegions': supportedCloneRegions,
      'totalAutoBackupStorageSizeGbs': totalAutoBackupStorageSizeGbs,
      'usedDataStorageSizeTbs': usedDataStorageSizeTbs,
      'vaultId': vaultId,
    };
  }

  factory GetAutonomousDatabasesAutonomousDatabaseProperty.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabasesAutonomousDatabaseProperty(
      actualUsedDataStorageSizeTb: pulumi.Input.fromValue(map['actualUsedDataStorageSizeTb'] as double),
      allocatedStorageSizeTb: pulumi.Input.fromValue(map['allocatedStorageSizeTb'] as double),
      apexDetails: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAutonomousDatabasesAutonomousDatabasePropertyApexDetail>(map['apexDetails']!, (value) => GetAutonomousDatabasesAutonomousDatabasePropertyApexDetail.fromMap((value as Map).cast<String, dynamic>()))),
      arePrimaryAllowlistedIpsUsed: pulumi.Input.fromValue(map['arePrimaryAllowlistedIpsUsed'] as bool),
      autonomousContainerDatabaseId: pulumi.Input.fromValue(map['autonomousContainerDatabaseId'] as String),
      availableUpgradeVersions: pulumi.Input.fromValue((map['availableUpgradeVersions'] as List).cast<String>()),
      backupRetentionPeriodDays: pulumi.Input.fromValue(map['backupRetentionPeriodDays'] as int),
      characterSet: pulumi.Input.fromValue(map['characterSet'] as String),
      computeCount: pulumi.Input.fromValue(map['computeCount'] as double),
      connectionStrings: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAutonomousDatabasesAutonomousDatabasePropertyConnectionString>(map['connectionStrings']!, (value) => GetAutonomousDatabasesAutonomousDatabasePropertyConnectionString.fromMap((value as Map).cast<String, dynamic>()))),
      connectionUrls: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAutonomousDatabasesAutonomousDatabasePropertyConnectionUrl>(map['connectionUrls']!, (value) => GetAutonomousDatabasesAutonomousDatabasePropertyConnectionUrl.fromMap((value as Map).cast<String, dynamic>()))),
      cpuCoreCount: pulumi.Input.fromValue(map['cpuCoreCount'] as int),
      customerContacts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAutonomousDatabasesAutonomousDatabasePropertyCustomerContact>(map['customerContacts']!, (value) => GetAutonomousDatabasesAutonomousDatabasePropertyCustomerContact.fromMap((value as Map).cast<String, dynamic>()))),
      dataSafeState: pulumi.Input.fromValue(map['dataSafeState'] as String),
      dataStorageSizeGb: pulumi.Input.fromValue(map['dataStorageSizeGb'] as int),
      dataStorageSizeTb: pulumi.Input.fromValue(map['dataStorageSizeTb'] as int),
      databaseManagementState: pulumi.Input.fromValue(map['databaseManagementState'] as String),
      dbEdition: pulumi.Input.fromValue(map['dbEdition'] as String),
      dbVersion: pulumi.Input.fromValue(map['dbVersion'] as String),
      dbWorkload: pulumi.Input.fromValue(map['dbWorkload'] as String),
      failedDataRecoveryDuration: pulumi.Input.fromValue(map['failedDataRecoveryDuration'] as String),
      isAutoScalingEnabled: pulumi.Input.fromValue(map['isAutoScalingEnabled'] as bool),
      isLocalDataGuardEnabled: pulumi.Input.fromValue(map['isLocalDataGuardEnabled'] as bool),
      isStorageAutoScalingEnabled: pulumi.Input.fromValue(map['isStorageAutoScalingEnabled'] as bool),
      licenseType: pulumi.Input.fromValue(map['licenseType'] as String),
      lifecycleDetails: pulumi.Input.fromValue(map['lifecycleDetails'] as String),
      localAdgAutoFailoverMaxDataLossLimit: pulumi.Input.fromValue(map['localAdgAutoFailoverMaxDataLossLimit'] as int),
      localDisasterRecoveryType: pulumi.Input.fromValue(map['localDisasterRecoveryType'] as String),
      localStandbyDbs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAutonomousDatabasesAutonomousDatabasePropertyLocalStandbyDb>(map['localStandbyDbs']!, (value) => GetAutonomousDatabasesAutonomousDatabasePropertyLocalStandbyDb.fromMap((value as Map).cast<String, dynamic>()))),
      maintenanceBeginTime: pulumi.Input.fromValue(map['maintenanceBeginTime'] as String),
      maintenanceEndTime: pulumi.Input.fromValue(map['maintenanceEndTime'] as String),
      maintenanceScheduleType: pulumi.Input.fromValue(map['maintenanceScheduleType'] as String),
      memoryPerOracleComputeUnitGbs: pulumi.Input.fromValue(map['memoryPerOracleComputeUnitGbs'] as int),
      memoryTableGbs: pulumi.Input.fromValue(map['memoryTableGbs'] as int),
      mtlsConnectionRequired: pulumi.Input.fromValue(map['mtlsConnectionRequired'] as bool),
      nCharacterSet: pulumi.Input.fromValue(map['nCharacterSet'] as String),
      nextLongTermBackupTime: pulumi.Input.fromValue(map['nextLongTermBackupTime'] as String),
      ociUrl: pulumi.Input.fromValue(map['ociUrl'] as String),
      ocid: pulumi.Input.fromValue(map['ocid'] as String),
      openMode: pulumi.Input.fromValue(map['openMode'] as String),
      operationsInsightsState: pulumi.Input.fromValue(map['operationsInsightsState'] as String),
      peerDbIds: pulumi.Input.fromValue((map['peerDbIds'] as List).cast<String>()),
      permissionLevel: pulumi.Input.fromValue(map['permissionLevel'] as String),
      privateEndpoint: pulumi.Input.fromValue(map['privateEndpoint'] as String),
      privateEndpointIp: pulumi.Input.fromValue(map['privateEndpointIp'] as String),
      privateEndpointLabel: pulumi.Input.fromValue(map['privateEndpointLabel'] as String),
      refreshableMode: pulumi.Input.fromValue(map['refreshableMode'] as String),
      refreshableState: pulumi.Input.fromValue(map['refreshableState'] as String),
      role: pulumi.Input.fromValue(map['role'] as String),
      scheduledOperationDetails: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAutonomousDatabasesAutonomousDatabasePropertyScheduledOperationDetail>(map['scheduledOperationDetails']!, (value) => GetAutonomousDatabasesAutonomousDatabasePropertyScheduledOperationDetail.fromMap((value as Map).cast<String, dynamic>()))),
      secretId: pulumi.Input.fromValue(map['secretId'] as String),
      sqlWebDeveloperUrl: pulumi.Input.fromValue(map['sqlWebDeveloperUrl'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      supportedCloneRegions: pulumi.Input.fromValue((map['supportedCloneRegions'] as List).cast<String>()),
      totalAutoBackupStorageSizeGbs: pulumi.Input.fromValue(map['totalAutoBackupStorageSizeGbs'] as double),
      usedDataStorageSizeTbs: pulumi.Input.fromValue(map['usedDataStorageSizeTbs'] as int),
      vaultId: pulumi.Input.fromValue(map['vaultId'] as String),
    );
  }
}

