// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_sql_settings_activation_policy.dart';
import 'cloud_sql_settings_availability_type.dart';
import 'cloud_sql_settings_data_disk_type.dart';
import 'cloud_sql_settings_database_version.dart';
import 'cloud_sql_settings_edition.dart';
import 'data_cache_config.dart';
import 'sql_ip_config.dart';

/// Settings for creating a Cloud SQL database instance.
class CloudSqlSettings {
  /// The activation policy specifies when the instance is activated; it is applicable only when the instance state is 'RUNNABLE'. Valid values: 'ALWAYS': The instance is on, and remains so even in the absence of connection requests. `NEVER`: The instance is off; it is not activated, even if a connection request arrives.
  final pulumi.Input<CloudSqlSettingsActivationPolicy>? activationPolicy;
  /// [default: ON] If you enable this setting, Cloud SQL checks your available storage every 30 seconds. If the available storage falls below a threshold size, Cloud SQL automatically adds additional storage capacity. If the available storage repeatedly falls below the threshold size, Cloud SQL continues to add storage until it reaches the maximum of 30 TB.
  final pulumi.Input<bool>? autoStorageIncrease;
  /// Optional. Availability type. Potential values: * `ZONAL`: The instance serves data from only one zone. Outages in that zone affect data availability. * `REGIONAL`: The instance can serve data from more than one zone in a region (it is highly available).
  final pulumi.Input<CloudSqlSettingsAvailabilityType>? availabilityType;
  /// The KMS key name used for the csql instance.
  final pulumi.Input<String>? cmekKeyName;
  /// The Cloud SQL default instance level collation.
  final pulumi.Input<String>? collation;
  /// Optional. Data cache is an optional feature available for Cloud SQL for MySQL Enterprise Plus edition only. For more information on data cache, see [Data cache overview](https://cloud.google.com/sql/help/mysql-data-cache) in Cloud SQL documentation.
  final pulumi.Input<DataCacheConfig>? dataCacheConfig;
  /// The storage capacity available to the database, in GB. The minimum (and default) size is 10GB.
  final pulumi.Input<String>? dataDiskSizeGb;
  /// The type of storage: `PD_SSD` (default) or `PD_HDD`.
  final pulumi.Input<CloudSqlSettingsDataDiskType>? dataDiskType;
  /// The database flags passed to the Cloud SQL instance at startup. An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  final pulumi.Input<Map<String, String>>? databaseFlags;
  /// The database engine type and version.
  final pulumi.Input<CloudSqlSettingsDatabaseVersion>? databaseVersion;
  /// Optional. The edition of the given Cloud SQL instance.
  final pulumi.Input<CloudSqlSettingsEdition>? edition;
  /// The settings for IP Management. This allows to enable or disable the instance IP and manage which external networks can connect to the instance. The IPv4 address cannot be disabled.
  final pulumi.Input<SqlIpConfig>? ipConfig;
  /// Input only. Initial root password.
  final pulumi.Input<String>? rootPassword;
  /// Optional. The Google Cloud Platform zone where the failover Cloud SQL database instance is located. Used when the Cloud SQL database availability type is REGIONAL (i.e. multiple zones / highly available).
  final pulumi.Input<String>? secondaryZone;
  /// The Database Migration Service source connection profile ID, in the format: `projects/my_project_name/locations/us-central1/connectionProfiles/connection_profile_ID`
  final pulumi.Input<String>? sourceId;
  /// The maximum size to which storage capacity can be automatically increased. The default value is 0, which specifies that there is no limit.
  final pulumi.Input<String>? storageAutoResizeLimit;
  /// The tier (or machine type) for this instance, for example: `db-n1-standard-1` (MySQL instances) or `db-custom-1-3840` (PostgreSQL instances). For more information, see [Cloud SQL Instance Settings](https://cloud.google.com/sql/docs/mysql/instance-settings).
  final pulumi.Input<String>? tier;
  /// The resource labels for a Cloud SQL instance to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "18kg", "count": "3" }`.
  final pulumi.Input<Map<String, String>>? userLabels;
  /// The Google Cloud Platform zone where your Cloud SQL database instance is located.
  final pulumi.Input<String>? zone;

  /// Creates a new [CloudSqlSettings].
  /// [activationPolicy] The activation policy specifies when the instance is activated; it is applicable only when the instance state is 'RUNNABLE'. Valid values: 'ALWAYS': The instance is on, and remains so even in the absence of connection requests. `NEVER`: The instance is off; it is not activated, even if a connection request arrives.
  /// [autoStorageIncrease] [default: ON] If you enable this setting, Cloud SQL checks your available storage every 30 seconds. If the available storage falls below a threshold size, Cloud SQL automatically adds additional storage capacity. If the available storage repeatedly falls below the threshold size, Cloud SQL continues to add storage until it reaches the maximum of 30 TB.
  /// [availabilityType] Optional. Availability type. Potential values: * `ZONAL`: The instance serves data from only one zone. Outages in that zone affect data availability. * `REGIONAL`: The instance can serve data from more than one zone in a region (it is highly available).
  /// [cmekKeyName] The KMS key name used for the csql instance.
  /// [collation] The Cloud SQL default instance level collation.
  /// [dataCacheConfig] Optional. Data cache is an optional feature available for Cloud SQL for MySQL Enterprise Plus edition only. For more information on data cache, see [Data cache overview](https://cloud.google.com/sql/help/mysql-data-cache) in Cloud SQL documentation.
  /// [dataDiskSizeGb] The storage capacity available to the database, in GB. The minimum (and default) size is 10GB.
  /// [dataDiskType] The type of storage: `PD_SSD` (default) or `PD_HDD`.
  /// [databaseFlags] The database flags passed to the Cloud SQL instance at startup. An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  /// [databaseVersion] The database engine type and version.
  /// [edition] Optional. The edition of the given Cloud SQL instance.
  /// [ipConfig] The settings for IP Management. This allows to enable or disable the instance IP and manage which external networks can connect to the instance. The IPv4 address cannot be disabled.
  /// [rootPassword] Input only. Initial root password.
  /// [secondaryZone] Optional. The Google Cloud Platform zone where the failover Cloud SQL database instance is located. Used when the Cloud SQL database availability type is REGIONAL (i.e. multiple zones / highly available).
  /// [sourceId] The Database Migration Service source connection profile ID, in the format: `projects/my_project_name/locations/us-central1/connectionProfiles/connection_profile_ID`
  /// [storageAutoResizeLimit] The maximum size to which storage capacity can be automatically increased. The default value is 0, which specifies that there is no limit.
  /// [tier] The tier (or machine type) for this instance, for example: `db-n1-standard-1` (MySQL instances) or `db-custom-1-3840` (PostgreSQL instances). For more information, see [Cloud SQL Instance Settings](https://cloud.google.com/sql/docs/mysql/instance-settings).
  /// [userLabels] The resource labels for a Cloud SQL instance to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "18kg", "count": "3" }`.
  /// [zone] The Google Cloud Platform zone where your Cloud SQL database instance is located.
  const CloudSqlSettings({
    this.activationPolicy,
    this.autoStorageIncrease,
    this.availabilityType,
    this.cmekKeyName,
    this.collation,
    this.dataCacheConfig,
    this.dataDiskSizeGb,
    this.dataDiskType,
    this.databaseFlags,
    this.databaseVersion,
    this.edition,
    this.ipConfig,
    this.rootPassword,
    this.secondaryZone,
    this.sourceId,
    this.storageAutoResizeLimit,
    this.tier,
    this.userLabels,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationPolicy': ?pulumi.Input.mapOptionalInputValue<CloudSqlSettingsActivationPolicy, String>(activationPolicy, (value) => value.wireValue),
      'autoStorageIncrease': ?autoStorageIncrease,
      'availabilityType': ?pulumi.Input.mapOptionalInputValue<CloudSqlSettingsAvailabilityType, String>(availabilityType, (value) => value.wireValue),
      'cmekKeyName': ?cmekKeyName,
      'collation': ?collation,
      'dataCacheConfig': ?pulumi.Input.mapOptionalInputValue<DataCacheConfig, Map<String, dynamic>>(dataCacheConfig, (value) => value.toMap()),
      'dataDiskSizeGb': ?dataDiskSizeGb,
      'dataDiskType': ?pulumi.Input.mapOptionalInputValue<CloudSqlSettingsDataDiskType, String>(dataDiskType, (value) => value.wireValue),
      'databaseFlags': ?databaseFlags,
      'databaseVersion': ?pulumi.Input.mapOptionalInputValue<CloudSqlSettingsDatabaseVersion, String>(databaseVersion, (value) => value.wireValue),
      'edition': ?pulumi.Input.mapOptionalInputValue<CloudSqlSettingsEdition, String>(edition, (value) => value.wireValue),
      'ipConfig': ?pulumi.Input.mapOptionalInputValue<SqlIpConfig, Map<String, dynamic>>(ipConfig, (value) => value.toMap()),
      'rootPassword': ?rootPassword,
      'secondaryZone': ?secondaryZone,
      'sourceId': ?sourceId,
      'storageAutoResizeLimit': ?storageAutoResizeLimit,
      'tier': ?tier,
      'userLabels': ?userLabels,
      'zone': ?zone,
    };
  }

  factory CloudSqlSettings.fromMap(Map<String, dynamic> map) {
    return CloudSqlSettings(
      activationPolicy: (() { final guardedValue = map['activationPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudSqlSettingsActivationPolicy.fromValue(guardedValue as String)); })(),
      autoStorageIncrease: (() { final guardedValue = map['autoStorageIncrease']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      availabilityType: (() { final guardedValue = map['availabilityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudSqlSettingsAvailabilityType.fromValue(guardedValue as String)); })(),
      cmekKeyName: (() { final guardedValue = map['cmekKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      collation: (() { final guardedValue = map['collation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataCacheConfig: (() { final guardedValue = map['dataCacheConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataCacheConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataDiskSizeGb: (() { final guardedValue = map['dataDiskSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataDiskType: (() { final guardedValue = map['dataDiskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudSqlSettingsDataDiskType.fromValue(guardedValue as String)); })(),
      databaseFlags: (() { final guardedValue = map['databaseFlags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      databaseVersion: (() { final guardedValue = map['databaseVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudSqlSettingsDatabaseVersion.fromValue(guardedValue as String)); })(),
      edition: (() { final guardedValue = map['edition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudSqlSettingsEdition.fromValue(guardedValue as String)); })(),
      ipConfig: (() { final guardedValue = map['ipConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SqlIpConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rootPassword: (() { final guardedValue = map['rootPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryZone: (() { final guardedValue = map['secondaryZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceId: (() { final guardedValue = map['sourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAutoResizeLimit: (() { final guardedValue = map['storageAutoResizeLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userLabels: (() { final guardedValue = map['userLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

