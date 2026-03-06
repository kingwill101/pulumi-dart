// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_sql_settings_activation_policy_datamigration_v1beta1.dart';
import 'cloud_sql_settings_data_disk_type_datamigration_v1beta1.dart';
import 'cloud_sql_settings_database_version_datamigration_v1beta1.dart';
import 'sql_ip_config_datamigration_v1beta1.dart';

/// Settings for creating a Cloud SQL database instance.
class CloudSqlSettingsDatamigrationV1beta1 {
  /// The activation policy specifies when the instance is activated; it is applicable only when the instance state is 'RUNNABLE'. Valid values: 'ALWAYS': The instance is on, and remains so even in the absence of connection requests. `NEVER`: The instance is off; it is not activated, even if a connection request arrives.
  final pulumi.Input<CloudSqlSettingsActivationPolicyDatamigrationV1beta1>? activationPolicy;
  /// [default: ON] If you enable this setting, Cloud SQL checks your available storage every 30 seconds. If the available storage falls below a threshold size, Cloud SQL automatically adds additional storage capacity. If the available storage repeatedly falls below the threshold size, Cloud SQL continues to add storage until it reaches the maximum of 30 TB.
  final pulumi.Input<bool>? autoStorageIncrease;
  /// The storage capacity available to the database, in GB. The minimum (and default) size is 10GB.
  final pulumi.Input<String>? dataDiskSizeGb;
  /// The type of storage: `PD_SSD` (default) or `PD_HDD`.
  final pulumi.Input<CloudSqlSettingsDataDiskTypeDatamigrationV1beta1>? dataDiskType;
  /// The database flags passed to the Cloud SQL instance at startup. An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  final pulumi.Input<Map<String, String>>? databaseFlags;
  /// The database engine type and version.
  final pulumi.Input<CloudSqlSettingsDatabaseVersionDatamigrationV1beta1>? databaseVersion;
  /// The settings for IP Management. This allows to enable or disable the instance IP and manage which external networks can connect to the instance. The IPv4 address cannot be disabled.
  final pulumi.Input<SqlIpConfigDatamigrationV1beta1>? ipConfig;
  /// Input only. Initial root password.
  final pulumi.Input<String>? rootPassword;
  /// The Database Migration Service source connection profile ID, in the format: `projects/my_project_name/locations/us-central1/connectionProfiles/connection_profile_ID`
  final pulumi.Input<String>? sourceId;
  /// The maximum size to which storage capacity can be automatically increased. The default value is 0, which specifies that there is no limit.
  final pulumi.Input<String>? storageAutoResizeLimit;
  /// The tier (or machine type) for this instance, for example: `db-n1-standard-1` (MySQL instances). For more information, see [Cloud SQL Instance Settings](https://cloud.google.com/sql/docs/mysql/instance-settings).
  final pulumi.Input<String>? tier;
  /// The resource labels for a Cloud SQL instance to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "18kg", "count": "3" }`.
  final pulumi.Input<Map<String, String>>? userLabels;
  /// The Google Cloud Platform zone where your Cloud SQL database instance is located.
  final pulumi.Input<String>? zone;

  /// Creates a new [CloudSqlSettingsDatamigrationV1beta1].
  /// [activationPolicy] The activation policy specifies when the instance is activated; it is applicable only when the instance state is 'RUNNABLE'. Valid values: 'ALWAYS': The instance is on, and remains so even in the absence of connection requests. `NEVER`: The instance is off; it is not activated, even if a connection request arrives.
  /// [autoStorageIncrease] [default: ON] If you enable this setting, Cloud SQL checks your available storage every 30 seconds. If the available storage falls below a threshold size, Cloud SQL automatically adds additional storage capacity. If the available storage repeatedly falls below the threshold size, Cloud SQL continues to add storage until it reaches the maximum of 30 TB.
  /// [dataDiskSizeGb] The storage capacity available to the database, in GB. The minimum (and default) size is 10GB.
  /// [dataDiskType] The type of storage: `PD_SSD` (default) or `PD_HDD`.
  /// [databaseFlags] The database flags passed to the Cloud SQL instance at startup. An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  /// [databaseVersion] The database engine type and version.
  /// [ipConfig] The settings for IP Management. This allows to enable or disable the instance IP and manage which external networks can connect to the instance. The IPv4 address cannot be disabled.
  /// [rootPassword] Input only. Initial root password.
  /// [sourceId] The Database Migration Service source connection profile ID, in the format: `projects/my_project_name/locations/us-central1/connectionProfiles/connection_profile_ID`
  /// [storageAutoResizeLimit] The maximum size to which storage capacity can be automatically increased. The default value is 0, which specifies that there is no limit.
  /// [tier] The tier (or machine type) for this instance, for example: `db-n1-standard-1` (MySQL instances). For more information, see [Cloud SQL Instance Settings](https://cloud.google.com/sql/docs/mysql/instance-settings).
  /// [userLabels] The resource labels for a Cloud SQL instance to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "18kg", "count": "3" }`.
  /// [zone] The Google Cloud Platform zone where your Cloud SQL database instance is located.
  const CloudSqlSettingsDatamigrationV1beta1({
    this.activationPolicy,
    this.autoStorageIncrease,
    this.dataDiskSizeGb,
    this.dataDiskType,
    this.databaseFlags,
    this.databaseVersion,
    this.ipConfig,
    this.rootPassword,
    this.sourceId,
    this.storageAutoResizeLimit,
    this.tier,
    this.userLabels,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationPolicy': ?pulumi.Input.mapOptionalInputValue<CloudSqlSettingsActivationPolicyDatamigrationV1beta1, String>(activationPolicy, (value) => value.wireValue),
      'autoStorageIncrease': ?autoStorageIncrease,
      'dataDiskSizeGb': ?dataDiskSizeGb,
      'dataDiskType': ?pulumi.Input.mapOptionalInputValue<CloudSqlSettingsDataDiskTypeDatamigrationV1beta1, String>(dataDiskType, (value) => value.wireValue),
      'databaseFlags': ?databaseFlags,
      'databaseVersion': ?pulumi.Input.mapOptionalInputValue<CloudSqlSettingsDatabaseVersionDatamigrationV1beta1, String>(databaseVersion, (value) => value.wireValue),
      'ipConfig': ?pulumi.Input.mapOptionalInputValue<SqlIpConfigDatamigrationV1beta1, Map<String, dynamic>>(ipConfig, (value) => value.toMap()),
      'rootPassword': ?rootPassword,
      'sourceId': ?sourceId,
      'storageAutoResizeLimit': ?storageAutoResizeLimit,
      'tier': ?tier,
      'userLabels': ?userLabels,
      'zone': ?zone,
    };
  }

  factory CloudSqlSettingsDatamigrationV1beta1.fromMap(Map<String, dynamic> map) {
    return CloudSqlSettingsDatamigrationV1beta1(
      activationPolicy: (() { final guardedValue = map['activationPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudSqlSettingsActivationPolicyDatamigrationV1beta1.fromValue(guardedValue as String)); })(),
      autoStorageIncrease: (() { final guardedValue = map['autoStorageIncrease']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dataDiskSizeGb: (() { final guardedValue = map['dataDiskSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataDiskType: (() { final guardedValue = map['dataDiskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudSqlSettingsDataDiskTypeDatamigrationV1beta1.fromValue(guardedValue as String)); })(),
      databaseFlags: (() { final guardedValue = map['databaseFlags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      databaseVersion: (() { final guardedValue = map['databaseVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudSqlSettingsDatabaseVersionDatamigrationV1beta1.fromValue(guardedValue as String)); })(),
      ipConfig: (() { final guardedValue = map['ipConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SqlIpConfigDatamigrationV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rootPassword: (() { final guardedValue = map['rootPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceId: (() { final guardedValue = map['sourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAutoResizeLimit: (() { final guardedValue = map['storageAutoResizeLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userLabels: (() { final guardedValue = map['userLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

