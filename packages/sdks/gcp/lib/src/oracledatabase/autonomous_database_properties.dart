// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autonomous_database_properties_apex_detail.dart';
import 'autonomous_database_properties_connection_string.dart';
import 'autonomous_database_properties_connection_url.dart';
import 'autonomous_database_properties_customer_contact.dart';
import 'autonomous_database_properties_local_standby_db.dart';
import 'autonomous_database_properties_scheduled_operation_detail.dart';

class AutonomousDatabaseProperties {
  /// (Output)
  /// The amount of storage currently being used for user and system data, in
  /// terabytes.
  final pulumi.Input<double>? actualUsedDataStorageSizeTb;

  /// (Output)
  /// The amount of storage currently allocated for the database tables and
  /// billed for, rounded up in terabytes.
  final pulumi.Input<double>? allocatedStorageSizeTb;

  /// (Output)
  /// Oracle APEX Application Development.
  /// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/datatypes/AutonomousDatabaseApex
  /// Structure is documented below.
  final pulumi.Input<List<AutonomousDatabasePropertiesApexDetail>>? apexDetails;

  /// (Output)
  /// This field indicates the status of Data Guard and Access control for the
  /// Autonomous Database. The field's value is null if Data Guard is disabled
  /// or Access Control is disabled. The field's value is TRUE if both Data Guard
  /// and Access Control are enabled, and the Autonomous Database is using
  /// primary IP access control list (ACL) for standby. The field's value is
  /// FALSE if both Data Guard and Access Control are enabled, and the Autonomous
  /// Database is using a different IP access control list (ACL) for standby
  /// compared to primary.
  final pulumi.Input<bool>? arePrimaryAllowlistedIpsUsed;

  /// (Output)
  /// The Autonomous Container Database OCID.
  final pulumi.Input<String>? autonomousContainerDatabaseId;

  /// (Output)
  /// The list of available Oracle Database upgrade versions for an Autonomous
  /// Database.
  final pulumi.Input<List<String>>? availableUpgradeVersions;

  /// The retention period for the Autonomous Database. This field is specified
  /// in days, can range from 1 day to 60 days, and has a default value of
  /// 60 days.
  final pulumi.Input<int>? backupRetentionPeriodDays;

  /// The character set for the Autonomous Database. The default is AL32UTF8.
  final pulumi.Input<String>? characterSet;

  /// The number of compute servers for the Autonomous Database.
  final pulumi.Input<double>? computeCount;

  /// (Output)
  /// The connection string used to connect to the Autonomous Database.
  /// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/datatypes/AutonomousDatabaseConnectionStrings
  /// Structure is documented below.
  final pulumi.Input<List<AutonomousDatabasePropertiesConnectionString>>?
  connectionStrings;

  /// (Output)
  /// The URLs for accessing Oracle Application Express (APEX) and SQL Developer
  /// Web with a browser from a Compute instance.
  /// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/datatypes/AutonomousDatabaseConnectionUrls
  /// Structure is documented below.
  final pulumi.Input<List<AutonomousDatabasePropertiesConnectionUrl>>?
  connectionUrls;

  /// The number of CPU cores to be made available to the database.
  final pulumi.Input<int>? cpuCoreCount;

  /// The list of customer contacts.
  /// Structure is documented below.
  final pulumi.Input<List<AutonomousDatabasePropertiesCustomerContact>>?
  customerContacts;

  /// (Output)
  /// The current state of the Data Safe registration for the
  /// Autonomous Database.
  /// Possible values:
  /// DATA_SAFE_STATE_UNSPECIFIED
  /// REGISTERING
  /// REGISTERED
  /// DEREGISTERING
  /// NOT_REGISTERED
  /// FAILED
  final pulumi.Input<String>? dataSafeState;

  /// The size of the data stored in the database, in gigabytes.
  final pulumi.Input<int>? dataStorageSizeGb;

  /// The size of the data stored in the database, in terabytes.
  final pulumi.Input<int>? dataStorageSizeTb;

  /// (Output)
  /// The current state of database management for the Autonomous Database.
  /// Possible values:
  /// DATABASE_MANAGEMENT_STATE_UNSPECIFIED
  /// ENABLING
  /// ENABLED
  /// DISABLING
  /// NOT_ENABLED
  /// FAILED_ENABLING
  /// FAILED_DISABLING
  final pulumi.Input<String>? databaseManagementState;

  /// The edition of the Autonomous Databases.
  /// Possible values:
  /// DATABASE_EDITION_UNSPECIFIED
  /// STANDARD_EDITION
  /// ENTERPRISE_EDITION
  final pulumi.Input<String>? dbEdition;

  /// The Oracle Database version for the Autonomous Database.
  final pulumi.Input<String>? dbVersion;

  /// Possible values:
  /// DB_WORKLOAD_UNSPECIFIED
  /// OLTP
  /// DW
  /// AJD
  /// APEX
  final pulumi.Input<String> dbWorkload;

  /// (Output)
  /// This field indicates the number of seconds of data loss during a Data
  /// Guard failover.
  final pulumi.Input<String>? failedDataRecoveryDuration;

  /// This field indicates if auto scaling is enabled for the Autonomous Database
  /// CPU core count.
  final pulumi.Input<bool>? isAutoScalingEnabled;

  /// (Output)
  /// This field indicates whether the Autonomous Database has local (in-region)
  /// Data Guard enabled.
  final pulumi.Input<bool>? isLocalDataGuardEnabled;

  /// This field indicates if auto scaling is enabled for the Autonomous Database
  /// storage.
  final pulumi.Input<bool>? isStorageAutoScalingEnabled;

  /// The license type used for the Autonomous Database.
  /// Possible values:
  /// LICENSE_TYPE_UNSPECIFIED
  /// LICENSE_INCLUDED
  /// BRING_YOUR_OWN_LICENSE
  final pulumi.Input<String> licenseType;

  /// (Output)
  /// The details of the current lifestyle state of the Autonomous Database.
  final pulumi.Input<String>? lifecycleDetails;

  /// (Output)
  /// This field indicates the maximum data loss limit for an Autonomous
  /// Database, in seconds.
  final pulumi.Input<int>? localAdgAutoFailoverMaxDataLossLimit;

  /// (Output)
  /// This field indicates the local disaster recovery (DR) type of an
  /// Autonomous Database.
  /// Possible values:
  /// LOCAL_DISASTER_RECOVERY_TYPE_UNSPECIFIED
  /// ADG
  /// BACKUP_BASED
  final pulumi.Input<String>? localDisasterRecoveryType;

  /// (Output)
  /// Autonomous Data Guard standby database details.
  /// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/datatypes/AutonomousDatabaseStandbySummary
  /// Structure is documented below.
  final pulumi.Input<List<AutonomousDatabasePropertiesLocalStandbyDb>>?
  localStandbyDbs;

  /// (Output)
  /// The date and time when maintenance will begin.
  final pulumi.Input<String>? maintenanceBeginTime;

  /// (Output)
  /// The date and time when maintenance will end.
  final pulumi.Input<String>? maintenanceEndTime;

  /// The maintenance schedule of the Autonomous Database.
  /// Possible values:
  /// MAINTENANCE_SCHEDULE_TYPE_UNSPECIFIED
  /// EARLY
  /// REGULAR
  final pulumi.Input<String>? maintenanceScheduleType;

  /// (Output)
  /// The amount of memory enabled per ECPU, in gigabytes.
  final pulumi.Input<int>? memoryPerOracleComputeUnitGbs;

  /// (Output)
  /// The memory assigned to in-memory tables in an Autonomous Database.
  final pulumi.Input<int>? memoryTableGbs;

  /// This field specifies if the Autonomous Database requires mTLS connections.
  final pulumi.Input<bool>? mtlsConnectionRequired;

  /// The national character set for the Autonomous Database. The default is
  /// AL16UTF16.
  final pulumi.Input<String>? nCharacterSet;

  /// (Output)
  /// The long term backup schedule of the Autonomous Database.
  final pulumi.Input<String>? nextLongTermBackupTime;

  /// (Output)
  /// The Oracle Cloud Infrastructure link for the Autonomous Database.
  final pulumi.Input<String>? ociUrl;

  /// (Output)
  /// OCID of the Autonomous Database.
  /// https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm#Oracle
  final pulumi.Input<String>? ocid;

  /// (Output)
  /// This field indicates the current mode of the Autonomous Database.
  /// Possible values:
  /// OPEN_MODE_UNSPECIFIED
  /// READ_ONLY
  /// READ_WRITE
  final pulumi.Input<String>? openMode;

  /// Possible values:
  /// OPERATIONS_INSIGHTS_STATE_UNSPECIFIED
  /// ENABLING
  /// ENABLED
  /// DISABLING
  /// NOT_ENABLED
  /// FAILED_ENABLING
  /// FAILED_DISABLING
  final pulumi.Input<String>? operationsInsightsState;

  /// (Output)
  /// The list of OCIDs of standby databases located in Autonomous Data Guard
  /// remote regions that are associated with the source database.
  final pulumi.Input<List<String>>? peerDbIds;

  /// (Output)
  /// The permission level of the Autonomous Database.
  /// Possible values:
  /// PERMISSION_LEVEL_UNSPECIFIED
  /// RESTRICTED
  /// UNRESTRICTED
  final pulumi.Input<String>? permissionLevel;

  /// (Output)
  /// The private endpoint for the Autonomous Database.
  final pulumi.Input<String>? privateEndpoint;

  /// The private endpoint IP address for the Autonomous Database.
  final pulumi.Input<String>? privateEndpointIp;

  /// The private endpoint label for the Autonomous Database.
  final pulumi.Input<String>? privateEndpointLabel;

  /// (Output)
  /// The refresh mode of the cloned Autonomous Database.
  /// Possible values:
  /// REFRESHABLE_MODE_UNSPECIFIED
  /// AUTOMATIC
  /// MANUAL
  final pulumi.Input<String>? refreshableMode;

  /// (Output)
  /// The refresh State of the clone.
  /// Possible values:
  /// REFRESHABLE_STATE_UNSPECIFIED
  /// REFRESHING
  /// NOT_REFRESHING
  final pulumi.Input<String>? refreshableState;

  /// (Output)
  /// The Data Guard role of the Autonomous Database.
  /// Possible values:
  /// ROLE_UNSPECIFIED
  /// PRIMARY
  /// STANDBY
  /// DISABLED_STANDBY
  /// BACKUP_COPY
  /// SNAPSHOT_STANDBY
  final pulumi.Input<String>? role;

  /// (Output)
  /// The list and details of the scheduled operations of the Autonomous
  /// Database.
  /// Structure is documented below.
  final pulumi.Input<
    List<AutonomousDatabasePropertiesScheduledOperationDetail>
  >?
  scheduledOperationDetails;

  /// The ID of the Oracle Cloud Infrastructure vault secret.
  final pulumi.Input<String>? secretId;

  /// (Output)
  /// The SQL Web Developer URL for the Autonomous Database.
  final pulumi.Input<String>? sqlWebDeveloperUrl;

  /// (Output)
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
  final pulumi.Input<String>? state;

  /// (Output)
  /// The list of available regions that can be used to create a clone for the
  /// Autonomous Database.
  final pulumi.Input<List<String>>? supportedCloneRegions;

  /// (Output)
  /// The storage space used by automatic backups of Autonomous Database, in
  /// gigabytes.
  final pulumi.Input<double>? totalAutoBackupStorageSizeGbs;

  /// (Output)
  /// The storage space used by Autonomous Database, in gigabytes.
  final pulumi.Input<int>? usedDataStorageSizeTbs;

  /// The ID of the Oracle Cloud Infrastructure vault.
  final pulumi.Input<String>? vaultId;

  /// Creates a new [AutonomousDatabaseProperties].
  /// [actualUsedDataStorageSizeTb] (Output)
  /// [allocatedStorageSizeTb] (Output)
  /// [apexDetails] (Output)
  /// [arePrimaryAllowlistedIpsUsed] (Output)
  /// [autonomousContainerDatabaseId] (Output)
  /// [availableUpgradeVersions] (Output)
  /// [backupRetentionPeriodDays] The retention period for the Autonomous Database. This field is specified
  /// [characterSet] The character set for the Autonomous Database. The default is AL32UTF8.
  /// [computeCount] The number of compute servers for the Autonomous Database.
  /// [connectionStrings] (Output)
  /// [connectionUrls] (Output)
  /// [cpuCoreCount] The number of CPU cores to be made available to the database.
  /// [customerContacts] The list of customer contacts.
  /// [dataSafeState] (Output)
  /// [dataStorageSizeGb] The size of the data stored in the database, in gigabytes.
  /// [dataStorageSizeTb] The size of the data stored in the database, in terabytes.
  /// [databaseManagementState] (Output)
  /// [dbEdition] The edition of the Autonomous Databases.
  /// [dbVersion] The Oracle Database version for the Autonomous Database.
  /// [dbWorkload] Possible values:
  /// [failedDataRecoveryDuration] (Output)
  /// [isAutoScalingEnabled] This field indicates if auto scaling is enabled for the Autonomous Database
  /// [isLocalDataGuardEnabled] (Output)
  /// [isStorageAutoScalingEnabled] This field indicates if auto scaling is enabled for the Autonomous Database
  /// [licenseType] The license type used for the Autonomous Database.
  /// [lifecycleDetails] (Output)
  /// [localAdgAutoFailoverMaxDataLossLimit] (Output)
  /// [localDisasterRecoveryType] (Output)
  /// [localStandbyDbs] (Output)
  /// [maintenanceBeginTime] (Output)
  /// [maintenanceEndTime] (Output)
  /// [maintenanceScheduleType] The maintenance schedule of the Autonomous Database.
  /// [memoryPerOracleComputeUnitGbs] (Output)
  /// [memoryTableGbs] (Output)
  /// [mtlsConnectionRequired] This field specifies if the Autonomous Database requires mTLS connections.
  /// [nCharacterSet] The national character set for the Autonomous Database. The default is
  /// [nextLongTermBackupTime] (Output)
  /// [ociUrl] (Output)
  /// [ocid] (Output)
  /// [openMode] (Output)
  /// [operationsInsightsState] Possible values:
  /// [peerDbIds] (Output)
  /// [permissionLevel] (Output)
  /// [privateEndpoint] (Output)
  /// [privateEndpointIp] The private endpoint IP address for the Autonomous Database.
  /// [privateEndpointLabel] The private endpoint label for the Autonomous Database.
  /// [refreshableMode] (Output)
  /// [refreshableState] (Output)
  /// [role] (Output)
  /// [scheduledOperationDetails] (Output)
  /// [secretId] The ID of the Oracle Cloud Infrastructure vault secret.
  /// [sqlWebDeveloperUrl] (Output)
  /// [state] (Output)
  /// [supportedCloneRegions] (Output)
  /// [totalAutoBackupStorageSizeGbs] (Output)
  /// [usedDataStorageSizeTbs] (Output)
  /// [vaultId] The ID of the Oracle Cloud Infrastructure vault.
  AutonomousDatabaseProperties({
    this.actualUsedDataStorageSizeTb,
    this.allocatedStorageSizeTb,
    this.apexDetails,
    this.arePrimaryAllowlistedIpsUsed,
    this.autonomousContainerDatabaseId,
    this.availableUpgradeVersions,
    this.backupRetentionPeriodDays,
    this.characterSet,
    this.computeCount,
    this.connectionStrings,
    this.connectionUrls,
    this.cpuCoreCount,
    this.customerContacts,
    this.dataSafeState,
    this.dataStorageSizeGb,
    this.dataStorageSizeTb,
    this.databaseManagementState,
    this.dbEdition,
    this.dbVersion,
    required this.dbWorkload,
    this.failedDataRecoveryDuration,
    this.isAutoScalingEnabled,
    this.isLocalDataGuardEnabled,
    this.isStorageAutoScalingEnabled,
    required this.licenseType,
    this.lifecycleDetails,
    this.localAdgAutoFailoverMaxDataLossLimit,
    this.localDisasterRecoveryType,
    this.localStandbyDbs,
    this.maintenanceBeginTime,
    this.maintenanceEndTime,
    this.maintenanceScheduleType,
    this.memoryPerOracleComputeUnitGbs,
    this.memoryTableGbs,
    this.mtlsConnectionRequired,
    this.nCharacterSet,
    this.nextLongTermBackupTime,
    this.ociUrl,
    this.ocid,
    this.openMode,
    this.operationsInsightsState,
    this.peerDbIds,
    this.permissionLevel,
    this.privateEndpoint,
    this.privateEndpointIp,
    this.privateEndpointLabel,
    this.refreshableMode,
    this.refreshableState,
    this.role,
    this.scheduledOperationDetails,
    this.secretId,
    this.sqlWebDeveloperUrl,
    this.state,
    this.supportedCloneRegions,
    this.totalAutoBackupStorageSizeGbs,
    this.usedDataStorageSizeTbs,
    this.vaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actualUsedDataStorageSizeTb': ?actualUsedDataStorageSizeTb,
      'allocatedStorageSizeTb': ?allocatedStorageSizeTb,
      'apexDetails':
          ?pulumi.Input.mapOptionalInputValue<
            List<AutonomousDatabasePropertiesApexDetail>,
            List<Map<String, dynamic>>
          >(
            apexDetails,
            (value) =>
                pulumi.Input.encodeList<
                  AutonomousDatabasePropertiesApexDetail,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'arePrimaryAllowlistedIpsUsed': ?arePrimaryAllowlistedIpsUsed,
      'autonomousContainerDatabaseId': ?autonomousContainerDatabaseId,
      'availableUpgradeVersions': ?availableUpgradeVersions,
      'backupRetentionPeriodDays': ?backupRetentionPeriodDays,
      'characterSet': ?characterSet,
      'computeCount': ?computeCount,
      'connectionStrings':
          ?pulumi.Input.mapOptionalInputValue<
            List<AutonomousDatabasePropertiesConnectionString>,
            List<Map<String, dynamic>>
          >(
            connectionStrings,
            (value) =>
                pulumi.Input.encodeList<
                  AutonomousDatabasePropertiesConnectionString,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'connectionUrls':
          ?pulumi.Input.mapOptionalInputValue<
            List<AutonomousDatabasePropertiesConnectionUrl>,
            List<Map<String, dynamic>>
          >(
            connectionUrls,
            (value) =>
                pulumi.Input.encodeList<
                  AutonomousDatabasePropertiesConnectionUrl,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'cpuCoreCount': ?cpuCoreCount,
      'customerContacts':
          ?pulumi.Input.mapOptionalInputValue<
            List<AutonomousDatabasePropertiesCustomerContact>,
            List<Map<String, dynamic>>
          >(
            customerContacts,
            (value) =>
                pulumi.Input.encodeList<
                  AutonomousDatabasePropertiesCustomerContact,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'dataSafeState': ?dataSafeState,
      'dataStorageSizeGb': ?dataStorageSizeGb,
      'dataStorageSizeTb': ?dataStorageSizeTb,
      'databaseManagementState': ?databaseManagementState,
      'dbEdition': ?dbEdition,
      'dbVersion': ?dbVersion,
      'dbWorkload': dbWorkload,
      'failedDataRecoveryDuration': ?failedDataRecoveryDuration,
      'isAutoScalingEnabled': ?isAutoScalingEnabled,
      'isLocalDataGuardEnabled': ?isLocalDataGuardEnabled,
      'isStorageAutoScalingEnabled': ?isStorageAutoScalingEnabled,
      'licenseType': licenseType,
      'lifecycleDetails': ?lifecycleDetails,
      'localAdgAutoFailoverMaxDataLossLimit':
          ?localAdgAutoFailoverMaxDataLossLimit,
      'localDisasterRecoveryType': ?localDisasterRecoveryType,
      'localStandbyDbs':
          ?pulumi.Input.mapOptionalInputValue<
            List<AutonomousDatabasePropertiesLocalStandbyDb>,
            List<Map<String, dynamic>>
          >(
            localStandbyDbs,
            (value) =>
                pulumi.Input.encodeList<
                  AutonomousDatabasePropertiesLocalStandbyDb,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'maintenanceBeginTime': ?maintenanceBeginTime,
      'maintenanceEndTime': ?maintenanceEndTime,
      'maintenanceScheduleType': ?maintenanceScheduleType,
      'memoryPerOracleComputeUnitGbs': ?memoryPerOracleComputeUnitGbs,
      'memoryTableGbs': ?memoryTableGbs,
      'mtlsConnectionRequired': ?mtlsConnectionRequired,
      'nCharacterSet': ?nCharacterSet,
      'nextLongTermBackupTime': ?nextLongTermBackupTime,
      'ociUrl': ?ociUrl,
      'ocid': ?ocid,
      'openMode': ?openMode,
      'operationsInsightsState': ?operationsInsightsState,
      'peerDbIds': ?peerDbIds,
      'permissionLevel': ?permissionLevel,
      'privateEndpoint': ?privateEndpoint,
      'privateEndpointIp': ?privateEndpointIp,
      'privateEndpointLabel': ?privateEndpointLabel,
      'refreshableMode': ?refreshableMode,
      'refreshableState': ?refreshableState,
      'role': ?role,
      'scheduledOperationDetails':
          ?pulumi.Input.mapOptionalInputValue<
            List<AutonomousDatabasePropertiesScheduledOperationDetail>,
            List<Map<String, dynamic>>
          >(
            scheduledOperationDetails,
            (value) =>
                pulumi.Input.encodeList<
                  AutonomousDatabasePropertiesScheduledOperationDetail,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'secretId': ?secretId,
      'sqlWebDeveloperUrl': ?sqlWebDeveloperUrl,
      'state': ?state,
      'supportedCloneRegions': ?supportedCloneRegions,
      'totalAutoBackupStorageSizeGbs': ?totalAutoBackupStorageSizeGbs,
      'usedDataStorageSizeTbs': ?usedDataStorageSizeTbs,
      'vaultId': ?vaultId,
    };
  }

  factory AutonomousDatabaseProperties.fromMap(Map<String, dynamic> map) {
    return AutonomousDatabaseProperties(
      actualUsedDataStorageSizeTb: (() {
        final guardedValue = map['actualUsedDataStorageSizeTb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      allocatedStorageSizeTb: (() {
        final guardedValue = map['allocatedStorageSizeTb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      apexDetails: (() {
        final guardedValue = map['apexDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AutonomousDatabasePropertiesApexDetail>(
            guardedValue,
            (value) => AutonomousDatabasePropertiesApexDetail.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      arePrimaryAllowlistedIpsUsed: (() {
        final guardedValue = map['arePrimaryAllowlistedIpsUsed'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      autonomousContainerDatabaseId: (() {
        final guardedValue = map['autonomousContainerDatabaseId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      availableUpgradeVersions: (() {
        final guardedValue = map['availableUpgradeVersions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      backupRetentionPeriodDays: (() {
        final guardedValue = map['backupRetentionPeriodDays'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      characterSet: (() {
        final guardedValue = map['characterSet'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      computeCount: (() {
        final guardedValue = map['computeCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      connectionStrings: (() {
        final guardedValue = map['connectionStrings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AutonomousDatabasePropertiesConnectionString>(
            guardedValue,
            (value) => AutonomousDatabasePropertiesConnectionString.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      connectionUrls: (() {
        final guardedValue = map['connectionUrls'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AutonomousDatabasePropertiesConnectionUrl>(
            guardedValue,
            (value) => AutonomousDatabasePropertiesConnectionUrl.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      cpuCoreCount: (() {
        final guardedValue = map['cpuCoreCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      customerContacts: (() {
        final guardedValue = map['customerContacts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AutonomousDatabasePropertiesCustomerContact>(
            guardedValue,
            (value) => AutonomousDatabasePropertiesCustomerContact.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      dataSafeState: (() {
        final guardedValue = map['dataSafeState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataStorageSizeGb: (() {
        final guardedValue = map['dataStorageSizeGb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      dataStorageSizeTb: (() {
        final guardedValue = map['dataStorageSizeTb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      databaseManagementState: (() {
        final guardedValue = map['databaseManagementState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbEdition: (() {
        final guardedValue = map['dbEdition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbVersion: (() {
        final guardedValue = map['dbVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbWorkload: pulumi.Input.fromValue(map['dbWorkload'] as String),
      failedDataRecoveryDuration: (() {
        final guardedValue = map['failedDataRecoveryDuration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      isAutoScalingEnabled: (() {
        final guardedValue = map['isAutoScalingEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      isLocalDataGuardEnabled: (() {
        final guardedValue = map['isLocalDataGuardEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      isStorageAutoScalingEnabled: (() {
        final guardedValue = map['isStorageAutoScalingEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      licenseType: pulumi.Input.fromValue(map['licenseType'] as String),
      lifecycleDetails: (() {
        final guardedValue = map['lifecycleDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      localAdgAutoFailoverMaxDataLossLimit: (() {
        final guardedValue = map['localAdgAutoFailoverMaxDataLossLimit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      localDisasterRecoveryType: (() {
        final guardedValue = map['localDisasterRecoveryType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      localStandbyDbs: (() {
        final guardedValue = map['localStandbyDbs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AutonomousDatabasePropertiesLocalStandbyDb>(
            guardedValue,
            (value) => AutonomousDatabasePropertiesLocalStandbyDb.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      maintenanceBeginTime: (() {
        final guardedValue = map['maintenanceBeginTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      maintenanceEndTime: (() {
        final guardedValue = map['maintenanceEndTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      maintenanceScheduleType: (() {
        final guardedValue = map['maintenanceScheduleType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      memoryPerOracleComputeUnitGbs: (() {
        final guardedValue = map['memoryPerOracleComputeUnitGbs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      memoryTableGbs: (() {
        final guardedValue = map['memoryTableGbs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      mtlsConnectionRequired: (() {
        final guardedValue = map['mtlsConnectionRequired'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      nCharacterSet: (() {
        final guardedValue = map['nCharacterSet'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nextLongTermBackupTime: (() {
        final guardedValue = map['nextLongTermBackupTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ociUrl: (() {
        final guardedValue = map['ociUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ocid: (() {
        final guardedValue = map['ocid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      openMode: (() {
        final guardedValue = map['openMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      operationsInsightsState: (() {
        final guardedValue = map['operationsInsightsState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      peerDbIds: (() {
        final guardedValue = map['peerDbIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      permissionLevel: (() {
        final guardedValue = map['permissionLevel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateEndpoint: (() {
        final guardedValue = map['privateEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateEndpointIp: (() {
        final guardedValue = map['privateEndpointIp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateEndpointLabel: (() {
        final guardedValue = map['privateEndpointLabel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      refreshableMode: (() {
        final guardedValue = map['refreshableMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      refreshableState: (() {
        final guardedValue = map['refreshableState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      role: (() {
        final guardedValue = map['role'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scheduledOperationDetails: (() {
        final guardedValue = map['scheduledOperationDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            AutonomousDatabasePropertiesScheduledOperationDetail
          >(
            guardedValue,
            (value) =>
                AutonomousDatabasePropertiesScheduledOperationDetail.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      secretId: (() {
        final guardedValue = map['secretId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sqlWebDeveloperUrl: (() {
        final guardedValue = map['sqlWebDeveloperUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      supportedCloneRegions: (() {
        final guardedValue = map['supportedCloneRegions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      totalAutoBackupStorageSizeGbs: (() {
        final guardedValue = map['totalAutoBackupStorageSizeGbs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      usedDataStorageSizeTbs: (() {
        final guardedValue = map['usedDataStorageSizeTbs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      vaultId: (() {
        final guardedValue = map['vaultId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
