// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_ip_config_response_datamigration_v1beta1.dart';

/// Settings for creating a Cloud SQL database instance.
class CloudSqlSettingsResponseDatamigrationV1beta1 {
  /// The activation policy specifies when the instance is activated; it is applicable only when the instance state is 'RUNNABLE'. Valid values: 'ALWAYS': The instance is on, and remains so even in the absence of connection requests. `NEVER`: The instance is off; it is not activated, even if a connection request arrives.
  final pulumi.Input<String> activationPolicy;
  /// [default: ON] If you enable this setting, Cloud SQL checks your available storage every 30 seconds. If the available storage falls below a threshold size, Cloud SQL automatically adds additional storage capacity. If the available storage repeatedly falls below the threshold size, Cloud SQL continues to add storage until it reaches the maximum of 30 TB.
  final pulumi.Input<bool> autoStorageIncrease;
  /// The storage capacity available to the database, in GB. The minimum (and default) size is 10GB.
  final pulumi.Input<String> dataDiskSizeGb;
  /// The type of storage: `PD_SSD` (default) or `PD_HDD`.
  final pulumi.Input<String> dataDiskType;
  /// The database flags passed to the Cloud SQL instance at startup. An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  final pulumi.Input<Map<String, String>> databaseFlags;
  /// The database engine type and version.
  final pulumi.Input<String> databaseVersion;
  /// The settings for IP Management. This allows to enable or disable the instance IP and manage which external networks can connect to the instance. The IPv4 address cannot be disabled.
  final pulumi.Input<SqlIpConfigResponseDatamigrationV1beta1> ipConfig;
  /// Input only. Initial root password.
  final pulumi.Input<String> rootPassword;
  /// Indicates If this connection profile root password is stored.
  final pulumi.Input<bool> rootPasswordSet;
  /// The Database Migration Service source connection profile ID, in the format: `projects/my_project_name/locations/us-central1/connectionProfiles/connection_profile_ID`
  final pulumi.Input<String> sourceId;
  /// The maximum size to which storage capacity can be automatically increased. The default value is 0, which specifies that there is no limit.
  final pulumi.Input<String> storageAutoResizeLimit;
  /// The tier (or machine type) for this instance, for example: `db-n1-standard-1` (MySQL instances). For more information, see [Cloud SQL Instance Settings](https://cloud.google.com/sql/docs/mysql/instance-settings).
  final pulumi.Input<String> tier;
  /// The resource labels for a Cloud SQL instance to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "18kg", "count": "3" }`.
  final pulumi.Input<Map<String, String>> userLabels;
  /// The Google Cloud Platform zone where your Cloud SQL database instance is located.
  final pulumi.Input<String> zone;

  /// Creates a new [CloudSqlSettingsResponseDatamigrationV1beta1].
  /// [activationPolicy] The activation policy specifies when the instance is activated; it is applicable only when the instance state is 'RUNNABLE'. Valid values: 'ALWAYS': The instance is on, and remains so even in the absence of connection requests. `NEVER`: The instance is off; it is not activated, even if a connection request arrives.
  /// [autoStorageIncrease] [default: ON] If you enable this setting, Cloud SQL checks your available storage every 30 seconds. If the available storage falls below a threshold size, Cloud SQL automatically adds additional storage capacity. If the available storage repeatedly falls below the threshold size, Cloud SQL continues to add storage until it reaches the maximum of 30 TB.
  /// [dataDiskSizeGb] The storage capacity available to the database, in GB. The minimum (and default) size is 10GB.
  /// [dataDiskType] The type of storage: `PD_SSD` (default) or `PD_HDD`.
  /// [databaseFlags] The database flags passed to the Cloud SQL instance at startup. An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  /// [databaseVersion] The database engine type and version.
  /// [ipConfig] The settings for IP Management. This allows to enable or disable the instance IP and manage which external networks can connect to the instance. The IPv4 address cannot be disabled.
  /// [rootPassword] Input only. Initial root password.
  /// [rootPasswordSet] Indicates If this connection profile root password is stored.
  /// [sourceId] The Database Migration Service source connection profile ID, in the format: `projects/my_project_name/locations/us-central1/connectionProfiles/connection_profile_ID`
  /// [storageAutoResizeLimit] The maximum size to which storage capacity can be automatically increased. The default value is 0, which specifies that there is no limit.
  /// [tier] The tier (or machine type) for this instance, for example: `db-n1-standard-1` (MySQL instances). For more information, see [Cloud SQL Instance Settings](https://cloud.google.com/sql/docs/mysql/instance-settings).
  /// [userLabels] The resource labels for a Cloud SQL instance to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "18kg", "count": "3" }`.
  /// [zone] The Google Cloud Platform zone where your Cloud SQL database instance is located.
  CloudSqlSettingsResponseDatamigrationV1beta1({
    required this.activationPolicy,
    required this.autoStorageIncrease,
    required this.dataDiskSizeGb,
    required this.dataDiskType,
    required this.databaseFlags,
    required this.databaseVersion,
    required this.ipConfig,
    required this.rootPassword,
    required this.rootPasswordSet,
    required this.sourceId,
    required this.storageAutoResizeLimit,
    required this.tier,
    required this.userLabels,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationPolicy': activationPolicy,
      'autoStorageIncrease': autoStorageIncrease,
      'dataDiskSizeGb': dataDiskSizeGb,
      'dataDiskType': dataDiskType,
      'databaseFlags': databaseFlags,
      'databaseVersion': databaseVersion,
      'ipConfig': pulumi.Input.mapInputValue<SqlIpConfigResponseDatamigrationV1beta1, Map<String, dynamic>>(ipConfig, (value) => value.toMap()),
      'rootPassword': rootPassword,
      'rootPasswordSet': rootPasswordSet,
      'sourceId': sourceId,
      'storageAutoResizeLimit': storageAutoResizeLimit,
      'tier': tier,
      'userLabels': userLabels,
      'zone': zone,
    };
  }

  factory CloudSqlSettingsResponseDatamigrationV1beta1.fromMap(Map<String, dynamic> map) {
    return CloudSqlSettingsResponseDatamigrationV1beta1(
      activationPolicy: (map['activationPolicy'] as String).input(),
      autoStorageIncrease: (map['autoStorageIncrease'] as bool).input(),
      dataDiskSizeGb: (map['dataDiskSizeGb'] as String).input(),
      dataDiskType: (map['dataDiskType'] as String).input(),
      databaseFlags: ((map['databaseFlags'] as Map).cast<String, String>()).input(),
      databaseVersion: (map['databaseVersion'] as String).input(),
      ipConfig: (SqlIpConfigResponseDatamigrationV1beta1.fromMap((map['ipConfig'] as Map).cast<String, dynamic>())).input(),
      rootPassword: (map['rootPassword'] as String).input(),
      rootPasswordSet: (map['rootPasswordSet'] as bool).input(),
      sourceId: (map['sourceId'] as String).input(),
      storageAutoResizeLimit: (map['storageAutoResizeLimit'] as String).input(),
      tier: (map['tier'] as String).input(),
      userLabels: ((map['userLabels'] as Map).cast<String, String>()).input(),
      zone: (map['zone'] as String).input(),
    );
  }
}

