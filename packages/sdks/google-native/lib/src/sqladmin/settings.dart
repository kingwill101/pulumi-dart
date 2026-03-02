// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'advanced_machine_features.dart';
import 'backup_configuration.dart';
import 'data_cache_config.dart';
import 'database_flags.dart';
import 'deny_maintenance_period.dart';
import 'insights_config.dart';
import 'ip_configuration.dart';
import 'location_preference.dart';
import 'maintenance_window.dart';
import 'password_validation_policy.dart';
import 'settings_activation_policy.dart';
import 'settings_availability_type.dart';
import 'settings_connector_enforcement.dart';
import 'settings_data_disk_type.dart';
import 'settings_edition.dart';
import 'settings_pricing_plan.dart';
import 'settings_replication_type.dart';
import 'sql_active_directory_config.dart';
import 'sql_server_audit_config.dart';

/// Database instance settings.
class Settings {
  /// The activation policy specifies when the instance is activated; it is applicable only when the instance state is RUNNABLE. Valid values: * `ALWAYS`: The instance is on, and remains so even in the absence of connection requests. * `NEVER`: The instance is off; it is not activated, even if a connection request arrives.
  final pulumi.Input<SettingsActivationPolicy>? activationPolicy;
  /// Active Directory configuration, relevant only for Cloud SQL for SQL Server.
  final pulumi.Input<SqlActiveDirectoryConfig>? activeDirectoryConfig;
  /// Specifies advance machine configuration for the instance relevant only for SQL Server.
  final pulumi.Input<AdvancedMachineFeatures>? advancedMachineFeatures;
  /// The App Engine app IDs that can access this instance. (Deprecated) Applied to First Generation instances only.
  final pulumi.Input<List<String>>? authorizedGaeApplications;
  /// Availability type. Potential values: * `ZONAL`: The instance serves data from only one zone. Outages in that zone affect data accessibility. * `REGIONAL`: The instance can serve data from more than one zone in a region (it is highly available)./ For more information, see [Overview of the High Availability Configuration](https://cloud.google.com/sql/docs/mysql/high-availability).
  final pulumi.Input<SettingsAvailabilityType>? availabilityType;
  /// The daily backup configuration for the instance.
  final pulumi.Input<BackupConfiguration>? backupConfiguration;
  /// The name of server Instance collation.
  final pulumi.Input<String>? collation;
  /// Specifies if connections must use Cloud SQL connectors. Option values include the following: `NOT_REQUIRED` (Cloud SQL instances can be connected without Cloud SQL Connectors) and `REQUIRED` (Only allow connections that use Cloud SQL Connectors). Note that using REQUIRED disables all existing authorized networks. If this field is not specified when creating a new instance, NOT_REQUIRED is used. If this field is not specified when patching or updating an existing instance, it is left unchanged in the instance.
  final pulumi.Input<SettingsConnectorEnforcement>? connectorEnforcement;
  /// Configuration specific to read replica instances. Indicates whether database flags for crash-safe replication are enabled. This property was only applicable to First Generation instances.
  final pulumi.Input<bool>? crashSafeReplicationEnabled;
  /// Configuration for data cache.
  final pulumi.Input<DataCacheConfig>? dataCacheConfig;
  /// The size of data disk, in GB. The data disk size minimum is 10GB.
  final pulumi.Input<String>? dataDiskSizeGb;
  /// The type of data disk: `PD_SSD` (default) or `PD_HDD`. Not used for First Generation instances.
  final pulumi.Input<SettingsDataDiskType>? dataDiskType;
  /// The database flags passed to the instance at startup.
  final pulumi.Input<List<DatabaseFlags>>? databaseFlags;
  /// Configuration specific to read replica instances. Indicates whether replication is enabled or not. WARNING: Changing this restarts the instance.
  final pulumi.Input<bool>? databaseReplicationEnabled;
  /// Configuration to protect against accidental instance deletion.
  final pulumi.Input<bool>? deletionProtectionEnabled;
  /// Deny maintenance periods
  final pulumi.Input<List<DenyMaintenancePeriod>>? denyMaintenancePeriods;
  /// Optional. The edition of the instance.
  final pulumi.Input<SettingsEdition>? edition;
  /// Insights configuration, for now relevant only for Postgres.
  final pulumi.Input<InsightsConfig>? insightsConfig;
  /// The settings for IP Management. This allows to enable or disable the instance IP and manage which external networks can connect to the instance. The IPv4 address cannot be disabled for Second Generation instances.
  final pulumi.Input<IpConfiguration>? ipConfiguration;
  /// This is always `sql#settings`.
  final pulumi.Input<String>? kind;
  /// The location preference settings. This allows the instance to be located as near as possible to either an App Engine app or Compute Engine zone for better performance. App Engine co-location was only applicable to First Generation instances.
  final pulumi.Input<LocationPreference>? locationPreference;
  /// The maintenance window for this instance. This specifies when the instance can be restarted for maintenance purposes.
  final pulumi.Input<MaintenanceWindow>? maintenanceWindow;
  /// The local user password validation policy of the instance.
  final pulumi.Input<PasswordValidationPolicy>? passwordValidationPolicy;
  /// The pricing plan for this instance. This can be either `PER_USE` or `PACKAGE`. Only `PER_USE` is supported for Second Generation instances.
  final pulumi.Input<SettingsPricingPlan>? pricingPlan;
  /// The type of replication this instance uses. This can be either `ASYNCHRONOUS` or `SYNCHRONOUS`. (Deprecated) This property was only applicable to First Generation instances.
  final pulumi.Input<SettingsReplicationType>? replicationType;
  /// The version of instance settings. This is a required field for update method to make sure concurrent updates are handled properly. During update, use the most recent settingsVersion value for this instance and do not try to update this value.
  final pulumi.Input<String>? settingsVersion;
  /// SQL Server specific audit configuration.
  final pulumi.Input<SqlServerAuditConfig>? sqlServerAuditConfig;
  /// Configuration to increase storage size automatically. The default value is true.
  final pulumi.Input<bool>? storageAutoResize;
  /// The maximum size to which storage capacity can be automatically increased. The default value is 0, which specifies that there is no limit.
  final pulumi.Input<String>? storageAutoResizeLimit;
  /// The tier (or machine type) for this instance, for example `db-custom-1-3840`. WARNING: Changing this restarts the instance.
  final pulumi.Input<String>? tier;
  /// Server timezone, relevant only for Cloud SQL for SQL Server.
  final pulumi.Input<String>? timeZone;
  /// User-provided labels, represented as a dictionary where each label is a single key value pair.
  final pulumi.Input<Map<String, String>>? userLabels;

  /// Creates a new [Settings].
  /// [activationPolicy] The activation policy specifies when the instance is activated; it is applicable only when the instance state is RUNNABLE. Valid values: * `ALWAYS`: The instance is on, and remains so even in the absence of connection requests. * `NEVER`: The instance is off; it is not activated, even if a connection request arrives.
  /// [activeDirectoryConfig] Active Directory configuration, relevant only for Cloud SQL for SQL Server.
  /// [advancedMachineFeatures] Specifies advance machine configuration for the instance relevant only for SQL Server.
  /// [authorizedGaeApplications] The App Engine app IDs that can access this instance. (Deprecated) Applied to First Generation instances only.
  /// [availabilityType] Availability type. Potential values: * `ZONAL`: The instance serves data from only one zone. Outages in that zone affect data accessibility. * `REGIONAL`: The instance can serve data from more than one zone in a region (it is highly available)./ For more information, see [Overview of the High Availability Configuration](https://cloud.google.com/sql/docs/mysql/high-availability).
  /// [backupConfiguration] The daily backup configuration for the instance.
  /// [collation] The name of server Instance collation.
  /// [connectorEnforcement] Specifies if connections must use Cloud SQL connectors. Option values include the following: `NOT_REQUIRED` (Cloud SQL instances can be connected without Cloud SQL Connectors) and `REQUIRED` (Only allow connections that use Cloud SQL Connectors). Note that using REQUIRED disables all existing authorized networks. If this field is not specified when creating a new instance, NOT_REQUIRED is used. If this field is not specified when patching or updating an existing instance, it is left unchanged in the instance.
  /// [crashSafeReplicationEnabled] Configuration specific to read replica instances. Indicates whether database flags for crash-safe replication are enabled. This property was only applicable to First Generation instances.
  /// [dataCacheConfig] Configuration for data cache.
  /// [dataDiskSizeGb] The size of data disk, in GB. The data disk size minimum is 10GB.
  /// [dataDiskType] The type of data disk: `PD_SSD` (default) or `PD_HDD`. Not used for First Generation instances.
  /// [databaseFlags] The database flags passed to the instance at startup.
  /// [databaseReplicationEnabled] Configuration specific to read replica instances. Indicates whether replication is enabled or not. WARNING: Changing this restarts the instance.
  /// [deletionProtectionEnabled] Configuration to protect against accidental instance deletion.
  /// [denyMaintenancePeriods] Deny maintenance periods
  /// [edition] Optional. The edition of the instance.
  /// [insightsConfig] Insights configuration, for now relevant only for Postgres.
  /// [ipConfiguration] The settings for IP Management. This allows to enable or disable the instance IP and manage which external networks can connect to the instance. The IPv4 address cannot be disabled for Second Generation instances.
  /// [kind] This is always `sql#settings`.
  /// [locationPreference] The location preference settings. This allows the instance to be located as near as possible to either an App Engine app or Compute Engine zone for better performance. App Engine co-location was only applicable to First Generation instances.
  /// [maintenanceWindow] The maintenance window for this instance. This specifies when the instance can be restarted for maintenance purposes.
  /// [passwordValidationPolicy] The local user password validation policy of the instance.
  /// [pricingPlan] The pricing plan for this instance. This can be either `PER_USE` or `PACKAGE`. Only `PER_USE` is supported for Second Generation instances.
  /// [replicationType] The type of replication this instance uses. This can be either `ASYNCHRONOUS` or `SYNCHRONOUS`. (Deprecated) This property was only applicable to First Generation instances.
  /// [settingsVersion] The version of instance settings. This is a required field for update method to make sure concurrent updates are handled properly. During update, use the most recent settingsVersion value for this instance and do not try to update this value.
  /// [sqlServerAuditConfig] SQL Server specific audit configuration.
  /// [storageAutoResize] Configuration to increase storage size automatically. The default value is true.
  /// [storageAutoResizeLimit] The maximum size to which storage capacity can be automatically increased. The default value is 0, which specifies that there is no limit.
  /// [tier] The tier (or machine type) for this instance, for example `db-custom-1-3840`. WARNING: Changing this restarts the instance.
  /// [timeZone] Server timezone, relevant only for Cloud SQL for SQL Server.
  /// [userLabels] User-provided labels, represented as a dictionary where each label is a single key value pair.
  Settings({
    this.activationPolicy,
    this.activeDirectoryConfig,
    this.advancedMachineFeatures,
    this.authorizedGaeApplications,
    this.availabilityType,
    this.backupConfiguration,
    this.collation,
    this.connectorEnforcement,
    this.crashSafeReplicationEnabled,
    this.dataCacheConfig,
    this.dataDiskSizeGb,
    this.dataDiskType,
    this.databaseFlags,
    this.databaseReplicationEnabled,
    this.deletionProtectionEnabled,
    this.denyMaintenancePeriods,
    this.edition,
    this.insightsConfig,
    this.ipConfiguration,
    this.kind,
    this.locationPreference,
    this.maintenanceWindow,
    this.passwordValidationPolicy,
    this.pricingPlan,
    this.replicationType,
    this.settingsVersion,
    this.sqlServerAuditConfig,
    this.storageAutoResize,
    this.storageAutoResizeLimit,
    this.tier,
    this.timeZone,
    this.userLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationPolicy': ?pulumi.Input.mapOptionalInputValue<SettingsActivationPolicy, String>(activationPolicy, (value) => value.value),
      'activeDirectoryConfig': ?pulumi.Input.mapOptionalInputValue<SqlActiveDirectoryConfig, Map<String, dynamic>>(activeDirectoryConfig, (value) => value.toMap()),
      'advancedMachineFeatures': ?pulumi.Input.mapOptionalInputValue<AdvancedMachineFeatures, Map<String, dynamic>>(advancedMachineFeatures, (value) => value.toMap()),
      'authorizedGaeApplications': ?authorizedGaeApplications,
      'availabilityType': ?pulumi.Input.mapOptionalInputValue<SettingsAvailabilityType, String>(availabilityType, (value) => value.value),
      'backupConfiguration': ?pulumi.Input.mapOptionalInputValue<BackupConfiguration, Map<String, dynamic>>(backupConfiguration, (value) => value.toMap()),
      'collation': ?collation,
      'connectorEnforcement': ?pulumi.Input.mapOptionalInputValue<SettingsConnectorEnforcement, String>(connectorEnforcement, (value) => value.value),
      'crashSafeReplicationEnabled': ?crashSafeReplicationEnabled,
      'dataCacheConfig': ?pulumi.Input.mapOptionalInputValue<DataCacheConfig, Map<String, dynamic>>(dataCacheConfig, (value) => value.toMap()),
      'dataDiskSizeGb': ?dataDiskSizeGb,
      'dataDiskType': ?pulumi.Input.mapOptionalInputValue<SettingsDataDiskType, String>(dataDiskType, (value) => value.value),
      'databaseFlags': ?pulumi.Input.mapOptionalInputValue<List<DatabaseFlags>, List<Map<String, dynamic>>>(databaseFlags, (value) => pulumi.Input.encodeList<DatabaseFlags, Map<String, dynamic>>(value, (value) => value.toMap())),
      'databaseReplicationEnabled': ?databaseReplicationEnabled,
      'deletionProtectionEnabled': ?deletionProtectionEnabled,
      'denyMaintenancePeriods': ?pulumi.Input.mapOptionalInputValue<List<DenyMaintenancePeriod>, List<Map<String, dynamic>>>(denyMaintenancePeriods, (value) => pulumi.Input.encodeList<DenyMaintenancePeriod, Map<String, dynamic>>(value, (value) => value.toMap())),
      'edition': ?pulumi.Input.mapOptionalInputValue<SettingsEdition, String>(edition, (value) => value.value),
      'insightsConfig': ?pulumi.Input.mapOptionalInputValue<InsightsConfig, Map<String, dynamic>>(insightsConfig, (value) => value.toMap()),
      'ipConfiguration': ?pulumi.Input.mapOptionalInputValue<IpConfiguration, Map<String, dynamic>>(ipConfiguration, (value) => value.toMap()),
      'kind': ?kind,
      'locationPreference': ?pulumi.Input.mapOptionalInputValue<LocationPreference, Map<String, dynamic>>(locationPreference, (value) => value.toMap()),
      'maintenanceWindow': ?pulumi.Input.mapOptionalInputValue<MaintenanceWindow, Map<String, dynamic>>(maintenanceWindow, (value) => value.toMap()),
      'passwordValidationPolicy': ?pulumi.Input.mapOptionalInputValue<PasswordValidationPolicy, Map<String, dynamic>>(passwordValidationPolicy, (value) => value.toMap()),
      'pricingPlan': ?pulumi.Input.mapOptionalInputValue<SettingsPricingPlan, String>(pricingPlan, (value) => value.value),
      'replicationType': ?pulumi.Input.mapOptionalInputValue<SettingsReplicationType, String>(replicationType, (value) => value.value),
      'settingsVersion': ?settingsVersion,
      'sqlServerAuditConfig': ?pulumi.Input.mapOptionalInputValue<SqlServerAuditConfig, Map<String, dynamic>>(sqlServerAuditConfig, (value) => value.toMap()),
      'storageAutoResize': ?storageAutoResize,
      'storageAutoResizeLimit': ?storageAutoResizeLimit,
      'tier': ?tier,
      'timeZone': ?timeZone,
      'userLabels': ?userLabels,
    };
  }

  factory Settings.fromMap(Map<String, dynamic> map) {
    return Settings(
      activationPolicy: map['activationPolicy'] == null ? null : (SettingsActivationPolicy.fromValue(map['activationPolicy']! as String)).input(),
      activeDirectoryConfig: map['activeDirectoryConfig'] == null ? null : (SqlActiveDirectoryConfig.fromMap((map['activeDirectoryConfig']! as Map).cast<String, dynamic>())).input(),
      advancedMachineFeatures: map['advancedMachineFeatures'] == null ? null : (AdvancedMachineFeatures.fromMap((map['advancedMachineFeatures']! as Map).cast<String, dynamic>())).input(),
      authorizedGaeApplications: map['authorizedGaeApplications'] == null ? null : ((map['authorizedGaeApplications']! as List).cast<String>()).input(),
      availabilityType: map['availabilityType'] == null ? null : (SettingsAvailabilityType.fromValue(map['availabilityType']! as String)).input(),
      backupConfiguration: map['backupConfiguration'] == null ? null : (BackupConfiguration.fromMap((map['backupConfiguration']! as Map).cast<String, dynamic>())).input(),
      collation: map['collation'] == null ? null : (map['collation']! as String).input(),
      connectorEnforcement: map['connectorEnforcement'] == null ? null : (SettingsConnectorEnforcement.fromValue(map['connectorEnforcement']! as String)).input(),
      crashSafeReplicationEnabled: map['crashSafeReplicationEnabled'] == null ? null : (map['crashSafeReplicationEnabled']! as bool).input(),
      dataCacheConfig: map['dataCacheConfig'] == null ? null : (DataCacheConfig.fromMap((map['dataCacheConfig']! as Map).cast<String, dynamic>())).input(),
      dataDiskSizeGb: map['dataDiskSizeGb'] == null ? null : (map['dataDiskSizeGb']! as String).input(),
      dataDiskType: map['dataDiskType'] == null ? null : (SettingsDataDiskType.fromValue(map['dataDiskType']! as String)).input(),
      databaseFlags: map['databaseFlags'] == null ? null : (pulumi.Input.decodeList<DatabaseFlags>(map['databaseFlags']!, (value) => DatabaseFlags.fromMap((value as Map).cast<String, dynamic>()))).input(),
      databaseReplicationEnabled: map['databaseReplicationEnabled'] == null ? null : (map['databaseReplicationEnabled']! as bool).input(),
      deletionProtectionEnabled: map['deletionProtectionEnabled'] == null ? null : (map['deletionProtectionEnabled']! as bool).input(),
      denyMaintenancePeriods: map['denyMaintenancePeriods'] == null ? null : (pulumi.Input.decodeList<DenyMaintenancePeriod>(map['denyMaintenancePeriods']!, (value) => DenyMaintenancePeriod.fromMap((value as Map).cast<String, dynamic>()))).input(),
      edition: map['edition'] == null ? null : (SettingsEdition.fromValue(map['edition']! as String)).input(),
      insightsConfig: map['insightsConfig'] == null ? null : (InsightsConfig.fromMap((map['insightsConfig']! as Map).cast<String, dynamic>())).input(),
      ipConfiguration: map['ipConfiguration'] == null ? null : (IpConfiguration.fromMap((map['ipConfiguration']! as Map).cast<String, dynamic>())).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      locationPreference: map['locationPreference'] == null ? null : (LocationPreference.fromMap((map['locationPreference']! as Map).cast<String, dynamic>())).input(),
      maintenanceWindow: map['maintenanceWindow'] == null ? null : (MaintenanceWindow.fromMap((map['maintenanceWindow']! as Map).cast<String, dynamic>())).input(),
      passwordValidationPolicy: map['passwordValidationPolicy'] == null ? null : (PasswordValidationPolicy.fromMap((map['passwordValidationPolicy']! as Map).cast<String, dynamic>())).input(),
      pricingPlan: map['pricingPlan'] == null ? null : (SettingsPricingPlan.fromValue(map['pricingPlan']! as String)).input(),
      replicationType: map['replicationType'] == null ? null : (SettingsReplicationType.fromValue(map['replicationType']! as String)).input(),
      settingsVersion: map['settingsVersion'] == null ? null : (map['settingsVersion']! as String).input(),
      sqlServerAuditConfig: map['sqlServerAuditConfig'] == null ? null : (SqlServerAuditConfig.fromMap((map['sqlServerAuditConfig']! as Map).cast<String, dynamic>())).input(),
      storageAutoResize: map['storageAutoResize'] == null ? null : (map['storageAutoResize']! as bool).input(),
      storageAutoResizeLimit: map['storageAutoResizeLimit'] == null ? null : (map['storageAutoResizeLimit']! as String).input(),
      tier: map['tier'] == null ? null : (map['tier']! as String).input(),
      timeZone: map['timeZone'] == null ? null : (map['timeZone']! as String).input(),
      userLabels: map['userLabels'] == null ? null : ((map['userLabels']! as Map).cast<String, String>()).input(),
    );
  }
}

