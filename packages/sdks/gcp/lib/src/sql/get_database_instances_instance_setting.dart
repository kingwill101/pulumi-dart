// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_instances_instance_setting_active_directory_config.dart';
import 'get_database_instances_instance_setting_advanced_machine_feature.dart';
import 'get_database_instances_instance_setting_backup_configuration.dart';
import 'get_database_instances_instance_setting_connection_pool_config.dart';
import 'get_database_instances_instance_setting_data_cache_config.dart';
import 'get_database_instances_instance_setting_database_flag.dart';
import 'get_database_instances_instance_setting_deny_maintenance_period.dart';
import 'get_database_instances_instance_setting_final_backup_config.dart';
import 'get_database_instances_instance_setting_insights_config.dart';
import 'get_database_instances_instance_setting_ip_configuration.dart';
import 'get_database_instances_instance_setting_location_preference.dart';
import 'get_database_instances_instance_setting_maintenance_window.dart';
import 'get_database_instances_instance_setting_password_validation_policy.dart';
import 'get_database_instances_instance_setting_read_pool_auto_scale_config.dart';
import 'get_database_instances_instance_setting_sql_server_audit_config.dart';

class GetDatabaseInstancesInstanceSetting {
  /// This specifies when the instance should be active. Can be either ALWAYS, NEVER or ON_DEMAND.
  final pulumi.Input<String> activationPolicy;
  final pulumi.Input<List<GetDatabaseInstancesInstanceSettingActiveDirectoryConfig>> activeDirectoryConfigs;
  final pulumi.Input<List<GetDatabaseInstancesInstanceSettingAdvancedMachineFeature>> advancedMachineFeatures;
  /// The availability type of the Cloud SQL instance, high availability
  /// (REGIONAL) or single zone (ZONAL). For all instances, ensure that
  /// settings.backup_configuration.enabled is set to true.
  /// For MySQL instances, ensure that settings.backup_configuration.binary_log_enabled is set to true.
  /// For Postgres instances, ensure that settings.backup_configuration.point_in_time_recovery_enabled
  /// is set to true. Defaults to ZONAL.
  /// For read pool instances, this field is read-only. The availability type is changed by specifying
  /// the number of nodes (node_count).
  final pulumi.Input<String> availabilityType;
  final pulumi.Input<List<GetDatabaseInstancesInstanceSettingBackupConfiguration>> backupConfigurations;
  /// The name of server instance collation.
  final pulumi.Input<String> collation;
  /// The managed connection pool setting for a Cloud SQL instance.
  final pulumi.Input<List<GetDatabaseInstancesInstanceSettingConnectionPoolConfig>> connectionPoolConfigs;
  /// Enables the enforcement of Cloud SQL Auth Proxy or Cloud SQL connectors for all the connections. If enabled, all the direct connections are rejected.
  final pulumi.Input<String> connectorEnforcement;
  /// Data cache configurations.
  final pulumi.Input<List<GetDatabaseInstancesInstanceSettingDataCacheConfig>> dataCacheConfigs;
  /// Provisioned number of I/O operations per second for the data disk. This field is only used for HYPERDISK_BALANCED disk types.
  final pulumi.Input<int> dataDiskProvisionedIops;
  /// Provisioned throughput measured in MiB per second for the data disk. This field is only used for HYPERDISK_BALANCED disk types.
  final pulumi.Input<int> dataDiskProvisionedThroughput;
  final pulumi.Input<List<GetDatabaseInstancesInstanceSettingDatabaseFlag>> databaseFlags;
  /// Configuration to protect against accidental instance deletion.
  final pulumi.Input<bool> deletionProtectionEnabled;
  final pulumi.Input<List<GetDatabaseInstancesInstanceSettingDenyMaintenancePeriod>> denyMaintenancePeriods;
  /// Enables auto-resizing of the storage size. Defaults to true.
  final pulumi.Input<bool> diskAutoresize;
  /// The maximum size, in GB, to which storage capacity can be automatically increased. The default value is 0, which specifies that there is no limit.
  final pulumi.Input<int> diskAutoresizeLimit;
  /// The size of data disk, in GB. Size of a running instance cannot be reduced but can be increased. The minimum value is 10GB for PD_SSD, PD_HDD and 20GB for HYPERDISK_BALANCED.
  final pulumi.Input<int> diskSize;
  /// The type of supported data disk is tier dependent and can be PD_SSD or PD_HDD or HYPERDISK_BALANCED.
  final pulumi.Input<String> diskType;
  /// The edition of the instance, can be ENTERPRISE or ENTERPRISE_PLUS.
  final pulumi.Input<String> edition;
  /// The availability type of the Cloud SQL instance, high availability
  /// (REGIONAL) or single zone (ZONAL). This field always contains the value that is reported by the
  /// API (for read pools, effective_availability_type may differ from availability_type).
  final pulumi.Input<String> effectiveAvailabilityType;
  /// Enables Dataplex Integration.
  final pulumi.Input<bool> enableDataplexIntegration;
  /// Enables Vertex AI Integration.
  final pulumi.Input<bool> enableGoogleMlIntegration;
  /// Config used to determine the final backup settings for the instance
  final pulumi.Input<List<GetDatabaseInstancesInstanceSettingFinalBackupConfig>> finalBackupConfigs;
  /// Configuration of Query Insights.
  final pulumi.Input<List<GetDatabaseInstancesInstanceSettingInsightsConfig>> insightsConfigs;
  final pulumi.Input<List<GetDatabaseInstancesInstanceSettingIpConfiguration>> ipConfigurations;
  final pulumi.Input<List<GetDatabaseInstancesInstanceSettingLocationPreference>> locationPreferences;
  /// Declares a one-hour maintenance window when an Instance can automatically restart to apply updates. The maintenance window is specified in UTC time.
  final pulumi.Input<List<GetDatabaseInstancesInstanceSettingMaintenanceWindow>> maintenanceWindows;
  final pulumi.Input<List<GetDatabaseInstancesInstanceSettingPasswordValidationPolicy>> passwordValidationPolicies;
  /// Pricing plan for this instance, can only be PER_USE.
  final pulumi.Input<String> pricingPlan;
  /// Configuration of Read Pool Auto Scale.
  final pulumi.Input<List<GetDatabaseInstancesInstanceSettingReadPoolAutoScaleConfig>> readPoolAutoScaleConfigs;
  /// When this parameter is set to true, Cloud SQL retains backups of the instance even after the instance is deleted. The ON_DEMAND backup will be retained until customer deletes the backup or the project. The AUTOMATED backup will be retained based on the backups retention setting.
  final pulumi.Input<bool> retainBackupsOnDelete;
  final pulumi.Input<List<GetDatabaseInstancesInstanceSettingSqlServerAuditConfig>> sqlServerAuditConfigs;
  /// To filter out the Cloud SQL instances based on the tier(or machine type) of the database instances.
  final pulumi.Input<String> tier;
  /// The time_zone to be used by the database engine (supported only for SQL Server), in SQL Server timezone format.
  final pulumi.Input<String> timeZone;
  /// A set of key/value user label pairs to assign to the instance.
  final pulumi.Input<Map<String, String>> userLabels;
  /// Used to make sure changes to the settings block are atomic.
  final pulumi.Input<int> version;

  /// Creates a new [GetDatabaseInstancesInstanceSetting].
  /// [activationPolicy] This specifies when the instance should be active. Can be either ALWAYS, NEVER or ON_DEMAND.
  /// [activeDirectoryConfigs] Required.
  /// [advancedMachineFeatures] Required.
  /// [availabilityType] The availability type of the Cloud SQL instance, high availability
  /// [backupConfigurations] Required.
  /// [collation] The name of server instance collation.
  /// [connectionPoolConfigs] The managed connection pool setting for a Cloud SQL instance.
  /// [connectorEnforcement] Enables the enforcement of Cloud SQL Auth Proxy or Cloud SQL connectors for all the connections. If enabled, all the direct connections are rejected.
  /// [dataCacheConfigs] Data cache configurations.
  /// [dataDiskProvisionedIops] Provisioned number of I/O operations per second for the data disk. This field is only used for HYPERDISK_BALANCED disk types.
  /// [dataDiskProvisionedThroughput] Provisioned throughput measured in MiB per second for the data disk. This field is only used for HYPERDISK_BALANCED disk types.
  /// [databaseFlags] Required.
  /// [deletionProtectionEnabled] Configuration to protect against accidental instance deletion.
  /// [denyMaintenancePeriods] Required.
  /// [diskAutoresize] Enables auto-resizing of the storage size. Defaults to true.
  /// [diskAutoresizeLimit] The maximum size, in GB, to which storage capacity can be automatically increased. The default value is 0, which specifies that there is no limit.
  /// [diskSize] The size of data disk, in GB. Size of a running instance cannot be reduced but can be increased. The minimum value is 10GB for PD_SSD, PD_HDD and 20GB for HYPERDISK_BALANCED.
  /// [diskType] The type of supported data disk is tier dependent and can be PD_SSD or PD_HDD or HYPERDISK_BALANCED.
  /// [edition] The edition of the instance, can be ENTERPRISE or ENTERPRISE_PLUS.
  /// [effectiveAvailabilityType] The availability type of the Cloud SQL instance, high availability
  /// [enableDataplexIntegration] Enables Dataplex Integration.
  /// [enableGoogleMlIntegration] Enables Vertex AI Integration.
  /// [finalBackupConfigs] Config used to determine the final backup settings for the instance
  /// [insightsConfigs] Configuration of Query Insights.
  /// [ipConfigurations] Required.
  /// [locationPreferences] Required.
  /// [maintenanceWindows] Declares a one-hour maintenance window when an Instance can automatically restart to apply updates. The maintenance window is specified in UTC time.
  /// [passwordValidationPolicies] Required.
  /// [pricingPlan] Pricing plan for this instance, can only be PER_USE.
  /// [readPoolAutoScaleConfigs] Configuration of Read Pool Auto Scale.
  /// [retainBackupsOnDelete] When this parameter is set to true, Cloud SQL retains backups of the instance even after the instance is deleted. The ON_DEMAND backup will be retained until customer deletes the backup or the project. The AUTOMATED backup will be retained based on the backups retention setting.
  /// [sqlServerAuditConfigs] Required.
  /// [tier] To filter out the Cloud SQL instances based on the tier(or machine type) of the database instances.
  /// [timeZone] The time_zone to be used by the database engine (supported only for SQL Server), in SQL Server timezone format.
  /// [userLabels] A set of key/value user label pairs to assign to the instance.
  /// [version] Used to make sure changes to the settings block are atomic.
  GetDatabaseInstancesInstanceSetting({
    required this.activationPolicy,
    required this.activeDirectoryConfigs,
    required this.advancedMachineFeatures,
    required this.availabilityType,
    required this.backupConfigurations,
    required this.collation,
    required this.connectionPoolConfigs,
    required this.connectorEnforcement,
    required this.dataCacheConfigs,
    required this.dataDiskProvisionedIops,
    required this.dataDiskProvisionedThroughput,
    required this.databaseFlags,
    required this.deletionProtectionEnabled,
    required this.denyMaintenancePeriods,
    required this.diskAutoresize,
    required this.diskAutoresizeLimit,
    required this.diskSize,
    required this.diskType,
    required this.edition,
    required this.effectiveAvailabilityType,
    required this.enableDataplexIntegration,
    required this.enableGoogleMlIntegration,
    required this.finalBackupConfigs,
    required this.insightsConfigs,
    required this.ipConfigurations,
    required this.locationPreferences,
    required this.maintenanceWindows,
    required this.passwordValidationPolicies,
    required this.pricingPlan,
    required this.readPoolAutoScaleConfigs,
    required this.retainBackupsOnDelete,
    required this.sqlServerAuditConfigs,
    required this.tier,
    required this.timeZone,
    required this.userLabels,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationPolicy': activationPolicy,
      'activeDirectoryConfigs': pulumi.Input.mapInputValue<List<GetDatabaseInstancesInstanceSettingActiveDirectoryConfig>, List<Map<String, dynamic>>>(activeDirectoryConfigs, (value) => pulumi.Input.encodeList<GetDatabaseInstancesInstanceSettingActiveDirectoryConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'advancedMachineFeatures': pulumi.Input.mapInputValue<List<GetDatabaseInstancesInstanceSettingAdvancedMachineFeature>, List<Map<String, dynamic>>>(advancedMachineFeatures, (value) => pulumi.Input.encodeList<GetDatabaseInstancesInstanceSettingAdvancedMachineFeature, Map<String, dynamic>>(value, (value) => value.toMap())),
      'availabilityType': availabilityType,
      'backupConfigurations': pulumi.Input.mapInputValue<List<GetDatabaseInstancesInstanceSettingBackupConfiguration>, List<Map<String, dynamic>>>(backupConfigurations, (value) => pulumi.Input.encodeList<GetDatabaseInstancesInstanceSettingBackupConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'collation': collation,
      'connectionPoolConfigs': pulumi.Input.mapInputValue<List<GetDatabaseInstancesInstanceSettingConnectionPoolConfig>, List<Map<String, dynamic>>>(connectionPoolConfigs, (value) => pulumi.Input.encodeList<GetDatabaseInstancesInstanceSettingConnectionPoolConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'connectorEnforcement': connectorEnforcement,
      'dataCacheConfigs': pulumi.Input.mapInputValue<List<GetDatabaseInstancesInstanceSettingDataCacheConfig>, List<Map<String, dynamic>>>(dataCacheConfigs, (value) => pulumi.Input.encodeList<GetDatabaseInstancesInstanceSettingDataCacheConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataDiskProvisionedIops': dataDiskProvisionedIops,
      'dataDiskProvisionedThroughput': dataDiskProvisionedThroughput,
      'databaseFlags': pulumi.Input.mapInputValue<List<GetDatabaseInstancesInstanceSettingDatabaseFlag>, List<Map<String, dynamic>>>(databaseFlags, (value) => pulumi.Input.encodeList<GetDatabaseInstancesInstanceSettingDatabaseFlag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deletionProtectionEnabled': deletionProtectionEnabled,
      'denyMaintenancePeriods': pulumi.Input.mapInputValue<List<GetDatabaseInstancesInstanceSettingDenyMaintenancePeriod>, List<Map<String, dynamic>>>(denyMaintenancePeriods, (value) => pulumi.Input.encodeList<GetDatabaseInstancesInstanceSettingDenyMaintenancePeriod, Map<String, dynamic>>(value, (value) => value.toMap())),
      'diskAutoresize': diskAutoresize,
      'diskAutoresizeLimit': diskAutoresizeLimit,
      'diskSize': diskSize,
      'diskType': diskType,
      'edition': edition,
      'effectiveAvailabilityType': effectiveAvailabilityType,
      'enableDataplexIntegration': enableDataplexIntegration,
      'enableGoogleMlIntegration': enableGoogleMlIntegration,
      'finalBackupConfigs': pulumi.Input.mapInputValue<List<GetDatabaseInstancesInstanceSettingFinalBackupConfig>, List<Map<String, dynamic>>>(finalBackupConfigs, (value) => pulumi.Input.encodeList<GetDatabaseInstancesInstanceSettingFinalBackupConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'insightsConfigs': pulumi.Input.mapInputValue<List<GetDatabaseInstancesInstanceSettingInsightsConfig>, List<Map<String, dynamic>>>(insightsConfigs, (value) => pulumi.Input.encodeList<GetDatabaseInstancesInstanceSettingInsightsConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipConfigurations': pulumi.Input.mapInputValue<List<GetDatabaseInstancesInstanceSettingIpConfiguration>, List<Map<String, dynamic>>>(ipConfigurations, (value) => pulumi.Input.encodeList<GetDatabaseInstancesInstanceSettingIpConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'locationPreferences': pulumi.Input.mapInputValue<List<GetDatabaseInstancesInstanceSettingLocationPreference>, List<Map<String, dynamic>>>(locationPreferences, (value) => pulumi.Input.encodeList<GetDatabaseInstancesInstanceSettingLocationPreference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maintenanceWindows': pulumi.Input.mapInputValue<List<GetDatabaseInstancesInstanceSettingMaintenanceWindow>, List<Map<String, dynamic>>>(maintenanceWindows, (value) => pulumi.Input.encodeList<GetDatabaseInstancesInstanceSettingMaintenanceWindow, Map<String, dynamic>>(value, (value) => value.toMap())),
      'passwordValidationPolicies': pulumi.Input.mapInputValue<List<GetDatabaseInstancesInstanceSettingPasswordValidationPolicy>, List<Map<String, dynamic>>>(passwordValidationPolicies, (value) => pulumi.Input.encodeList<GetDatabaseInstancesInstanceSettingPasswordValidationPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pricingPlan': pricingPlan,
      'readPoolAutoScaleConfigs': pulumi.Input.mapInputValue<List<GetDatabaseInstancesInstanceSettingReadPoolAutoScaleConfig>, List<Map<String, dynamic>>>(readPoolAutoScaleConfigs, (value) => pulumi.Input.encodeList<GetDatabaseInstancesInstanceSettingReadPoolAutoScaleConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'retainBackupsOnDelete': retainBackupsOnDelete,
      'sqlServerAuditConfigs': pulumi.Input.mapInputValue<List<GetDatabaseInstancesInstanceSettingSqlServerAuditConfig>, List<Map<String, dynamic>>>(sqlServerAuditConfigs, (value) => pulumi.Input.encodeList<GetDatabaseInstancesInstanceSettingSqlServerAuditConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tier': tier,
      'timeZone': timeZone,
      'userLabels': userLabels,
      'version': version,
    };
  }

  factory GetDatabaseInstancesInstanceSetting.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstancesInstanceSetting(
      activationPolicy: pulumi.Input.fromValue(map['activationPolicy'] as String),
      activeDirectoryConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDatabaseInstancesInstanceSettingActiveDirectoryConfig>(map['activeDirectoryConfigs']!, (value) => GetDatabaseInstancesInstanceSettingActiveDirectoryConfig.fromMap((value as Map).cast<String, dynamic>()))),
      advancedMachineFeatures: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDatabaseInstancesInstanceSettingAdvancedMachineFeature>(map['advancedMachineFeatures']!, (value) => GetDatabaseInstancesInstanceSettingAdvancedMachineFeature.fromMap((value as Map).cast<String, dynamic>()))),
      availabilityType: pulumi.Input.fromValue(map['availabilityType'] as String),
      backupConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDatabaseInstancesInstanceSettingBackupConfiguration>(map['backupConfigurations']!, (value) => GetDatabaseInstancesInstanceSettingBackupConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      collation: pulumi.Input.fromValue(map['collation'] as String),
      connectionPoolConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDatabaseInstancesInstanceSettingConnectionPoolConfig>(map['connectionPoolConfigs']!, (value) => GetDatabaseInstancesInstanceSettingConnectionPoolConfig.fromMap((value as Map).cast<String, dynamic>()))),
      connectorEnforcement: pulumi.Input.fromValue(map['connectorEnforcement'] as String),
      dataCacheConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDatabaseInstancesInstanceSettingDataCacheConfig>(map['dataCacheConfigs']!, (value) => GetDatabaseInstancesInstanceSettingDataCacheConfig.fromMap((value as Map).cast<String, dynamic>()))),
      dataDiskProvisionedIops: pulumi.Input.fromValue(map['dataDiskProvisionedIops'] as int),
      dataDiskProvisionedThroughput: pulumi.Input.fromValue(map['dataDiskProvisionedThroughput'] as int),
      databaseFlags: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDatabaseInstancesInstanceSettingDatabaseFlag>(map['databaseFlags']!, (value) => GetDatabaseInstancesInstanceSettingDatabaseFlag.fromMap((value as Map).cast<String, dynamic>()))),
      deletionProtectionEnabled: pulumi.Input.fromValue(map['deletionProtectionEnabled'] as bool),
      denyMaintenancePeriods: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDatabaseInstancesInstanceSettingDenyMaintenancePeriod>(map['denyMaintenancePeriods']!, (value) => GetDatabaseInstancesInstanceSettingDenyMaintenancePeriod.fromMap((value as Map).cast<String, dynamic>()))),
      diskAutoresize: pulumi.Input.fromValue(map['diskAutoresize'] as bool),
      diskAutoresizeLimit: pulumi.Input.fromValue(map['diskAutoresizeLimit'] as int),
      diskSize: pulumi.Input.fromValue(map['diskSize'] as int),
      diskType: pulumi.Input.fromValue(map['diskType'] as String),
      edition: pulumi.Input.fromValue(map['edition'] as String),
      effectiveAvailabilityType: pulumi.Input.fromValue(map['effectiveAvailabilityType'] as String),
      enableDataplexIntegration: pulumi.Input.fromValue(map['enableDataplexIntegration'] as bool),
      enableGoogleMlIntegration: pulumi.Input.fromValue(map['enableGoogleMlIntegration'] as bool),
      finalBackupConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDatabaseInstancesInstanceSettingFinalBackupConfig>(map['finalBackupConfigs']!, (value) => GetDatabaseInstancesInstanceSettingFinalBackupConfig.fromMap((value as Map).cast<String, dynamic>()))),
      insightsConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDatabaseInstancesInstanceSettingInsightsConfig>(map['insightsConfigs']!, (value) => GetDatabaseInstancesInstanceSettingInsightsConfig.fromMap((value as Map).cast<String, dynamic>()))),
      ipConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDatabaseInstancesInstanceSettingIpConfiguration>(map['ipConfigurations']!, (value) => GetDatabaseInstancesInstanceSettingIpConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      locationPreferences: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDatabaseInstancesInstanceSettingLocationPreference>(map['locationPreferences']!, (value) => GetDatabaseInstancesInstanceSettingLocationPreference.fromMap((value as Map).cast<String, dynamic>()))),
      maintenanceWindows: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDatabaseInstancesInstanceSettingMaintenanceWindow>(map['maintenanceWindows']!, (value) => GetDatabaseInstancesInstanceSettingMaintenanceWindow.fromMap((value as Map).cast<String, dynamic>()))),
      passwordValidationPolicies: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDatabaseInstancesInstanceSettingPasswordValidationPolicy>(map['passwordValidationPolicies']!, (value) => GetDatabaseInstancesInstanceSettingPasswordValidationPolicy.fromMap((value as Map).cast<String, dynamic>()))),
      pricingPlan: pulumi.Input.fromValue(map['pricingPlan'] as String),
      readPoolAutoScaleConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDatabaseInstancesInstanceSettingReadPoolAutoScaleConfig>(map['readPoolAutoScaleConfigs']!, (value) => GetDatabaseInstancesInstanceSettingReadPoolAutoScaleConfig.fromMap((value as Map).cast<String, dynamic>()))),
      retainBackupsOnDelete: pulumi.Input.fromValue(map['retainBackupsOnDelete'] as bool),
      sqlServerAuditConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDatabaseInstancesInstanceSettingSqlServerAuditConfig>(map['sqlServerAuditConfigs']!, (value) => GetDatabaseInstancesInstanceSettingSqlServerAuditConfig.fromMap((value as Map).cast<String, dynamic>()))),
      tier: pulumi.Input.fromValue(map['tier'] as String),
      timeZone: pulumi.Input.fromValue(map['timeZone'] as String),
      userLabels: pulumi.Input.fromValue((map['userLabels'] as Map).cast<String, String>()),
      version: pulumi.Input.fromValue(map['version'] as int),
    );
  }
}

