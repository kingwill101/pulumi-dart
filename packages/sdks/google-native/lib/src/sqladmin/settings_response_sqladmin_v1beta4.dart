// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'advanced_machine_features_response_sqladmin_v1beta4.dart';
import 'backup_configuration_response_sqladmin_v1beta4.dart';
import 'data_cache_config_response_sqladmin_v1beta4.dart';
import 'database_flags_response_sqladmin_v1beta4.dart';
import 'deny_maintenance_period_response_sqladmin_v1beta4.dart';
import 'insights_config_response_sqladmin_v1beta4.dart';
import 'ip_configuration_response_sqladmin_v1beta4.dart';
import 'location_preference_response_sqladmin_v1beta4.dart';
import 'maintenance_window_response_sqladmin_v1beta4.dart';
import 'password_validation_policy_response_sqladmin_v1beta4.dart';
import 'sql_active_directory_config_response_sqladmin_v1beta4.dart';
import 'sql_server_audit_config_response_sqladmin_v1beta4.dart';

/// Database instance settings.
class SettingsResponseSqladminV1beta4 {
  /// The activation policy specifies when the instance is activated; it is applicable only when the instance state is RUNNABLE. Valid values: * `ALWAYS`: The instance is on, and remains so even in the absence of connection requests. * `NEVER`: The instance is off; it is not activated, even if a connection request arrives.
  final pulumi.Input<String> activationPolicy;
  /// Active Directory configuration, relevant only for Cloud SQL for SQL Server.
  final pulumi.Input<SqlActiveDirectoryConfigResponseSqladminV1beta4> activeDirectoryConfig;
  /// Specifies advance machine configuration for the instance relevant only for SQL Server.
  final pulumi.Input<AdvancedMachineFeaturesResponseSqladminV1beta4> advancedMachineFeatures;
  /// The App Engine app IDs that can access this instance. (Deprecated) Applied to First Generation instances only.
  final pulumi.Input<List<String>> authorizedGaeApplications;
  /// Availability type. Potential values: * `ZONAL`: The instance serves data from only one zone. Outages in that zone affect data accessibility. * `REGIONAL`: The instance can serve data from more than one zone in a region (it is highly available)./ For more information, see [Overview of the High Availability Configuration](https://cloud.google.com/sql/docs/mysql/high-availability).
  final pulumi.Input<String> availabilityType;
  /// The daily backup configuration for the instance.
  final pulumi.Input<BackupConfigurationResponseSqladminV1beta4> backupConfiguration;
  /// The name of server Instance collation.
  final pulumi.Input<String> collation;
  /// Specifies if connections must use Cloud SQL connectors. Option values include the following: `NOT_REQUIRED` (Cloud SQL instances can be connected without Cloud SQL Connectors) and `REQUIRED` (Only allow connections that use Cloud SQL Connectors) Note that using REQUIRED disables all existing authorized networks. If this field is not specified when creating a new instance, NOT_REQUIRED is used. If this field is not specified when patching or updating an existing instance, it is left unchanged in the instance.
  final pulumi.Input<String> connectorEnforcement;
  /// Configuration specific to read replica instances. Indicates whether database flags for crash-safe replication are enabled. This property was only applicable to First Generation instances.
  final pulumi.Input<bool> crashSafeReplicationEnabled;
  /// Configuration for data cache.
  final pulumi.Input<DataCacheConfigResponseSqladminV1beta4> dataCacheConfig;
  /// The size of data disk, in GB. The data disk size minimum is 10GB.
  final pulumi.Input<String> dataDiskSizeGb;
  /// The type of data disk: `PD_SSD` (default) or `PD_HDD`. Not used for First Generation instances.
  final pulumi.Input<String> dataDiskType;
  /// The database flags passed to the instance at startup.
  final pulumi.Input<List<DatabaseFlagsResponseSqladminV1beta4>> databaseFlags;
  /// Configuration specific to read replica instances. Indicates whether replication is enabled or not. WARNING: Changing this restarts the instance.
  final pulumi.Input<bool> databaseReplicationEnabled;
  /// Configuration to protect against accidental instance deletion.
  final pulumi.Input<bool> deletionProtectionEnabled;
  /// Deny maintenance periods
  final pulumi.Input<List<DenyMaintenancePeriodResponseSqladminV1beta4>> denyMaintenancePeriods;
  /// Optional. The edition of the instance.
  final pulumi.Input<String> edition;
  /// Insights configuration, for now relevant only for Postgres.
  final pulumi.Input<InsightsConfigResponseSqladminV1beta4> insightsConfig;
  /// The settings for IP Management. This allows to enable or disable the instance IP and manage which external networks can connect to the instance. The IPv4 address cannot be disabled for Second Generation instances.
  final pulumi.Input<IpConfigurationResponseSqladminV1beta4> ipConfiguration;
  /// This is always `sql#settings`.
  final pulumi.Input<String> kind;
  /// The location preference settings. This allows the instance to be located as near as possible to either an App Engine app or Compute Engine zone for better performance. App Engine co-location was only applicable to First Generation instances.
  final pulumi.Input<LocationPreferenceResponseSqladminV1beta4> locationPreference;
  /// The maintenance window for this instance. This specifies when the instance can be restarted for maintenance purposes.
  final pulumi.Input<MaintenanceWindowResponseSqladminV1beta4> maintenanceWindow;
  /// The local user password validation policy of the instance.
  final pulumi.Input<PasswordValidationPolicyResponseSqladminV1beta4> passwordValidationPolicy;
  /// The pricing plan for this instance. This can be either `PER_USE` or `PACKAGE`. Only `PER_USE` is supported for Second Generation instances.
  final pulumi.Input<String> pricingPlan;
  /// The type of replication this instance uses. This can be either `ASYNCHRONOUS` or `SYNCHRONOUS`. (Deprecated) This property was only applicable to First Generation instances.
  final pulumi.Input<String> replicationType;
  /// The version of instance settings. This is a required field for update method to make sure concurrent updates are handled properly. During update, use the most recent settingsVersion value for this instance and do not try to update this value.
  final pulumi.Input<String> settingsVersion;
  /// SQL Server specific audit configuration.
  final pulumi.Input<SqlServerAuditConfigResponseSqladminV1beta4> sqlServerAuditConfig;
  /// Configuration to increase storage size automatically. The default value is true.
  final pulumi.Input<bool> storageAutoResize;
  /// The maximum size to which storage capacity can be automatically increased. The default value is 0, which specifies that there is no limit.
  final pulumi.Input<String> storageAutoResizeLimit;
  /// The tier (or machine type) for this instance, for example `db-custom-1-3840`. WARNING: Changing this restarts the instance.
  final pulumi.Input<String> tier;
  /// Server timezone, relevant only for Cloud SQL for SQL Server.
  final pulumi.Input<String> timeZone;
  /// User-provided labels, represented as a dictionary where each label is a single key value pair.
  final pulumi.Input<Map<String, String>> userLabels;

  /// Creates a new [SettingsResponseSqladminV1beta4].
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
  SettingsResponseSqladminV1beta4({
    required this.activationPolicy,
    required this.activeDirectoryConfig,
    required this.advancedMachineFeatures,
    required this.authorizedGaeApplications,
    required this.availabilityType,
    required this.backupConfiguration,
    required this.collation,
    required this.connectorEnforcement,
    required this.crashSafeReplicationEnabled,
    required this.dataCacheConfig,
    required this.dataDiskSizeGb,
    required this.dataDiskType,
    required this.databaseFlags,
    required this.databaseReplicationEnabled,
    required this.deletionProtectionEnabled,
    required this.denyMaintenancePeriods,
    required this.edition,
    required this.insightsConfig,
    required this.ipConfiguration,
    required this.kind,
    required this.locationPreference,
    required this.maintenanceWindow,
    required this.passwordValidationPolicy,
    required this.pricingPlan,
    required this.replicationType,
    required this.settingsVersion,
    required this.sqlServerAuditConfig,
    required this.storageAutoResize,
    required this.storageAutoResizeLimit,
    required this.tier,
    required this.timeZone,
    required this.userLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationPolicy': activationPolicy,
      'activeDirectoryConfig': pulumi.Input.mapInputValue<SqlActiveDirectoryConfigResponseSqladminV1beta4, Map<String, dynamic>>(activeDirectoryConfig, (value) => value.toMap()),
      'advancedMachineFeatures': pulumi.Input.mapInputValue<AdvancedMachineFeaturesResponseSqladminV1beta4, Map<String, dynamic>>(advancedMachineFeatures, (value) => value.toMap()),
      'authorizedGaeApplications': authorizedGaeApplications,
      'availabilityType': availabilityType,
      'backupConfiguration': pulumi.Input.mapInputValue<BackupConfigurationResponseSqladminV1beta4, Map<String, dynamic>>(backupConfiguration, (value) => value.toMap()),
      'collation': collation,
      'connectorEnforcement': connectorEnforcement,
      'crashSafeReplicationEnabled': crashSafeReplicationEnabled,
      'dataCacheConfig': pulumi.Input.mapInputValue<DataCacheConfigResponseSqladminV1beta4, Map<String, dynamic>>(dataCacheConfig, (value) => value.toMap()),
      'dataDiskSizeGb': dataDiskSizeGb,
      'dataDiskType': dataDiskType,
      'databaseFlags': pulumi.Input.mapInputValue<List<DatabaseFlagsResponseSqladminV1beta4>, List<Map<String, dynamic>>>(databaseFlags, (value) => pulumi.Input.encodeList<DatabaseFlagsResponseSqladminV1beta4, Map<String, dynamic>>(value, (value) => value.toMap())),
      'databaseReplicationEnabled': databaseReplicationEnabled,
      'deletionProtectionEnabled': deletionProtectionEnabled,
      'denyMaintenancePeriods': pulumi.Input.mapInputValue<List<DenyMaintenancePeriodResponseSqladminV1beta4>, List<Map<String, dynamic>>>(denyMaintenancePeriods, (value) => pulumi.Input.encodeList<DenyMaintenancePeriodResponseSqladminV1beta4, Map<String, dynamic>>(value, (value) => value.toMap())),
      'edition': edition,
      'insightsConfig': pulumi.Input.mapInputValue<InsightsConfigResponseSqladminV1beta4, Map<String, dynamic>>(insightsConfig, (value) => value.toMap()),
      'ipConfiguration': pulumi.Input.mapInputValue<IpConfigurationResponseSqladminV1beta4, Map<String, dynamic>>(ipConfiguration, (value) => value.toMap()),
      'kind': kind,
      'locationPreference': pulumi.Input.mapInputValue<LocationPreferenceResponseSqladminV1beta4, Map<String, dynamic>>(locationPreference, (value) => value.toMap()),
      'maintenanceWindow': pulumi.Input.mapInputValue<MaintenanceWindowResponseSqladminV1beta4, Map<String, dynamic>>(maintenanceWindow, (value) => value.toMap()),
      'passwordValidationPolicy': pulumi.Input.mapInputValue<PasswordValidationPolicyResponseSqladminV1beta4, Map<String, dynamic>>(passwordValidationPolicy, (value) => value.toMap()),
      'pricingPlan': pricingPlan,
      'replicationType': replicationType,
      'settingsVersion': settingsVersion,
      'sqlServerAuditConfig': pulumi.Input.mapInputValue<SqlServerAuditConfigResponseSqladminV1beta4, Map<String, dynamic>>(sqlServerAuditConfig, (value) => value.toMap()),
      'storageAutoResize': storageAutoResize,
      'storageAutoResizeLimit': storageAutoResizeLimit,
      'tier': tier,
      'timeZone': timeZone,
      'userLabels': userLabels,
    };
  }

  factory SettingsResponseSqladminV1beta4.fromMap(Map<String, dynamic> map) {
    return SettingsResponseSqladminV1beta4(
      activationPolicy: pulumi.Input.fromValue(map['activationPolicy'] as String),
      activeDirectoryConfig: pulumi.Input.fromValue(SqlActiveDirectoryConfigResponseSqladminV1beta4.fromMap((map['activeDirectoryConfig']! as Map).cast<String, dynamic>())),
      advancedMachineFeatures: pulumi.Input.fromValue(AdvancedMachineFeaturesResponseSqladminV1beta4.fromMap((map['advancedMachineFeatures']! as Map).cast<String, dynamic>())),
      authorizedGaeApplications: pulumi.Input.fromValue((map['authorizedGaeApplications'] as List).cast<String>()),
      availabilityType: pulumi.Input.fromValue(map['availabilityType'] as String),
      backupConfiguration: pulumi.Input.fromValue(BackupConfigurationResponseSqladminV1beta4.fromMap((map['backupConfiguration']! as Map).cast<String, dynamic>())),
      collation: pulumi.Input.fromValue(map['collation'] as String),
      connectorEnforcement: pulumi.Input.fromValue(map['connectorEnforcement'] as String),
      crashSafeReplicationEnabled: pulumi.Input.fromValue(map['crashSafeReplicationEnabled'] as bool),
      dataCacheConfig: pulumi.Input.fromValue(DataCacheConfigResponseSqladminV1beta4.fromMap((map['dataCacheConfig']! as Map).cast<String, dynamic>())),
      dataDiskSizeGb: pulumi.Input.fromValue(map['dataDiskSizeGb'] as String),
      dataDiskType: pulumi.Input.fromValue(map['dataDiskType'] as String),
      databaseFlags: pulumi.Input.fromValue(pulumi.Input.decodeList<DatabaseFlagsResponseSqladminV1beta4>(map['databaseFlags']!, (value) => DatabaseFlagsResponseSqladminV1beta4.fromMap((value as Map).cast<String, dynamic>()))),
      databaseReplicationEnabled: pulumi.Input.fromValue(map['databaseReplicationEnabled'] as bool),
      deletionProtectionEnabled: pulumi.Input.fromValue(map['deletionProtectionEnabled'] as bool),
      denyMaintenancePeriods: pulumi.Input.fromValue(pulumi.Input.decodeList<DenyMaintenancePeriodResponseSqladminV1beta4>(map['denyMaintenancePeriods']!, (value) => DenyMaintenancePeriodResponseSqladminV1beta4.fromMap((value as Map).cast<String, dynamic>()))),
      edition: pulumi.Input.fromValue(map['edition'] as String),
      insightsConfig: pulumi.Input.fromValue(InsightsConfigResponseSqladminV1beta4.fromMap((map['insightsConfig']! as Map).cast<String, dynamic>())),
      ipConfiguration: pulumi.Input.fromValue(IpConfigurationResponseSqladminV1beta4.fromMap((map['ipConfiguration']! as Map).cast<String, dynamic>())),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      locationPreference: pulumi.Input.fromValue(LocationPreferenceResponseSqladminV1beta4.fromMap((map['locationPreference']! as Map).cast<String, dynamic>())),
      maintenanceWindow: pulumi.Input.fromValue(MaintenanceWindowResponseSqladminV1beta4.fromMap((map['maintenanceWindow']! as Map).cast<String, dynamic>())),
      passwordValidationPolicy: pulumi.Input.fromValue(PasswordValidationPolicyResponseSqladminV1beta4.fromMap((map['passwordValidationPolicy']! as Map).cast<String, dynamic>())),
      pricingPlan: pulumi.Input.fromValue(map['pricingPlan'] as String),
      replicationType: pulumi.Input.fromValue(map['replicationType'] as String),
      settingsVersion: pulumi.Input.fromValue(map['settingsVersion'] as String),
      sqlServerAuditConfig: pulumi.Input.fromValue(SqlServerAuditConfigResponseSqladminV1beta4.fromMap((map['sqlServerAuditConfig']! as Map).cast<String, dynamic>())),
      storageAutoResize: pulumi.Input.fromValue(map['storageAutoResize'] as bool),
      storageAutoResizeLimit: pulumi.Input.fromValue(map['storageAutoResizeLimit'] as String),
      tier: pulumi.Input.fromValue(map['tier'] as String),
      timeZone: pulumi.Input.fromValue(map['timeZone'] as String),
      userLabels: pulumi.Input.fromValue((map['userLabels'] as Map).cast<String, String>()),
    );
  }
}

