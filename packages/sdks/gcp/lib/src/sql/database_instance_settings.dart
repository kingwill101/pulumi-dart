// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_instance_settings_active_directory_config.dart';
import 'database_instance_settings_advanced_machine_features.dart';
import 'database_instance_settings_backup_configuration.dart';
import 'database_instance_settings_connection_pool_config.dart';
import 'database_instance_settings_data_cache_config.dart';
import 'database_instance_settings_database_flag.dart';
import 'database_instance_settings_deny_maintenance_period.dart';
import 'database_instance_settings_final_backup_config.dart';
import 'database_instance_settings_insights_config.dart';
import 'database_instance_settings_ip_configuration.dart';
import 'database_instance_settings_location_preference.dart';
import 'database_instance_settings_maintenance_window.dart';
import 'database_instance_settings_password_validation_policy.dart';
import 'database_instance_settings_read_pool_auto_scale_config.dart';
import 'database_instance_settings_sql_server_audit_config.dart';

class DatabaseInstanceSettings {
  /// This specifies when the instance should be
  /// active. Can be either `ALWAYS`, `NEVER` or `ON_DEMAND`.
  final pulumi.Input<String>? activationPolicy;
  final pulumi.Input<DatabaseInstanceSettingsActiveDirectoryConfig>? activeDirectoryConfig;
  final pulumi.Input<DatabaseInstanceSettingsAdvancedMachineFeatures>? advancedMachineFeatures;
  /// The availability type of the Cloud SQL
  /// instance, high availability (`REGIONAL`) or single zone (`ZONAL`). For all instances, ensure that
  /// `settings.backup_configuration.enabled` is set to `true`.
  /// For MySQL instances, ensure that `settings.backup_configuration.binary_log_enabled` is set to `true`.
  /// For Postgres and SQL Server instances, ensure that `settings.backup_configuration.point_in_time_recovery_enabled`
  /// is set to `true`. Defaults to `ZONAL`.
  /// For read pool instances, this field is read-only. The availability type is changed by specifying
  /// the number of nodes (`node_count`).
  final pulumi.Input<String>? availabilityType;
  final pulumi.Input<DatabaseInstanceSettingsBackupConfiguration>? backupConfiguration;
  /// The name of server instance collation.
  final pulumi.Input<String>? collation;
  /// The managed connection pool setting for a Cloud SQL instance.
  final pulumi.Input<List<DatabaseInstanceSettingsConnectionPoolConfig>>? connectionPoolConfigs;
  /// Control the enforcement of Cloud SQL Auth Proxy or Cloud SQL connectors for all the connections, can be `REQUIRED` or `NOT_REQUIRED`. If enabled, all the direct connections are rejected.
  final pulumi.Input<String>? connectorEnforcement;
  /// Data cache configurations.
  final pulumi.Input<DatabaseInstanceSettingsDataCacheConfig>? dataCacheConfig;
  /// Provisioned number of I/O operations per second for the data disk. This field is only used for `HYPERDISK_BALANCED` disk types.
  final pulumi.Input<int>? dataDiskProvisionedIops;
  /// Provisioned throughput measured in MiB per second for the data disk. This field is only used for `HYPERDISK_BALANCED` disk types.
  final pulumi.Input<int>? dataDiskProvisionedThroughput;
  final pulumi.Input<List<DatabaseInstanceSettingsDatabaseFlag>>? databaseFlags;
  /// Configuration to protect against accidental instance deletion.
  final pulumi.Input<bool>? deletionProtectionEnabled;
  final pulumi.Input<DatabaseInstanceSettingsDenyMaintenancePeriod>? denyMaintenancePeriod;
  /// Enables auto-resizing of the storage size. Defaults to `true`. Note that if `disk_size` is set, future `pulumi up` calls will attempt to delete the instance in order to resize the disk to the value specified in disk_size if it has been resized. To avoid this, ensure that `lifecycle.ignore_changes` is applied to `disk_size`.
  final pulumi.Input<bool>? diskAutoresize;
  /// The maximum size to which storage capacity can be automatically increased. The default value is 0, which specifies that there is no limit.
  final pulumi.Input<int>? diskAutoresizeLimit;
  /// The size of data disk, in GB. Size of a running instance cannot be reduced but can be increased. The minimum value is 10GB for `PD_SSD`, `PD_HDD` and 20GB for `HYPERDISK_BALANCED`. Note that this value will override the resizing from `disk_autoresize` if that feature is enabled. To avoid this, set `lifecycle.ignore_changes` on this field.
  final pulumi.Input<int>? diskSize;
  /// The type of data disk: `PD_SSD`, `PD_HDD`, or `HYPERDISK_BALANCED`. Defaults to `PD_SSD`. `HYPERDISK_BALANCED` is preview.
  final pulumi.Input<String>? diskType;
  /// The edition of the instance, can be `ENTERPRISE` or `ENTERPRISE_PLUS`.
  final pulumi.Input<String>? edition;
  /// (Computed) The availability type of
  /// the Cloud SQL instance, high availability (REGIONAL) or single zone
  /// (ZONAL). This field always contains the value that is reported by the API (for
  /// read pools, `settings.0.effective_availability_type` may differ from
  /// `settings.0.availability_type`).
  final pulumi.Input<String>? effectiveAvailabilityType;
  /// Enables [Cloud SQL instance integration with Dataplex](https://cloud.google.com/sql/docs/mysql/dataplex-catalog-integration). MySQL, Postgres and SQL Server instances are supported for this feature. Defaults to `false`.
  final pulumi.Input<bool>? enableDataplexIntegration;
  /// Enables [Cloud SQL instances to connect to Vertex AI](https://cloud.google.com/sql/docs/postgres/integrate-cloud-sql-with-vertex-ai) and pass requests for real-time predictions and insights. Defaults to `false`.
  final pulumi.Input<bool>? enableGoogleMlIntegration;
  /// Config used to determine the final backup settings for the instance
  final pulumi.Input<DatabaseInstanceSettingsFinalBackupConfig>? finalBackupConfig;
  /// Configuration of Query Insights.
  final pulumi.Input<DatabaseInstanceSettingsInsightsConfig>? insightsConfig;
  final pulumi.Input<DatabaseInstanceSettingsIpConfiguration>? ipConfiguration;
  final pulumi.Input<DatabaseInstanceSettingsLocationPreference>? locationPreference;
  /// Declares a one-hour maintenance window when an Instance can automatically restart to apply updates. The maintenance window is specified in UTC time.
  final pulumi.Input<DatabaseInstanceSettingsMaintenanceWindow>? maintenanceWindow;
  final pulumi.Input<DatabaseInstanceSettingsPasswordValidationPolicy>? passwordValidationPolicy;
  /// Pricing plan for this instance, can only be `PER_USE`.
  final pulumi.Input<String>? pricingPlan;
  /// Configuration of Read Pool Auto Scale.
  final pulumi.Input<DatabaseInstanceSettingsReadPoolAutoScaleConfig>? readPoolAutoScaleConfig;
  /// When this parameter is set to true, Cloud SQL retains backups of the instance even after the instance is deleted. The `ON_DEMAND` backup will be retained until customer deletes the backup or the project. The `AUTOMATED` backup will be retained based on the backups retention setting.
  final pulumi.Input<bool>? retainBackupsOnDelete;
  final pulumi.Input<DatabaseInstanceSettingsSqlServerAuditConfig>? sqlServerAuditConfig;
  /// The machine type to use. See [tiers](https://cloud.google.com/sql/docs/admin-api/v1beta4/tiers)
  /// for more details and supported versions. Postgres supports only shared-core machine types,
  /// and custom machine types such as `db-custom-2-13312`. See the [Custom Machine Type Documentation](https://cloud.google.com/compute/docs/instances/creating-instance-with-custom-machine-type#create) to learn about specifying custom machine types.
  final pulumi.Input<String> tier;
  /// The time_zone to be used by the database engine (supported only for SQL Server), in SQL Server timezone format.
  final pulumi.Input<String>? timeZone;
  /// A set of key/value user label pairs to assign to the instance.
  final pulumi.Input<Map<String, String>>? userLabels;
  /// Used to make sure changes to the `settings` block are
  /// atomic.
  final pulumi.Input<int>? version;

  /// Creates a new [DatabaseInstanceSettings].
  /// [activationPolicy] This specifies when the instance should be
  /// [activeDirectoryConfig] Optional.
  /// [advancedMachineFeatures] Optional.
  /// [availabilityType] The availability type of the Cloud SQL
  /// [backupConfiguration] Optional.
  /// [collation] The name of server instance collation.
  /// [connectionPoolConfigs] The managed connection pool setting for a Cloud SQL instance.
  /// [connectorEnforcement] Control the enforcement of Cloud SQL Auth Proxy or Cloud SQL connectors for all the connections, can be `REQUIRED` or `NOT_REQUIRED`. If enabled, all the direct connections are rejected.
  /// [dataCacheConfig] Data cache configurations.
  /// [dataDiskProvisionedIops] Provisioned number of I/O operations per second for the data disk. This field is only used for `HYPERDISK_BALANCED` disk types.
  /// [dataDiskProvisionedThroughput] Provisioned throughput measured in MiB per second for the data disk. This field is only used for `HYPERDISK_BALANCED` disk types.
  /// [databaseFlags] Optional.
  /// [deletionProtectionEnabled] Configuration to protect against accidental instance deletion.
  /// [denyMaintenancePeriod] Optional.
  /// [diskAutoresize] Enables auto-resizing of the storage size. Defaults to `true`. Note that if `disk_size` is set, future `pulumi up` calls will attempt to delete the instance in order to resize the disk to the value specified in disk_size if it has been resized. To avoid this, ensure that `lifecycle.ignore_changes` is applied to `disk_size`.
  /// [diskAutoresizeLimit] The maximum size to which storage capacity can be automatically increased. The default value is 0, which specifies that there is no limit.
  /// [diskSize] The size of data disk, in GB. Size of a running instance cannot be reduced but can be increased. The minimum value is 10GB for `PD_SSD`, `PD_HDD` and 20GB for `HYPERDISK_BALANCED`. Note that this value will override the resizing from `disk_autoresize` if that feature is enabled. To avoid this, set `lifecycle.ignore_changes` on this field.
  /// [diskType] The type of data disk: `PD_SSD`, `PD_HDD`, or `HYPERDISK_BALANCED`. Defaults to `PD_SSD`. `HYPERDISK_BALANCED` is preview.
  /// [edition] The edition of the instance, can be `ENTERPRISE` or `ENTERPRISE_PLUS`.
  /// [effectiveAvailabilityType] (Computed) The availability type of
  /// [enableDataplexIntegration] Enables [Cloud SQL instance integration with Dataplex](https://cloud.google.com/sql/docs/mysql/dataplex-catalog-integration). MySQL, Postgres and SQL Server instances are supported for this feature. Defaults to `false`.
  /// [enableGoogleMlIntegration] Enables [Cloud SQL instances to connect to Vertex AI](https://cloud.google.com/sql/docs/postgres/integrate-cloud-sql-with-vertex-ai) and pass requests for real-time predictions and insights. Defaults to `false`.
  /// [finalBackupConfig] Config used to determine the final backup settings for the instance
  /// [insightsConfig] Configuration of Query Insights.
  /// [ipConfiguration] Optional.
  /// [locationPreference] Optional.
  /// [maintenanceWindow] Declares a one-hour maintenance window when an Instance can automatically restart to apply updates. The maintenance window is specified in UTC time.
  /// [passwordValidationPolicy] Optional.
  /// [pricingPlan] Pricing plan for this instance, can only be `PER_USE`.
  /// [readPoolAutoScaleConfig] Configuration of Read Pool Auto Scale.
  /// [retainBackupsOnDelete] When this parameter is set to true, Cloud SQL retains backups of the instance even after the instance is deleted. The `ON_DEMAND` backup will be retained until customer deletes the backup or the project. The `AUTOMATED` backup will be retained based on the backups retention setting.
  /// [sqlServerAuditConfig] Optional.
  /// [tier] The machine type to use. See [tiers](https://cloud.google.com/sql/docs/admin-api/v1beta4/tiers)
  /// [timeZone] The time_zone to be used by the database engine (supported only for SQL Server), in SQL Server timezone format.
  /// [userLabels] A set of key/value user label pairs to assign to the instance.
  /// [version] Used to make sure changes to the `settings` block are
  const DatabaseInstanceSettings({
    this.activationPolicy,
    this.activeDirectoryConfig,
    this.advancedMachineFeatures,
    this.availabilityType,
    this.backupConfiguration,
    this.collation,
    this.connectionPoolConfigs,
    this.connectorEnforcement,
    this.dataCacheConfig,
    this.dataDiskProvisionedIops,
    this.dataDiskProvisionedThroughput,
    this.databaseFlags,
    this.deletionProtectionEnabled,
    this.denyMaintenancePeriod,
    this.diskAutoresize,
    this.diskAutoresizeLimit,
    this.diskSize,
    this.diskType,
    this.edition,
    this.effectiveAvailabilityType,
    this.enableDataplexIntegration,
    this.enableGoogleMlIntegration,
    this.finalBackupConfig,
    this.insightsConfig,
    this.ipConfiguration,
    this.locationPreference,
    this.maintenanceWindow,
    this.passwordValidationPolicy,
    this.pricingPlan,
    this.readPoolAutoScaleConfig,
    this.retainBackupsOnDelete,
    this.sqlServerAuditConfig,
    required this.tier,
    this.timeZone,
    this.userLabels,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationPolicy': ?activationPolicy,
      'activeDirectoryConfig': ?pulumi.Input.mapOptionalInputValue<DatabaseInstanceSettingsActiveDirectoryConfig, Map<String, dynamic>>(activeDirectoryConfig, (value) => value.toMap()),
      'advancedMachineFeatures': ?pulumi.Input.mapOptionalInputValue<DatabaseInstanceSettingsAdvancedMachineFeatures, Map<String, dynamic>>(advancedMachineFeatures, (value) => value.toMap()),
      'availabilityType': ?availabilityType,
      'backupConfiguration': ?pulumi.Input.mapOptionalInputValue<DatabaseInstanceSettingsBackupConfiguration, Map<String, dynamic>>(backupConfiguration, (value) => value.toMap()),
      'collation': ?collation,
      'connectionPoolConfigs': ?pulumi.Input.mapOptionalInputValue<List<DatabaseInstanceSettingsConnectionPoolConfig>, List<Map<String, dynamic>>>(connectionPoolConfigs, (value) => pulumi.Input.encodeList<DatabaseInstanceSettingsConnectionPoolConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'connectorEnforcement': ?connectorEnforcement,
      'dataCacheConfig': ?pulumi.Input.mapOptionalInputValue<DatabaseInstanceSettingsDataCacheConfig, Map<String, dynamic>>(dataCacheConfig, (value) => value.toMap()),
      'dataDiskProvisionedIops': ?dataDiskProvisionedIops,
      'dataDiskProvisionedThroughput': ?dataDiskProvisionedThroughput,
      'databaseFlags': ?pulumi.Input.mapOptionalInputValue<List<DatabaseInstanceSettingsDatabaseFlag>, List<Map<String, dynamic>>>(databaseFlags, (value) => pulumi.Input.encodeList<DatabaseInstanceSettingsDatabaseFlag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deletionProtectionEnabled': ?deletionProtectionEnabled,
      'denyMaintenancePeriod': ?pulumi.Input.mapOptionalInputValue<DatabaseInstanceSettingsDenyMaintenancePeriod, Map<String, dynamic>>(denyMaintenancePeriod, (value) => value.toMap()),
      'diskAutoresize': ?diskAutoresize,
      'diskAutoresizeLimit': ?diskAutoresizeLimit,
      'diskSize': ?diskSize,
      'diskType': ?diskType,
      'edition': ?edition,
      'effectiveAvailabilityType': ?effectiveAvailabilityType,
      'enableDataplexIntegration': ?enableDataplexIntegration,
      'enableGoogleMlIntegration': ?enableGoogleMlIntegration,
      'finalBackupConfig': ?pulumi.Input.mapOptionalInputValue<DatabaseInstanceSettingsFinalBackupConfig, Map<String, dynamic>>(finalBackupConfig, (value) => value.toMap()),
      'insightsConfig': ?pulumi.Input.mapOptionalInputValue<DatabaseInstanceSettingsInsightsConfig, Map<String, dynamic>>(insightsConfig, (value) => value.toMap()),
      'ipConfiguration': ?pulumi.Input.mapOptionalInputValue<DatabaseInstanceSettingsIpConfiguration, Map<String, dynamic>>(ipConfiguration, (value) => value.toMap()),
      'locationPreference': ?pulumi.Input.mapOptionalInputValue<DatabaseInstanceSettingsLocationPreference, Map<String, dynamic>>(locationPreference, (value) => value.toMap()),
      'maintenanceWindow': ?pulumi.Input.mapOptionalInputValue<DatabaseInstanceSettingsMaintenanceWindow, Map<String, dynamic>>(maintenanceWindow, (value) => value.toMap()),
      'passwordValidationPolicy': ?pulumi.Input.mapOptionalInputValue<DatabaseInstanceSettingsPasswordValidationPolicy, Map<String, dynamic>>(passwordValidationPolicy, (value) => value.toMap()),
      'pricingPlan': ?pricingPlan,
      'readPoolAutoScaleConfig': ?pulumi.Input.mapOptionalInputValue<DatabaseInstanceSettingsReadPoolAutoScaleConfig, Map<String, dynamic>>(readPoolAutoScaleConfig, (value) => value.toMap()),
      'retainBackupsOnDelete': ?retainBackupsOnDelete,
      'sqlServerAuditConfig': ?pulumi.Input.mapOptionalInputValue<DatabaseInstanceSettingsSqlServerAuditConfig, Map<String, dynamic>>(sqlServerAuditConfig, (value) => value.toMap()),
      'tier': tier,
      'timeZone': ?timeZone,
      'userLabels': ?userLabels,
      'version': ?version,
    };
  }

  factory DatabaseInstanceSettings.fromMap(Map<String, dynamic> map) {
    return DatabaseInstanceSettings(
      activationPolicy: (() { final guardedValue = map['activationPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      activeDirectoryConfig: (() { final guardedValue = map['activeDirectoryConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatabaseInstanceSettingsActiveDirectoryConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      advancedMachineFeatures: (() { final guardedValue = map['advancedMachineFeatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatabaseInstanceSettingsAdvancedMachineFeatures.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      availabilityType: (() { final guardedValue = map['availabilityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backupConfiguration: (() { final guardedValue = map['backupConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatabaseInstanceSettingsBackupConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      collation: (() { final guardedValue = map['collation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionPoolConfigs: (() { final guardedValue = map['connectionPoolConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DatabaseInstanceSettingsConnectionPoolConfig>(guardedValue, (value) => DatabaseInstanceSettingsConnectionPoolConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      connectorEnforcement: (() { final guardedValue = map['connectorEnforcement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataCacheConfig: (() { final guardedValue = map['dataCacheConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatabaseInstanceSettingsDataCacheConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataDiskProvisionedIops: (() { final guardedValue = map['dataDiskProvisionedIops']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      dataDiskProvisionedThroughput: (() { final guardedValue = map['dataDiskProvisionedThroughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      databaseFlags: (() { final guardedValue = map['databaseFlags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DatabaseInstanceSettingsDatabaseFlag>(guardedValue, (value) => DatabaseInstanceSettingsDatabaseFlag.fromMap((value as Map).cast<String, dynamic>()))); })(),
      deletionProtectionEnabled: (() { final guardedValue = map['deletionProtectionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      denyMaintenancePeriod: (() { final guardedValue = map['denyMaintenancePeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatabaseInstanceSettingsDenyMaintenancePeriod.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      diskAutoresize: (() { final guardedValue = map['diskAutoresize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      diskAutoresizeLimit: (() { final guardedValue = map['diskAutoresizeLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      diskSize: (() { final guardedValue = map['diskSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      diskType: (() { final guardedValue = map['diskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      edition: (() { final guardedValue = map['edition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveAvailabilityType: (() { final guardedValue = map['effectiveAvailabilityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableDataplexIntegration: (() { final guardedValue = map['enableDataplexIntegration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableGoogleMlIntegration: (() { final guardedValue = map['enableGoogleMlIntegration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      finalBackupConfig: (() { final guardedValue = map['finalBackupConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatabaseInstanceSettingsFinalBackupConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      insightsConfig: (() { final guardedValue = map['insightsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatabaseInstanceSettingsInsightsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipConfiguration: (() { final guardedValue = map['ipConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatabaseInstanceSettingsIpConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      locationPreference: (() { final guardedValue = map['locationPreference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatabaseInstanceSettingsLocationPreference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maintenanceWindow: (() { final guardedValue = map['maintenanceWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatabaseInstanceSettingsMaintenanceWindow.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      passwordValidationPolicy: (() { final guardedValue = map['passwordValidationPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatabaseInstanceSettingsPasswordValidationPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pricingPlan: (() { final guardedValue = map['pricingPlan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      readPoolAutoScaleConfig: (() { final guardedValue = map['readPoolAutoScaleConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatabaseInstanceSettingsReadPoolAutoScaleConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retainBackupsOnDelete: (() { final guardedValue = map['retainBackupsOnDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sqlServerAuditConfig: (() { final guardedValue = map['sqlServerAuditConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatabaseInstanceSettingsSqlServerAuditConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tier: pulumi.Input.fromValue(map['tier'] as String),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userLabels: (() { final guardedValue = map['userLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

