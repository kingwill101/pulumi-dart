// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'advanced_machine_features_response.dart';
import 'backup_configuration_response.dart';
import 'data_cache_config_response.dart';
import 'database_flags_response.dart';
import 'deny_maintenance_period_response.dart';
import 'insights_config_response.dart';
import 'ip_configuration_response.dart';
import 'location_preference_response.dart';
import 'maintenance_window_response.dart';
import 'password_validation_policy_response.dart';
import 'sql_active_directory_config_response.dart';
import 'sql_server_audit_config_response.dart';

/// Database instance settings.
class SettingsResponse {
  /// The activation policy specifies when the instance is activated; it is applicable only when the instance state is RUNNABLE. Valid values: * `ALWAYS`: The instance is on, and remains so even in the absence of connection requests. * `NEVER`: The instance is off; it is not activated, even if a connection request arrives.
  final pulumi.Input<String> activationPolicy;
  /// Active Directory configuration, relevant only for Cloud SQL for SQL Server.
  final pulumi.Input<SqlActiveDirectoryConfigResponse> activeDirectoryConfig;
  /// Specifies advance machine configuration for the instance relevant only for SQL Server.
  final pulumi.Input<AdvancedMachineFeaturesResponse> advancedMachineFeatures;
  /// The App Engine app IDs that can access this instance. (Deprecated) Applied to First Generation instances only.
  final pulumi.Input<List<String>> authorizedGaeApplications;
  /// Availability type. Potential values: * `ZONAL`: The instance serves data from only one zone. Outages in that zone affect data accessibility. * `REGIONAL`: The instance can serve data from more than one zone in a region (it is highly available)./ For more information, see [Overview of the High Availability Configuration](https://cloud.google.com/sql/docs/mysql/high-availability).
  final pulumi.Input<String> availabilityType;
  /// The daily backup configuration for the instance.
  final pulumi.Input<BackupConfigurationResponse> backupConfiguration;
  /// The name of server Instance collation.
  final pulumi.Input<String> collation;
  /// Specifies if connections must use Cloud SQL connectors. Option values include the following: `NOT_REQUIRED` (Cloud SQL instances can be connected without Cloud SQL Connectors) and `REQUIRED` (Only allow connections that use Cloud SQL Connectors). Note that using REQUIRED disables all existing authorized networks. If this field is not specified when creating a new instance, NOT_REQUIRED is used. If this field is not specified when patching or updating an existing instance, it is left unchanged in the instance.
  final pulumi.Input<String> connectorEnforcement;
  /// Configuration specific to read replica instances. Indicates whether database flags for crash-safe replication are enabled. This property was only applicable to First Generation instances.
  final pulumi.Input<bool> crashSafeReplicationEnabled;
  /// Configuration for data cache.
  final pulumi.Input<DataCacheConfigResponse> dataCacheConfig;
  /// The size of data disk, in GB. The data disk size minimum is 10GB.
  final pulumi.Input<String> dataDiskSizeGb;
  /// The type of data disk: `PD_SSD` (default) or `PD_HDD`. Not used for First Generation instances.
  final pulumi.Input<String> dataDiskType;
  /// The database flags passed to the instance at startup.
  final pulumi.Input<List<DatabaseFlagsResponse>> databaseFlags;
  /// Configuration specific to read replica instances. Indicates whether replication is enabled or not. WARNING: Changing this restarts the instance.
  final pulumi.Input<bool> databaseReplicationEnabled;
  /// Configuration to protect against accidental instance deletion.
  final pulumi.Input<bool> deletionProtectionEnabled;
  /// Deny maintenance periods
  final pulumi.Input<List<DenyMaintenancePeriodResponse>> denyMaintenancePeriods;
  /// Optional. The edition of the instance.
  final pulumi.Input<String> edition;
  /// Insights configuration, for now relevant only for Postgres.
  final pulumi.Input<InsightsConfigResponse> insightsConfig;
  /// The settings for IP Management. This allows to enable or disable the instance IP and manage which external networks can connect to the instance. The IPv4 address cannot be disabled for Second Generation instances.
  final pulumi.Input<IpConfigurationResponse> ipConfiguration;
  /// This is always `sql#settings`.
  final pulumi.Input<String> kind;
  /// The location preference settings. This allows the instance to be located as near as possible to either an App Engine app or Compute Engine zone for better performance. App Engine co-location was only applicable to First Generation instances.
  final pulumi.Input<LocationPreferenceResponse> locationPreference;
  /// The maintenance window for this instance. This specifies when the instance can be restarted for maintenance purposes.
  final pulumi.Input<MaintenanceWindowResponse> maintenanceWindow;
  /// The local user password validation policy of the instance.
  final pulumi.Input<PasswordValidationPolicyResponse> passwordValidationPolicy;
  /// The pricing plan for this instance. This can be either `PER_USE` or `PACKAGE`. Only `PER_USE` is supported for Second Generation instances.
  final pulumi.Input<String> pricingPlan;
  /// The type of replication this instance uses. This can be either `ASYNCHRONOUS` or `SYNCHRONOUS`. (Deprecated) This property was only applicable to First Generation instances.
  final pulumi.Input<String> replicationType;
  /// The version of instance settings. This is a required field for update method to make sure concurrent updates are handled properly. During update, use the most recent settingsVersion value for this instance and do not try to update this value.
  final pulumi.Input<String> settingsVersion;
  /// SQL Server specific audit configuration.
  final pulumi.Input<SqlServerAuditConfigResponse> sqlServerAuditConfig;
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

  /// Creates a new [SettingsResponse].
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
  SettingsResponse({
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
      'activeDirectoryConfig': pulumi.Input.mapInputValue<SqlActiveDirectoryConfigResponse, Map<String, dynamic>>(activeDirectoryConfig, (value) => value.toMap()),
      'advancedMachineFeatures': pulumi.Input.mapInputValue<AdvancedMachineFeaturesResponse, Map<String, dynamic>>(advancedMachineFeatures, (value) => value.toMap()),
      'authorizedGaeApplications': authorizedGaeApplications,
      'availabilityType': availabilityType,
      'backupConfiguration': pulumi.Input.mapInputValue<BackupConfigurationResponse, Map<String, dynamic>>(backupConfiguration, (value) => value.toMap()),
      'collation': collation,
      'connectorEnforcement': connectorEnforcement,
      'crashSafeReplicationEnabled': crashSafeReplicationEnabled,
      'dataCacheConfig': pulumi.Input.mapInputValue<DataCacheConfigResponse, Map<String, dynamic>>(dataCacheConfig, (value) => value.toMap()),
      'dataDiskSizeGb': dataDiskSizeGb,
      'dataDiskType': dataDiskType,
      'databaseFlags': pulumi.Input.mapInputValue<List<DatabaseFlagsResponse>, List<Map<String, dynamic>>>(databaseFlags, (value) => pulumi.Input.encodeList<DatabaseFlagsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'databaseReplicationEnabled': databaseReplicationEnabled,
      'deletionProtectionEnabled': deletionProtectionEnabled,
      'denyMaintenancePeriods': pulumi.Input.mapInputValue<List<DenyMaintenancePeriodResponse>, List<Map<String, dynamic>>>(denyMaintenancePeriods, (value) => pulumi.Input.encodeList<DenyMaintenancePeriodResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'edition': edition,
      'insightsConfig': pulumi.Input.mapInputValue<InsightsConfigResponse, Map<String, dynamic>>(insightsConfig, (value) => value.toMap()),
      'ipConfiguration': pulumi.Input.mapInputValue<IpConfigurationResponse, Map<String, dynamic>>(ipConfiguration, (value) => value.toMap()),
      'kind': kind,
      'locationPreference': pulumi.Input.mapInputValue<LocationPreferenceResponse, Map<String, dynamic>>(locationPreference, (value) => value.toMap()),
      'maintenanceWindow': pulumi.Input.mapInputValue<MaintenanceWindowResponse, Map<String, dynamic>>(maintenanceWindow, (value) => value.toMap()),
      'passwordValidationPolicy': pulumi.Input.mapInputValue<PasswordValidationPolicyResponse, Map<String, dynamic>>(passwordValidationPolicy, (value) => value.toMap()),
      'pricingPlan': pricingPlan,
      'replicationType': replicationType,
      'settingsVersion': settingsVersion,
      'sqlServerAuditConfig': pulumi.Input.mapInputValue<SqlServerAuditConfigResponse, Map<String, dynamic>>(sqlServerAuditConfig, (value) => value.toMap()),
      'storageAutoResize': storageAutoResize,
      'storageAutoResizeLimit': storageAutoResizeLimit,
      'tier': tier,
      'timeZone': timeZone,
      'userLabels': userLabels,
    };
  }

  factory SettingsResponse.fromMap(Map<String, dynamic> map) {
    return SettingsResponse(
      activationPolicy: pulumi.Input.fromValue(map['activationPolicy'] as String),
      activeDirectoryConfig: pulumi.Input.fromValue(SqlActiveDirectoryConfigResponse.fromMap((map['activeDirectoryConfig']! as Map).cast<String, dynamic>())),
      advancedMachineFeatures: pulumi.Input.fromValue(AdvancedMachineFeaturesResponse.fromMap((map['advancedMachineFeatures']! as Map).cast<String, dynamic>())),
      authorizedGaeApplications: pulumi.Input.fromValue((map['authorizedGaeApplications'] as List).cast<String>()),
      availabilityType: pulumi.Input.fromValue(map['availabilityType'] as String),
      backupConfiguration: pulumi.Input.fromValue(BackupConfigurationResponse.fromMap((map['backupConfiguration']! as Map).cast<String, dynamic>())),
      collation: pulumi.Input.fromValue(map['collation'] as String),
      connectorEnforcement: pulumi.Input.fromValue(map['connectorEnforcement'] as String),
      crashSafeReplicationEnabled: pulumi.Input.fromValue(map['crashSafeReplicationEnabled'] as bool),
      dataCacheConfig: pulumi.Input.fromValue(DataCacheConfigResponse.fromMap((map['dataCacheConfig']! as Map).cast<String, dynamic>())),
      dataDiskSizeGb: pulumi.Input.fromValue(map['dataDiskSizeGb'] as String),
      dataDiskType: pulumi.Input.fromValue(map['dataDiskType'] as String),
      databaseFlags: pulumi.Input.fromValue(pulumi.Input.decodeList<DatabaseFlagsResponse>(map['databaseFlags']!, (value) => DatabaseFlagsResponse.fromMap((value as Map).cast<String, dynamic>()))),
      databaseReplicationEnabled: pulumi.Input.fromValue(map['databaseReplicationEnabled'] as bool),
      deletionProtectionEnabled: pulumi.Input.fromValue(map['deletionProtectionEnabled'] as bool),
      denyMaintenancePeriods: pulumi.Input.fromValue(pulumi.Input.decodeList<DenyMaintenancePeriodResponse>(map['denyMaintenancePeriods']!, (value) => DenyMaintenancePeriodResponse.fromMap((value as Map).cast<String, dynamic>()))),
      edition: pulumi.Input.fromValue(map['edition'] as String),
      insightsConfig: pulumi.Input.fromValue(InsightsConfigResponse.fromMap((map['insightsConfig']! as Map).cast<String, dynamic>())),
      ipConfiguration: pulumi.Input.fromValue(IpConfigurationResponse.fromMap((map['ipConfiguration']! as Map).cast<String, dynamic>())),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      locationPreference: pulumi.Input.fromValue(LocationPreferenceResponse.fromMap((map['locationPreference']! as Map).cast<String, dynamic>())),
      maintenanceWindow: pulumi.Input.fromValue(MaintenanceWindowResponse.fromMap((map['maintenanceWindow']! as Map).cast<String, dynamic>())),
      passwordValidationPolicy: pulumi.Input.fromValue(PasswordValidationPolicyResponse.fromMap((map['passwordValidationPolicy']! as Map).cast<String, dynamic>())),
      pricingPlan: pulumi.Input.fromValue(map['pricingPlan'] as String),
      replicationType: pulumi.Input.fromValue(map['replicationType'] as String),
      settingsVersion: pulumi.Input.fromValue(map['settingsVersion'] as String),
      sqlServerAuditConfig: pulumi.Input.fromValue(SqlServerAuditConfigResponse.fromMap((map['sqlServerAuditConfig']! as Map).cast<String, dynamic>())),
      storageAutoResize: pulumi.Input.fromValue(map['storageAutoResize'] as bool),
      storageAutoResizeLimit: pulumi.Input.fromValue(map['storageAutoResizeLimit'] as String),
      tier: pulumi.Input.fromValue(map['tier'] as String),
      timeZone: pulumi.Input.fromValue(map['timeZone'] as String),
      userLabels: pulumi.Input.fromValue((map['userLabels'] as Map).cast<String, String>()),
    );
  }
}

