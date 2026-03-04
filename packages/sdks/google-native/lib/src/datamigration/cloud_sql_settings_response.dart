// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_cache_config_response.dart';
import 'sql_ip_config_response.dart';

/// Settings for creating a Cloud SQL database instance.
class CloudSqlSettingsResponse {
  /// The activation policy specifies when the instance is activated; it is applicable only when the instance state is 'RUNNABLE'. Valid values: 'ALWAYS': The instance is on, and remains so even in the absence of connection requests. `NEVER`: The instance is off; it is not activated, even if a connection request arrives.
  final pulumi.Input<String> activationPolicy;

  /// [default: ON] If you enable this setting, Cloud SQL checks your available storage every 30 seconds. If the available storage falls below a threshold size, Cloud SQL automatically adds additional storage capacity. If the available storage repeatedly falls below the threshold size, Cloud SQL continues to add storage until it reaches the maximum of 30 TB.
  final pulumi.Input<bool> autoStorageIncrease;

  /// Optional. Availability type. Potential values: * `ZONAL`: The instance serves data from only one zone. Outages in that zone affect data availability. * `REGIONAL`: The instance can serve data from more than one zone in a region (it is highly available).
  final pulumi.Input<String> availabilityType;

  /// The KMS key name used for the csql instance.
  final pulumi.Input<String> cmekKeyName;

  /// The Cloud SQL default instance level collation.
  final pulumi.Input<String> collation;

  /// Optional. Data cache is an optional feature available for Cloud SQL for MySQL Enterprise Plus edition only. For more information on data cache, see [Data cache overview](https://cloud.google.com/sql/help/mysql-data-cache) in Cloud SQL documentation.
  final pulumi.Input<DataCacheConfigResponse> dataCacheConfig;

  /// The storage capacity available to the database, in GB. The minimum (and default) size is 10GB.
  final pulumi.Input<String> dataDiskSizeGb;

  /// The type of storage: `PD_SSD` (default) or `PD_HDD`.
  final pulumi.Input<String> dataDiskType;

  /// The database flags passed to the Cloud SQL instance at startup. An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  final pulumi.Input<Map<String, String>> databaseFlags;

  /// The database engine type and version.
  final pulumi.Input<String> databaseVersion;

  /// Optional. The edition of the given Cloud SQL instance.
  final pulumi.Input<String> edition;

  /// The settings for IP Management. This allows to enable or disable the instance IP and manage which external networks can connect to the instance. The IPv4 address cannot be disabled.
  final pulumi.Input<SqlIpConfigResponse> ipConfig;

  /// Input only. Initial root password.
  final pulumi.Input<String> rootPassword;

  /// Indicates If this connection profile root password is stored.
  final pulumi.Input<bool> rootPasswordSet;

  /// Optional. The Google Cloud Platform zone where the failover Cloud SQL database instance is located. Used when the Cloud SQL database availability type is REGIONAL (i.e. multiple zones / highly available).
  final pulumi.Input<String> secondaryZone;

  /// The Database Migration Service source connection profile ID, in the format: `projects/my_project_name/locations/us-central1/connectionProfiles/connection_profile_ID`
  final pulumi.Input<String> sourceId;

  /// The maximum size to which storage capacity can be automatically increased. The default value is 0, which specifies that there is no limit.
  final pulumi.Input<String> storageAutoResizeLimit;

  /// The tier (or machine type) for this instance, for example: `db-n1-standard-1` (MySQL instances) or `db-custom-1-3840` (PostgreSQL instances). For more information, see [Cloud SQL Instance Settings](https://cloud.google.com/sql/docs/mysql/instance-settings).
  final pulumi.Input<String> tier;

  /// The resource labels for a Cloud SQL instance to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "18kg", "count": "3" }`.
  final pulumi.Input<Map<String, String>> userLabels;

  /// The Google Cloud Platform zone where your Cloud SQL database instance is located.
  final pulumi.Input<String> zone;

  /// Creates a new [CloudSqlSettingsResponse].
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
  /// [rootPasswordSet] Indicates If this connection profile root password is stored.
  /// [secondaryZone] Optional. The Google Cloud Platform zone where the failover Cloud SQL database instance is located. Used when the Cloud SQL database availability type is REGIONAL (i.e. multiple zones / highly available).
  /// [sourceId] The Database Migration Service source connection profile ID, in the format: `projects/my_project_name/locations/us-central1/connectionProfiles/connection_profile_ID`
  /// [storageAutoResizeLimit] The maximum size to which storage capacity can be automatically increased. The default value is 0, which specifies that there is no limit.
  /// [tier] The tier (or machine type) for this instance, for example: `db-n1-standard-1` (MySQL instances) or `db-custom-1-3840` (PostgreSQL instances). For more information, see [Cloud SQL Instance Settings](https://cloud.google.com/sql/docs/mysql/instance-settings).
  /// [userLabels] The resource labels for a Cloud SQL instance to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "18kg", "count": "3" }`.
  /// [zone] The Google Cloud Platform zone where your Cloud SQL database instance is located.
  CloudSqlSettingsResponse({
    required this.activationPolicy,
    required this.autoStorageIncrease,
    required this.availabilityType,
    required this.cmekKeyName,
    required this.collation,
    required this.dataCacheConfig,
    required this.dataDiskSizeGb,
    required this.dataDiskType,
    required this.databaseFlags,
    required this.databaseVersion,
    required this.edition,
    required this.ipConfig,
    required this.rootPassword,
    required this.rootPasswordSet,
    required this.secondaryZone,
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
      'availabilityType': availabilityType,
      'cmekKeyName': cmekKeyName,
      'collation': collation,
      'dataCacheConfig':
          pulumi.Input.mapInputValue<
            DataCacheConfigResponse,
            Map<String, dynamic>
          >(dataCacheConfig, (value) => value.toMap()),
      'dataDiskSizeGb': dataDiskSizeGb,
      'dataDiskType': dataDiskType,
      'databaseFlags': databaseFlags,
      'databaseVersion': databaseVersion,
      'edition': edition,
      'ipConfig':
          pulumi.Input.mapInputValue<SqlIpConfigResponse, Map<String, dynamic>>(
            ipConfig,
            (value) => value.toMap(),
          ),
      'rootPassword': rootPassword,
      'rootPasswordSet': rootPasswordSet,
      'secondaryZone': secondaryZone,
      'sourceId': sourceId,
      'storageAutoResizeLimit': storageAutoResizeLimit,
      'tier': tier,
      'userLabels': userLabels,
      'zone': zone,
    };
  }

  factory CloudSqlSettingsResponse.fromMap(Map<String, dynamic> map) {
    return CloudSqlSettingsResponse(
      activationPolicy: pulumi.Input.fromValue(
        map['activationPolicy'] as String,
      ),
      autoStorageIncrease: pulumi.Input.fromValue(
        map['autoStorageIncrease'] as bool,
      ),
      availabilityType: pulumi.Input.fromValue(
        map['availabilityType'] as String,
      ),
      cmekKeyName: pulumi.Input.fromValue(map['cmekKeyName'] as String),
      collation: pulumi.Input.fromValue(map['collation'] as String),
      dataCacheConfig: pulumi.Input.fromValue(
        DataCacheConfigResponse.fromMap(
          (map['dataCacheConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      dataDiskSizeGb: pulumi.Input.fromValue(map['dataDiskSizeGb'] as String),
      dataDiskType: pulumi.Input.fromValue(map['dataDiskType'] as String),
      databaseFlags: pulumi.Input.fromValue(
        (map['databaseFlags'] as Map).cast<String, String>(),
      ),
      databaseVersion: pulumi.Input.fromValue(map['databaseVersion'] as String),
      edition: pulumi.Input.fromValue(map['edition'] as String),
      ipConfig: pulumi.Input.fromValue(
        SqlIpConfigResponse.fromMap(
          (map['ipConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      rootPassword: pulumi.Input.fromValue(map['rootPassword'] as String),
      rootPasswordSet: pulumi.Input.fromValue(map['rootPasswordSet'] as bool),
      secondaryZone: pulumi.Input.fromValue(map['secondaryZone'] as String),
      sourceId: pulumi.Input.fromValue(map['sourceId'] as String),
      storageAutoResizeLimit: pulumi.Input.fromValue(
        map['storageAutoResizeLimit'] as String,
      ),
      tier: pulumi.Input.fromValue(map['tier'] as String),
      userLabels: pulumi.Input.fromValue(
        (map['userLabels'] as Map).cast<String, String>(),
      ),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}
