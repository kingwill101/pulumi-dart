// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_profile_cloudsql_settings_ip_config.dart';

class ConnectionProfileCloudsqlSettings {
  /// The activation policy specifies when the instance is activated; it is applicable only when the instance state is 'RUNNABLE'.
  /// Possible values are: `ALWAYS`, `NEVER`.
  final pulumi.Input<String>? activationPolicy;
  /// If you enable this setting, Cloud SQL checks your available storage every 30 seconds. If the available storage falls below a threshold size, Cloud SQL automatically adds additional storage capacity.
  /// If the available storage repeatedly falls below the threshold size, Cloud SQL continues to add storage until it reaches the maximum of 30 TB.
  final pulumi.Input<bool>? autoStorageIncrease;
  /// The KMS key name used for the csql instance.
  final pulumi.Input<String>? cmekKeyName;
  /// The Cloud SQL default instance level collation.
  final pulumi.Input<String>? collation;
  /// The storage capacity available to the database, in GB. The minimum (and default) size is 10GB.
  final pulumi.Input<String>? dataDiskSizeGb;
  /// The type of storage.
  /// Possible values are: `PD_SSD`, `PD_HDD`.
  final pulumi.Input<String>? dataDiskType;
  /// The database flags passed to the Cloud SQL instance at startup.
  final pulumi.Input<Map<String, String>>? databaseFlags;
  /// The database engine type and version.
  /// Currently supported values located at https://cloud.google.com/database-migration/docs/reference/rest/v1/projects.locations.connectionProfiles#sqldatabaseversion
  final pulumi.Input<String>? databaseVersion;
  /// The edition of the given Cloud SQL instance.
  /// Possible values are: `ENTERPRISE`, `ENTERPRISE_PLUS`.
  final pulumi.Input<String>? edition;
  /// The settings for IP Management. This allows to enable or disable the instance IP and manage which external networks can connect to the instance. The IPv4 address cannot be disabled.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileCloudsqlSettingsIpConfig>? ipConfig;
  /// Input only. Initial root password.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? rootPassword;
  /// (Output)
  /// Output only. Indicates If this connection profile root password is stored.
  final pulumi.Input<bool>? rootPasswordSet;
  /// The Database Migration Service source connection profile ID, in the format: projects/my_project_name/locations/us-central1/connectionProfiles/connection_profile_ID
  final pulumi.Input<String> sourceId;
  /// The maximum size to which storage capacity can be automatically increased. The default value is 0, which specifies that there is no limit.
  final pulumi.Input<String>? storageAutoResizeLimit;
  /// The tier (or machine type) for this instance, for example: db-n1-standard-1 (MySQL instances) or db-custom-1-3840 (PostgreSQL instances).
  /// For more information, see https://cloud.google.com/sql/docs/mysql/instance-settings
  final pulumi.Input<String>? tier;
  /// The resource labels for a Cloud SQL instance to use to annotate any related underlying resources such as Compute Engine VMs.
  final pulumi.Input<Map<String, String>>? userLabels;
  /// The Google Cloud Platform zone where your Cloud SQL datdabse instance is located.
  final pulumi.Input<String>? zone;

  /// Creates a new [ConnectionProfileCloudsqlSettings].
  /// [activationPolicy] The activation policy specifies when the instance is activated; it is applicable only when the instance state is 'RUNNABLE'.
  /// [autoStorageIncrease] If you enable this setting, Cloud SQL checks your available storage every 30 seconds. If the available storage falls below a threshold size, Cloud SQL automatically adds additional storage capacity.
  /// [cmekKeyName] The KMS key name used for the csql instance.
  /// [collation] The Cloud SQL default instance level collation.
  /// [dataDiskSizeGb] The storage capacity available to the database, in GB. The minimum (and default) size is 10GB.
  /// [dataDiskType] The type of storage.
  /// [databaseFlags] The database flags passed to the Cloud SQL instance at startup.
  /// [databaseVersion] The database engine type and version.
  /// [edition] The edition of the given Cloud SQL instance.
  /// [ipConfig] The settings for IP Management. This allows to enable or disable the instance IP and manage which external networks can connect to the instance. The IPv4 address cannot be disabled.
  /// [rootPassword] Input only. Initial root password.
  /// [rootPasswordSet] (Output)
  /// [sourceId] The Database Migration Service source connection profile ID, in the format: projects/my_project_name/locations/us-central1/connectionProfiles/connection_profile_ID
  /// [storageAutoResizeLimit] The maximum size to which storage capacity can be automatically increased. The default value is 0, which specifies that there is no limit.
  /// [tier] The tier (or machine type) for this instance, for example: db-n1-standard-1 (MySQL instances) or db-custom-1-3840 (PostgreSQL instances).
  /// [userLabels] The resource labels for a Cloud SQL instance to use to annotate any related underlying resources such as Compute Engine VMs.
  /// [zone] The Google Cloud Platform zone where your Cloud SQL datdabse instance is located.
  ConnectionProfileCloudsqlSettings({
    this.activationPolicy,
    this.autoStorageIncrease,
    this.cmekKeyName,
    this.collation,
    this.dataDiskSizeGb,
    this.dataDiskType,
    this.databaseFlags,
    this.databaseVersion,
    this.edition,
    this.ipConfig,
    this.rootPassword,
    this.rootPasswordSet,
    required this.sourceId,
    this.storageAutoResizeLimit,
    this.tier,
    this.userLabels,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationPolicy': ?activationPolicy,
      'autoStorageIncrease': ?autoStorageIncrease,
      'cmekKeyName': ?cmekKeyName,
      'collation': ?collation,
      'dataDiskSizeGb': ?dataDiskSizeGb,
      'dataDiskType': ?dataDiskType,
      'databaseFlags': ?databaseFlags,
      'databaseVersion': ?databaseVersion,
      'edition': ?edition,
      'ipConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionProfileCloudsqlSettingsIpConfig, Map<String, dynamic>>(ipConfig, (value) => value.toMap()),
      'rootPassword': ?rootPassword,
      'rootPasswordSet': ?rootPasswordSet,
      'sourceId': sourceId,
      'storageAutoResizeLimit': ?storageAutoResizeLimit,
      'tier': ?tier,
      'userLabels': ?userLabels,
      'zone': ?zone,
    };
  }

  factory ConnectionProfileCloudsqlSettings.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileCloudsqlSettings(
      activationPolicy: (() { final guardedValue = map['activationPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoStorageIncrease: (() { final guardedValue = map['autoStorageIncrease']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      cmekKeyName: (() { final guardedValue = map['cmekKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      collation: (() { final guardedValue = map['collation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataDiskSizeGb: (() { final guardedValue = map['dataDiskSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataDiskType: (() { final guardedValue = map['dataDiskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseFlags: (() { final guardedValue = map['databaseFlags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      databaseVersion: (() { final guardedValue = map['databaseVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      edition: (() { final guardedValue = map['edition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipConfig: (() { final guardedValue = map['ipConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionProfileCloudsqlSettingsIpConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rootPassword: (() { final guardedValue = map['rootPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rootPasswordSet: (() { final guardedValue = map['rootPasswordSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sourceId: pulumi.Input.fromValue(map['sourceId'] as String),
      storageAutoResizeLimit: (() { final guardedValue = map['storageAutoResizeLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userLabels: (() { final guardedValue = map['userLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

