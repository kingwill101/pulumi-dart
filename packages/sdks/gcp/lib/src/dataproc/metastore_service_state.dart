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

/// Input properties used for looking up and filtering MetastoreService resources.
class MetastoreServiceState {
  /// A Cloud Storage URI (starting with gs://) that specifies where artifacts related to the metastore service are stored.
  final pulumi.Input<String>? artifactGcsUri;
  /// Output only. The time when the metastore service was created.
  final pulumi.Input<String>? createTime;
  /// The database type that the Metastore service stores its data.
  /// Default value is `MYSQL`.
  /// Possible values are: `MYSQL`, `SPANNER`.
  final pulumi.Input<String>? databaseType;
  /// Indicates if the dataproc metastore should be protected against accidental deletions.
  final pulumi.Input<bool>? deletionProtection;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Information used to configure the Dataproc Metastore service to encrypt
  /// customer data at rest.
  /// Structure is documented below.
  final pulumi.Input<MetastoreServiceEncryptionConfig>? encryptionConfig;
  /// The URI of the endpoint used to access the metastore service.
  final pulumi.Input<String>? endpointUri;
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
  /// The relative resource name of the metastore service.
  final pulumi.Input<String>? name;
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
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
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
  /// The current state of the metastore service.
  final pulumi.Input<String>? state;
  /// Additional information about the current state of the metastore service, if available.
  final pulumi.Input<String>? stateMessage;
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
  /// The globally unique resource identifier of the metastore service.
  final pulumi.Input<String>? uid;
  /// Output only. The time when the metastore service was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [MetastoreServiceState].
  /// [artifactGcsUri] A Cloud Storage URI (starting with gs://) that specifies where artifacts related to the metastore service are stored.
  /// [createTime] Output only. The time when the metastore service was created.
  /// [databaseType] The database type that the Metastore service stores its data.
  /// [deletionProtection] Indicates if the dataproc metastore should be protected against accidental deletions.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [encryptionConfig] Information used to configure the Dataproc Metastore service to encrypt
  /// [endpointUri] The URI of the endpoint used to access the metastore service.
  /// [hiveMetastoreConfig] Configuration information specific to running Hive metastore software as the metastore service.
  /// [labels] User-defined labels for the metastore service.
  /// [location] The location where the metastore service should reside.
  /// [maintenanceWindow] The one hour maintenance window of the metastore service.
  /// [metadataIntegration] The setting that defines how metastore metadata should be integrated with external services and systems.
  /// [name] The relative resource name of the metastore service.
  /// [network] The relative resource name of the VPC network on which the instance can be accessed. It is specified in the following form:
  /// [networkConfig] The configuration specifying the network settings for the Dataproc Metastore service.
  /// [port] The TCP port at which the metastore service is reached. Default: 9083.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [releaseChannel] The release channel of the service. If unspecified, defaults to `STABLE`.
  /// [scalingConfig] Represents the scaling configuration of a metastore service.
  /// [scheduledBackup] The configuration of scheduled backup for the metastore service.
  /// [serviceId] The ID of the metastore service. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_),
  /// [state] The current state of the metastore service.
  /// [stateMessage] Additional information about the current state of the metastore service, if available.
  /// [tags] A map of resource manager tags.
  /// [telemetryConfig] The configuration specifying telemetry settings for the Dataproc Metastore service. If unspecified defaults to JSON.
  /// [tier] The tier of the service.
  /// [uid] The globally unique resource identifier of the metastore service.
  /// [updateTime] Output only. The time when the metastore service was last updated.
  MetastoreServiceState({
    this.artifactGcsUri,
    this.createTime,
    this.databaseType,
    this.deletionProtection,
    this.effectiveLabels,
    this.encryptionConfig,
    this.endpointUri,
    this.hiveMetastoreConfig,
    this.labels,
    this.location,
    this.maintenanceWindow,
    this.metadataIntegration,
    this.name,
    this.network,
    this.networkConfig,
    this.port,
    this.project,
    this.pulumiLabels,
    this.releaseChannel,
    this.scalingConfig,
    this.scheduledBackup,
    this.serviceId,
    this.state,
    this.stateMessage,
    this.tags,
    this.telemetryConfig,
    this.tier,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactGcsUri': ?artifactGcsUri,
      'createTime': ?createTime,
      'databaseType': ?databaseType,
      'deletionProtection': ?deletionProtection,
      'effectiveLabels': ?effectiveLabels,
      'encryptionConfig': ?pulumi.Input.mapOptionalInputValue<MetastoreServiceEncryptionConfig, Map<String, dynamic>>(encryptionConfig, (value) => value.toMap()),
      'endpointUri': ?endpointUri,
      'hiveMetastoreConfig': ?pulumi.Input.mapOptionalInputValue<MetastoreServiceHiveMetastoreConfig, Map<String, dynamic>>(hiveMetastoreConfig, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'maintenanceWindow': ?pulumi.Input.mapOptionalInputValue<MetastoreServiceMaintenanceWindow, Map<String, dynamic>>(maintenanceWindow, (value) => value.toMap()),
      'metadataIntegration': ?pulumi.Input.mapOptionalInputValue<MetastoreServiceMetadataIntegration, Map<String, dynamic>>(metadataIntegration, (value) => value.toMap()),
      'name': ?name,
      'network': ?network,
      'networkConfig': ?pulumi.Input.mapOptionalInputValue<MetastoreServiceNetworkConfig, Map<String, dynamic>>(networkConfig, (value) => value.toMap()),
      'port': ?port,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'releaseChannel': ?releaseChannel,
      'scalingConfig': ?pulumi.Input.mapOptionalInputValue<MetastoreServiceScalingConfig, Map<String, dynamic>>(scalingConfig, (value) => value.toMap()),
      'scheduledBackup': ?pulumi.Input.mapOptionalInputValue<MetastoreServiceScheduledBackup, Map<String, dynamic>>(scheduledBackup, (value) => value.toMap()),
      'serviceId': ?serviceId,
      'state': ?state,
      'stateMessage': ?stateMessage,
      'tags': ?tags,
      'telemetryConfig': ?pulumi.Input.mapOptionalInputValue<MetastoreServiceTelemetryConfig, Map<String, dynamic>>(telemetryConfig, (value) => value.toMap()),
      'tier': ?tier,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory MetastoreServiceState.fromMap(Map<String, dynamic> map) {
    return MetastoreServiceState(
      artifactGcsUri: map['artifactGcsUri'] == null ? null : (map['artifactGcsUri']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      databaseType: map['databaseType'] == null ? null : (map['databaseType']! as String).input(),
      deletionProtection: map['deletionProtection'] == null ? null : (map['deletionProtection']! as bool).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      encryptionConfig: map['encryptionConfig'] == null ? null : (MetastoreServiceEncryptionConfig.fromMap((map['encryptionConfig']! as Map).cast<String, dynamic>())).input(),
      endpointUri: map['endpointUri'] == null ? null : (map['endpointUri']! as String).input(),
      hiveMetastoreConfig: map['hiveMetastoreConfig'] == null ? null : (MetastoreServiceHiveMetastoreConfig.fromMap((map['hiveMetastoreConfig']! as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      maintenanceWindow: map['maintenanceWindow'] == null ? null : (MetastoreServiceMaintenanceWindow.fromMap((map['maintenanceWindow']! as Map).cast<String, dynamic>())).input(),
      metadataIntegration: map['metadataIntegration'] == null ? null : (MetastoreServiceMetadataIntegration.fromMap((map['metadataIntegration']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      network: map['network'] == null ? null : (map['network']! as String).input(),
      networkConfig: map['networkConfig'] == null ? null : (MetastoreServiceNetworkConfig.fromMap((map['networkConfig']! as Map).cast<String, dynamic>())).input(),
      port: map['port'] == null ? null : (map['port']! as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      releaseChannel: map['releaseChannel'] == null ? null : (map['releaseChannel']! as String).input(),
      scalingConfig: map['scalingConfig'] == null ? null : (MetastoreServiceScalingConfig.fromMap((map['scalingConfig']! as Map).cast<String, dynamic>())).input(),
      scheduledBackup: map['scheduledBackup'] == null ? null : (MetastoreServiceScheduledBackup.fromMap((map['scheduledBackup']! as Map).cast<String, dynamic>())).input(),
      serviceId: map['serviceId'] == null ? null : (map['serviceId']! as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      stateMessage: map['stateMessage'] == null ? null : (map['stateMessage']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      telemetryConfig: map['telemetryConfig'] == null ? null : (MetastoreServiceTelemetryConfig.fromMap((map['telemetryConfig']! as Map).cast<String, dynamic>())).input(),
      tier: map['tier'] == null ? null : (map['tier']! as String).input(),
      uid: map['uid'] == null ? null : (map['uid']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}

