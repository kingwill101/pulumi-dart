// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metastore_service_encryption_config.dart';
import 'metastore_service_hive_metastore_config.dart';
import 'metastore_service_maintenance_window.dart';
import 'metastore_service_metadata_integration.dart';
import 'metastore_service_network_config.dart';
import 'metastore_service_scaling_config.dart';
import 'metastore_service_scheduled_backup.dart';
import 'metastore_service_telemetry_config.dart';

/// {@template pulumi_dataproc_metastore_service_metastore_service_args_doc}
/// The set of arguments for MetastoreService.
/// {@endtemplate}
/// {@macro pulumi_dataproc_metastore_service_metastore_service_args_doc}
class MetastoreServiceArgs {
  /// The database type that the Metastore service stores its data.
  /// Default value is `MYSQL`.
  /// Possible values are: `MYSQL`, `SPANNER`.
  final pulumi.Input<String>? databaseType;
  /// Indicates if the dataproc metastore should be protected against accidental deletions.
  final pulumi.Input<bool>? deletionProtection;
  /// Information used to configure the Dataproc Metastore service to encrypt
  /// customer data at rest.
  /// Structure is documented below.
  final pulumi.Input<MetastoreServiceEncryptionConfig>? encryptionConfig;
  /// Configuration information specific to running Hive metastore software as the metastore service.
  /// Structure is documented below.
  final pulumi.Input<MetastoreServiceHiveMetastoreConfig>? hiveMetastoreConfig;
  /// User-defined labels for the metastore service.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location where the metastore service should reside.
  /// The default value is `global`.
  final pulumi.Input<String>? location;
  /// The one hour maintenance window of the metastore service.
  /// This specifies when the service can be restarted for maintenance purposes in UTC time.
  /// Maintenance window is not needed for services with the `SPANNER` database type.
  /// Structure is documented below.
  final pulumi.Input<MetastoreServiceMaintenanceWindow>? maintenanceWindow;
  /// The setting that defines how metastore metadata should be integrated with external services and systems.
  /// Structure is documented below.
  final pulumi.Input<MetastoreServiceMetadataIntegration>? metadataIntegration;
  /// The relative resource name of the VPC network on which the instance can be accessed. It is specified in the following form:
  /// "projects/{projectNumber}/global/networks/{network_id}".
  final pulumi.Input<String>? network;
  /// The configuration specifying the network settings for the Dataproc Metastore service.
  /// Structure is documented below.
  final pulumi.Input<MetastoreServiceNetworkConfig>? networkConfig;
  /// The TCP port at which the metastore service is reached. Default: 9083.
  final pulumi.Input<int>? port;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The release channel of the service. If unspecified, defaults to `STABLE`.
  /// Default value is `STABLE`.
  /// Possible values are: `CANARY`, `STABLE`.
  final pulumi.Input<String>? releaseChannel;
  /// Represents the scaling configuration of a metastore service.
  /// Structure is documented below.
  final pulumi.Input<MetastoreServiceScalingConfig>? scalingConfig;
  /// The configuration of scheduled backup for the metastore service.
  /// Structure is documented below.
  final pulumi.Input<MetastoreServiceScheduledBackup>? scheduledBackup;
  /// The ID of the metastore service. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_),
  /// and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between
  /// 3 and 63 characters.
  final pulumi.Input<String>? serviceId;
  /// A map of resource manager tags.
  /// Resource manager tag keys and values have the same definition as resource manager tags.
  /// Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/{tag_value_id}.
  final pulumi.Input<Map<String, String>>? tags;
  /// The configuration specifying telemetry settings for the Dataproc Metastore service. If unspecified defaults to JSON.
  /// Structure is documented below.
  final pulumi.Input<MetastoreServiceTelemetryConfig>? telemetryConfig;
  /// The tier of the service.
  /// Possible values are: `DEVELOPER`, `ENTERPRISE`.
  final pulumi.Input<String>? tier;

  /// Creates a new [MetastoreServiceArgs].
  /// [databaseType] The database type that the Metastore service stores its data.
  /// [deletionProtection] Indicates if the dataproc metastore should be protected against accidental deletions.
  /// [encryptionConfig] Information used to configure the Dataproc Metastore service to encrypt
  /// [hiveMetastoreConfig] Configuration information specific to running Hive metastore software as the metastore service.
  /// [labels] User-defined labels for the metastore service.
  /// [location] The location where the metastore service should reside.
  /// [maintenanceWindow] The one hour maintenance window of the metastore service.
  /// [metadataIntegration] The setting that defines how metastore metadata should be integrated with external services and systems.
  /// [network] The relative resource name of the VPC network on which the instance can be accessed. It is specified in the following form:
  /// [networkConfig] The configuration specifying the network settings for the Dataproc Metastore service.
  /// [port] The TCP port at which the metastore service is reached. Default: 9083.
  /// [project] The ID of the project in which the resource belongs.
  /// [releaseChannel] The release channel of the service. If unspecified, defaults to `STABLE`.
  /// [scalingConfig] Represents the scaling configuration of a metastore service.
  /// [scheduledBackup] The configuration of scheduled backup for the metastore service.
  /// [serviceId] The ID of the metastore service. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_),
  /// [tags] A map of resource manager tags.
  /// [telemetryConfig] The configuration specifying telemetry settings for the Dataproc Metastore service. If unspecified defaults to JSON.
  /// [tier] The tier of the service.
  MetastoreServiceArgs({
    pulumi.Output<String>? databaseType,
    pulumi.Output<bool>? deletionProtection,
    pulumi.Output<MetastoreServiceEncryptionConfig>? encryptionConfig,
    pulumi.Output<MetastoreServiceHiveMetastoreConfig>? hiveMetastoreConfig,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<MetastoreServiceMaintenanceWindow>? maintenanceWindow,
    pulumi.Output<MetastoreServiceMetadataIntegration>? metadataIntegration,
    pulumi.Output<String>? network,
    pulumi.Output<MetastoreServiceNetworkConfig>? networkConfig,
    pulumi.Output<int>? port,
    pulumi.Output<String>? project,
    pulumi.Output<String>? releaseChannel,
    pulumi.Output<MetastoreServiceScalingConfig>? scalingConfig,
    pulumi.Output<MetastoreServiceScheduledBackup>? scheduledBackup,
    pulumi.Output<String>? serviceId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<MetastoreServiceTelemetryConfig>? telemetryConfig,
    pulumi.Output<String>? tier,
  }) :
      databaseType = pulumi.Input.asOptionalInput<String>(databaseType),
      deletionProtection = pulumi.Input.asOptionalInput<bool>(deletionProtection),
      encryptionConfig = pulumi.Input.asOptionalInput<MetastoreServiceEncryptionConfig>(encryptionConfig),
      hiveMetastoreConfig = pulumi.Input.asOptionalInput<MetastoreServiceHiveMetastoreConfig>(hiveMetastoreConfig),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      maintenanceWindow = pulumi.Input.asOptionalInput<MetastoreServiceMaintenanceWindow>(maintenanceWindow),
      metadataIntegration = pulumi.Input.asOptionalInput<MetastoreServiceMetadataIntegration>(metadataIntegration),
      network = pulumi.Input.asOptionalInput<String>(network),
      networkConfig = pulumi.Input.asOptionalInput<MetastoreServiceNetworkConfig>(networkConfig),
      port = pulumi.Input.asOptionalInput<int>(port),
      project = pulumi.Input.asOptionalInput<String>(project),
      releaseChannel = pulumi.Input.asOptionalInput<String>(releaseChannel),
      scalingConfig = pulumi.Input.asOptionalInput<MetastoreServiceScalingConfig>(scalingConfig),
      scheduledBackup = pulumi.Input.asOptionalInput<MetastoreServiceScheduledBackup>(scheduledBackup),
      serviceId = pulumi.Input.asOptionalInput<String>(serviceId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      telemetryConfig = pulumi.Input.asOptionalInput<MetastoreServiceTelemetryConfig>(telemetryConfig),
      tier = pulumi.Input.asOptionalInput<String>(tier);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseType': ?databaseType,
      'deletionProtection': ?deletionProtection,
      'encryptionConfig': ?pulumi.Input.mapOptionalInputValue<MetastoreServiceEncryptionConfig, Map<String, dynamic>>(encryptionConfig, (value) => value.toMap()),
      'hiveMetastoreConfig': ?pulumi.Input.mapOptionalInputValue<MetastoreServiceHiveMetastoreConfig, Map<String, dynamic>>(hiveMetastoreConfig, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'maintenanceWindow': ?pulumi.Input.mapOptionalInputValue<MetastoreServiceMaintenanceWindow, Map<String, dynamic>>(maintenanceWindow, (value) => value.toMap()),
      'metadataIntegration': ?pulumi.Input.mapOptionalInputValue<MetastoreServiceMetadataIntegration, Map<String, dynamic>>(metadataIntegration, (value) => value.toMap()),
      'network': ?network,
      'networkConfig': ?pulumi.Input.mapOptionalInputValue<MetastoreServiceNetworkConfig, Map<String, dynamic>>(networkConfig, (value) => value.toMap()),
      'port': ?port,
      'project': ?project,
      'releaseChannel': ?releaseChannel,
      'scalingConfig': ?pulumi.Input.mapOptionalInputValue<MetastoreServiceScalingConfig, Map<String, dynamic>>(scalingConfig, (value) => value.toMap()),
      'scheduledBackup': ?pulumi.Input.mapOptionalInputValue<MetastoreServiceScheduledBackup, Map<String, dynamic>>(scheduledBackup, (value) => value.toMap()),
      'serviceId': ?serviceId,
      'tags': ?tags,
      'telemetryConfig': ?pulumi.Input.mapOptionalInputValue<MetastoreServiceTelemetryConfig, Map<String, dynamic>>(telemetryConfig, (value) => value.toMap()),
      'tier': ?tier,
    };
  }

  factory MetastoreServiceArgs.fromMap(Map<String, dynamic> map) {
    return MetastoreServiceArgs(
      databaseType: map['databaseType'] == null ? null : pulumi.Output.create<String>(map['databaseType'] as String),
      deletionProtection: map['deletionProtection'] == null ? null : pulumi.Output.create<bool>(map['deletionProtection'] as bool),
      encryptionConfig: map['encryptionConfig'] == null ? null : pulumi.Output.create<MetastoreServiceEncryptionConfig>(MetastoreServiceEncryptionConfig.fromMap((map['encryptionConfig'] as Map).cast<String, dynamic>())),
      hiveMetastoreConfig: map['hiveMetastoreConfig'] == null ? null : pulumi.Output.create<MetastoreServiceHiveMetastoreConfig>(MetastoreServiceHiveMetastoreConfig.fromMap((map['hiveMetastoreConfig'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      maintenanceWindow: map['maintenanceWindow'] == null ? null : pulumi.Output.create<MetastoreServiceMaintenanceWindow>(MetastoreServiceMaintenanceWindow.fromMap((map['maintenanceWindow'] as Map).cast<String, dynamic>())),
      metadataIntegration: map['metadataIntegration'] == null ? null : pulumi.Output.create<MetastoreServiceMetadataIntegration>(MetastoreServiceMetadataIntegration.fromMap((map['metadataIntegration'] as Map).cast<String, dynamic>())),
      network: map['network'] == null ? null : pulumi.Output.create<String>(map['network'] as String),
      networkConfig: map['networkConfig'] == null ? null : pulumi.Output.create<MetastoreServiceNetworkConfig>(MetastoreServiceNetworkConfig.fromMap((map['networkConfig'] as Map).cast<String, dynamic>())),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      releaseChannel: map['releaseChannel'] == null ? null : pulumi.Output.create<String>(map['releaseChannel'] as String),
      scalingConfig: map['scalingConfig'] == null ? null : pulumi.Output.create<MetastoreServiceScalingConfig>(MetastoreServiceScalingConfig.fromMap((map['scalingConfig'] as Map).cast<String, dynamic>())),
      scheduledBackup: map['scheduledBackup'] == null ? null : pulumi.Output.create<MetastoreServiceScheduledBackup>(MetastoreServiceScheduledBackup.fromMap((map['scheduledBackup'] as Map).cast<String, dynamic>())),
      serviceId: map['serviceId'] == null ? null : pulumi.Output.create<String>(map['serviceId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      telemetryConfig: map['telemetryConfig'] == null ? null : pulumi.Output.create<MetastoreServiceTelemetryConfig>(MetastoreServiceTelemetryConfig.fromMap((map['telemetryConfig'] as Map).cast<String, dynamic>())),
      tier: map['tier'] == null ? null : pulumi.Output.create<String>(map['tier'] as String),
    );
  }
}

