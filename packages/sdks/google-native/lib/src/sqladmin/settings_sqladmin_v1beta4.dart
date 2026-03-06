// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'advanced_machine_features_sqladmin_v1beta4.dart';
import 'backup_configuration_sqladmin_v1beta4.dart';
import 'data_cache_config_sqladmin_v1beta4.dart';
import 'database_flags_sqladmin_v1beta4.dart';
import 'deny_maintenance_period_sqladmin_v1beta4.dart';
import 'insights_config_sqladmin_v1beta4.dart';
import 'ip_configuration_sqladmin_v1beta4.dart';
import 'location_preference_sqladmin_v1beta4.dart';
import 'maintenance_window_sqladmin_v1beta4.dart';
import 'password_validation_policy_sqladmin_v1beta4.dart';
import 'settings_activation_policy_sqladmin_v1beta4.dart';
import 'settings_availability_type_sqladmin_v1beta4.dart';
import 'settings_connector_enforcement_sqladmin_v1beta4.dart';
import 'settings_data_disk_type_sqladmin_v1beta4.dart';
import 'settings_edition_sqladmin_v1beta4.dart';
import 'settings_pricing_plan_sqladmin_v1beta4.dart';
import 'settings_replication_type_sqladmin_v1beta4.dart';
import 'sql_active_directory_config_sqladmin_v1beta4.dart';
import 'sql_server_audit_config_sqladmin_v1beta4.dart';

/// Database instance settings.
class SettingsSqladminV1beta4 {
  /// The activation policy specifies when the instance is activated; it is applicable only when the instance state is RUNNABLE. Valid values: * `ALWAYS`: The instance is on, and remains so even in the absence of connection requests. * `NEVER`: The instance is off; it is not activated, even if a connection request arrives.
  final pulumi.Input<SettingsActivationPolicySqladminV1beta4>? activationPolicy;
  /// Active Directory configuration, relevant only for Cloud SQL for SQL Server.
  final pulumi.Input<SqlActiveDirectoryConfigSqladminV1beta4>? activeDirectoryConfig;
  /// Specifies advance machine configuration for the instance relevant only for SQL Server.
  final pulumi.Input<AdvancedMachineFeaturesSqladminV1beta4>? advancedMachineFeatures;
  /// The App Engine app IDs that can access this instance. (Deprecated) Applied to First Generation instances only.
  final pulumi.Input<List<String>>? authorizedGaeApplications;
  /// Availability type. Potential values: * `ZONAL`: The instance serves data from only one zone. Outages in that zone affect data accessibility. * `REGIONAL`: The instance can serve data from more than one zone in a region (it is highly available)./ For more information, see [Overview of the High Availability Configuration](https://cloud.google.com/sql/docs/mysql/high-availability).
  final pulumi.Input<SettingsAvailabilityTypeSqladminV1beta4>? availabilityType;
  /// The daily backup configuration for the instance.
  final pulumi.Input<BackupConfigurationSqladminV1beta4>? backupConfiguration;
  /// The name of server Instance collation.
  final pulumi.Input<String>? collation;
  /// Specifies if connections must use Cloud SQL connectors. Option values include the following: `NOT_REQUIRED` (Cloud SQL instances can be connected without Cloud SQL Connectors) and `REQUIRED` (Only allow connections that use Cloud SQL Connectors) Note that using REQUIRED disables all existing authorized networks. If this field is not specified when creating a new instance, NOT_REQUIRED is used. If this field is not specified when patching or updating an existing instance, it is left unchanged in the instance.
  final pulumi.Input<SettingsConnectorEnforcementSqladminV1beta4>? connectorEnforcement;
  /// Configuration specific to read replica instances. Indicates whether database flags for crash-safe replication are enabled. This property was only applicable to First Generation instances.
  final pulumi.Input<bool>? crashSafeReplicationEnabled;
  /// Configuration for data cache.
  final pulumi.Input<DataCacheConfigSqladminV1beta4>? dataCacheConfig;
  /// The size of data disk, in GB. The data disk size minimum is 10GB.
  final pulumi.Input<String>? dataDiskSizeGb;
  /// The type of data disk: `PD_SSD` (default) or `PD_HDD`. Not used for First Generation instances.
  final pulumi.Input<SettingsDataDiskTypeSqladminV1beta4>? dataDiskType;
  /// The database flags passed to the instance at startup.
  final pulumi.Input<List<DatabaseFlagsSqladminV1beta4>>? databaseFlags;
  /// Configuration specific to read replica instances. Indicates whether replication is enabled or not. WARNING: Changing this restarts the instance.
  final pulumi.Input<bool>? databaseReplicationEnabled;
  /// Configuration to protect against accidental instance deletion.
  final pulumi.Input<bool>? deletionProtectionEnabled;
  /// Deny maintenance periods
  final pulumi.Input<List<DenyMaintenancePeriodSqladminV1beta4>>? denyMaintenancePeriods;
  /// Optional. The edition of the instance.
  final pulumi.Input<SettingsEditionSqladminV1beta4>? edition;
  /// Insights configuration, for now relevant only for Postgres.
  final pulumi.Input<InsightsConfigSqladminV1beta4>? insightsConfig;
  /// The settings for IP Management. This allows to enable or disable the instance IP and manage which external networks can connect to the instance. The IPv4 address cannot be disabled for Second Generation instances.
  final pulumi.Input<IpConfigurationSqladminV1beta4>? ipConfiguration;
  /// This is always `sql#settings`.
  final pulumi.Input<String>? kind;
  /// The location preference settings. This allows the instance to be located as near as possible to either an App Engine app or Compute Engine zone for better performance. App Engine co-location was only applicable to First Generation instances.
  final pulumi.Input<LocationPreferenceSqladminV1beta4>? locationPreference;
  /// The maintenance window for this instance. This specifies when the instance can be restarted for maintenance purposes.
  final pulumi.Input<MaintenanceWindowSqladminV1beta4>? maintenanceWindow;
  /// The local user password validation policy of the instance.
  final pulumi.Input<PasswordValidationPolicySqladminV1beta4>? passwordValidationPolicy;
  /// The pricing plan for this instance. This can be either `PER_USE` or `PACKAGE`. Only `PER_USE` is supported for Second Generation instances.
  final pulumi.Input<SettingsPricingPlanSqladminV1beta4>? pricingPlan;
  /// The type of replication this instance uses. This can be either `ASYNCHRONOUS` or `SYNCHRONOUS`. (Deprecated) This property was only applicable to First Generation instances.
  final pulumi.Input<SettingsReplicationTypeSqladminV1beta4>? replicationType;
  /// The version of instance settings. This is a required field for update method to make sure concurrent updates are handled properly. During update, use the most recent settingsVersion value for this instance and do not try to update this value.
  final pulumi.Input<String>? settingsVersion;
  /// SQL Server specific audit configuration.
  final pulumi.Input<SqlServerAuditConfigSqladminV1beta4>? sqlServerAuditConfig;
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

  /// Creates a new [SettingsSqladminV1beta4].
  /// [activationPolicy] The activation policy specifies when the instance is activated; it is applicable only when the instance state is RUNNABLE. Valid values: * `ALWAYS`: The instance is on, and remains so even in the absence of connection requests. * `NEVER`: The instance is off; it is not activated, even if a connection request arrives.
  /// [activeDirectoryConfig] Active Directory configuration, relevant only for Cloud SQL for SQL Server.
  /// [advancedMachineFeatures] Specifies advance machine configuration for the instance relevant only for SQL Server.
  /// [authorizedGaeApplications] The App Engine app IDs that can access this instance. (Deprecated) Applied to First Generation instances only.
  /// [availabilityType] Availability type. Potential values: * `ZONAL`: The instance serves data from only one zone. Outages in that zone affect data accessibility. * `REGIONAL`: The instance can serve data from more than one zone in a region (it is highly available)./ For more information, see [Overview of the High Availability Configuration](https://cloud.google.com/sql/docs/mysql/high-availability).
  /// [backupConfiguration] The daily backup configuration for the instance.
  /// [collation] The name of server Instance collation.
  /// [connectorEnforcement] Specifies if connections must use Cloud SQL connectors. Option values include the following: `NOT_REQUIRED` (Cloud SQL instances can be connected without Cloud SQL Connectors) and `REQUIRED` (Only allow connections that use Cloud SQL Connectors) Note that using REQUIRED disables all existing authorized networks. If this field is not specified when creating a new instance, NOT_REQUIRED is used. If this field is not specified when patching or updating an existing instance, it is left unchanged in the instance.
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
  const SettingsSqladminV1beta4({
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
      'activationPolicy': ?pulumi.Input.mapOptionalInputValue<SettingsActivationPolicySqladminV1beta4, String>(activationPolicy, (value) => value.wireValue),
      'activeDirectoryConfig': ?pulumi.Input.mapOptionalInputValue<SqlActiveDirectoryConfigSqladminV1beta4, Map<String, dynamic>>(activeDirectoryConfig, (value) => value.toMap()),
      'advancedMachineFeatures': ?pulumi.Input.mapOptionalInputValue<AdvancedMachineFeaturesSqladminV1beta4, Map<String, dynamic>>(advancedMachineFeatures, (value) => value.toMap()),
      'authorizedGaeApplications': ?authorizedGaeApplications,
      'availabilityType': ?pulumi.Input.mapOptionalInputValue<SettingsAvailabilityTypeSqladminV1beta4, String>(availabilityType, (value) => value.wireValue),
      'backupConfiguration': ?pulumi.Input.mapOptionalInputValue<BackupConfigurationSqladminV1beta4, Map<String, dynamic>>(backupConfiguration, (value) => value.toMap()),
      'collation': ?collation,
      'connectorEnforcement': ?pulumi.Input.mapOptionalInputValue<SettingsConnectorEnforcementSqladminV1beta4, String>(connectorEnforcement, (value) => value.wireValue),
      'crashSafeReplicationEnabled': ?crashSafeReplicationEnabled,
      'dataCacheConfig': ?pulumi.Input.mapOptionalInputValue<DataCacheConfigSqladminV1beta4, Map<String, dynamic>>(dataCacheConfig, (value) => value.toMap()),
      'dataDiskSizeGb': ?dataDiskSizeGb,
      'dataDiskType': ?pulumi.Input.mapOptionalInputValue<SettingsDataDiskTypeSqladminV1beta4, String>(dataDiskType, (value) => value.wireValue),
      'databaseFlags': ?pulumi.Input.mapOptionalInputValue<List<DatabaseFlagsSqladminV1beta4>, List<Map<String, dynamic>>>(databaseFlags, (value) => pulumi.Input.encodeList<DatabaseFlagsSqladminV1beta4, Map<String, dynamic>>(value, (value) => value.toMap())),
      'databaseReplicationEnabled': ?databaseReplicationEnabled,
      'deletionProtectionEnabled': ?deletionProtectionEnabled,
      'denyMaintenancePeriods': ?pulumi.Input.mapOptionalInputValue<List<DenyMaintenancePeriodSqladminV1beta4>, List<Map<String, dynamic>>>(denyMaintenancePeriods, (value) => pulumi.Input.encodeList<DenyMaintenancePeriodSqladminV1beta4, Map<String, dynamic>>(value, (value) => value.toMap())),
      'edition': ?pulumi.Input.mapOptionalInputValue<SettingsEditionSqladminV1beta4, String>(edition, (value) => value.wireValue),
      'insightsConfig': ?pulumi.Input.mapOptionalInputValue<InsightsConfigSqladminV1beta4, Map<String, dynamic>>(insightsConfig, (value) => value.toMap()),
      'ipConfiguration': ?pulumi.Input.mapOptionalInputValue<IpConfigurationSqladminV1beta4, Map<String, dynamic>>(ipConfiguration, (value) => value.toMap()),
      'kind': ?kind,
      'locationPreference': ?pulumi.Input.mapOptionalInputValue<LocationPreferenceSqladminV1beta4, Map<String, dynamic>>(locationPreference, (value) => value.toMap()),
      'maintenanceWindow': ?pulumi.Input.mapOptionalInputValue<MaintenanceWindowSqladminV1beta4, Map<String, dynamic>>(maintenanceWindow, (value) => value.toMap()),
      'passwordValidationPolicy': ?pulumi.Input.mapOptionalInputValue<PasswordValidationPolicySqladminV1beta4, Map<String, dynamic>>(passwordValidationPolicy, (value) => value.toMap()),
      'pricingPlan': ?pulumi.Input.mapOptionalInputValue<SettingsPricingPlanSqladminV1beta4, String>(pricingPlan, (value) => value.wireValue),
      'replicationType': ?pulumi.Input.mapOptionalInputValue<SettingsReplicationTypeSqladminV1beta4, String>(replicationType, (value) => value.wireValue),
      'settingsVersion': ?settingsVersion,
      'sqlServerAuditConfig': ?pulumi.Input.mapOptionalInputValue<SqlServerAuditConfigSqladminV1beta4, Map<String, dynamic>>(sqlServerAuditConfig, (value) => value.toMap()),
      'storageAutoResize': ?storageAutoResize,
      'storageAutoResizeLimit': ?storageAutoResizeLimit,
      'tier': ?tier,
      'timeZone': ?timeZone,
      'userLabels': ?userLabels,
    };
  }

  factory SettingsSqladminV1beta4.fromMap(Map<String, dynamic> map) {
    return SettingsSqladminV1beta4(
      activationPolicy: (() { final guardedValue = map['activationPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SettingsActivationPolicySqladminV1beta4.fromValue(guardedValue as String)); })(),
      activeDirectoryConfig: (() { final guardedValue = map['activeDirectoryConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SqlActiveDirectoryConfigSqladminV1beta4.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      advancedMachineFeatures: (() { final guardedValue = map['advancedMachineFeatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AdvancedMachineFeaturesSqladminV1beta4.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      authorizedGaeApplications: (() { final guardedValue = map['authorizedGaeApplications']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      availabilityType: (() { final guardedValue = map['availabilityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SettingsAvailabilityTypeSqladminV1beta4.fromValue(guardedValue as String)); })(),
      backupConfiguration: (() { final guardedValue = map['backupConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackupConfigurationSqladminV1beta4.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      collation: (() { final guardedValue = map['collation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectorEnforcement: (() { final guardedValue = map['connectorEnforcement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SettingsConnectorEnforcementSqladminV1beta4.fromValue(guardedValue as String)); })(),
      crashSafeReplicationEnabled: (() { final guardedValue = map['crashSafeReplicationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dataCacheConfig: (() { final guardedValue = map['dataCacheConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataCacheConfigSqladminV1beta4.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataDiskSizeGb: (() { final guardedValue = map['dataDiskSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataDiskType: (() { final guardedValue = map['dataDiskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SettingsDataDiskTypeSqladminV1beta4.fromValue(guardedValue as String)); })(),
      databaseFlags: (() { final guardedValue = map['databaseFlags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DatabaseFlagsSqladminV1beta4>(guardedValue, (value) => DatabaseFlagsSqladminV1beta4.fromMap((value as Map).cast<String, dynamic>()))); })(),
      databaseReplicationEnabled: (() { final guardedValue = map['databaseReplicationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deletionProtectionEnabled: (() { final guardedValue = map['deletionProtectionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      denyMaintenancePeriods: (() { final guardedValue = map['denyMaintenancePeriods']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DenyMaintenancePeriodSqladminV1beta4>(guardedValue, (value) => DenyMaintenancePeriodSqladminV1beta4.fromMap((value as Map).cast<String, dynamic>()))); })(),
      edition: (() { final guardedValue = map['edition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SettingsEditionSqladminV1beta4.fromValue(guardedValue as String)); })(),
      insightsConfig: (() { final guardedValue = map['insightsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InsightsConfigSqladminV1beta4.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipConfiguration: (() { final guardedValue = map['ipConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IpConfigurationSqladminV1beta4.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locationPreference: (() { final guardedValue = map['locationPreference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LocationPreferenceSqladminV1beta4.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maintenanceWindow: (() { final guardedValue = map['maintenanceWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MaintenanceWindowSqladminV1beta4.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      passwordValidationPolicy: (() { final guardedValue = map['passwordValidationPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PasswordValidationPolicySqladminV1beta4.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pricingPlan: (() { final guardedValue = map['pricingPlan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SettingsPricingPlanSqladminV1beta4.fromValue(guardedValue as String)); })(),
      replicationType: (() { final guardedValue = map['replicationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SettingsReplicationTypeSqladminV1beta4.fromValue(guardedValue as String)); })(),
      settingsVersion: (() { final guardedValue = map['settingsVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sqlServerAuditConfig: (() { final guardedValue = map['sqlServerAuditConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SqlServerAuditConfigSqladminV1beta4.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageAutoResize: (() { final guardedValue = map['storageAutoResize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      storageAutoResizeLimit: (() { final guardedValue = map['storageAutoResizeLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userLabels: (() { final guardedValue = map['userLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

