// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_config_response.dart';
import 'hive_metastore_config_response.dart';
import 'maintenance_window_response.dart';
import 'metadata_integration_response.dart';
import 'metadata_management_activity_response.dart';
import 'network_config_response.dart';
import 'scaling_config_response.dart';
import 'telemetry_config_response.dart';

/// A managed metastore service that serves metadata queries.
class ServiceResponse {
  /// A Cloud Storage URI (starting with gs://) that specifies where artifacts related to the metastore service are stored.
  final pulumi.Input<String> artifactGcsUri;
  /// The time when the metastore service was created.
  final pulumi.Input<String> createTime;
  /// Immutable. The database type that the Metastore service stores its data.
  final pulumi.Input<String> databaseType;
  /// Immutable. Information used to configure the Dataproc Metastore service to encrypt customer data at rest. Cannot be updated.
  final pulumi.Input<EncryptionConfigResponse> encryptionConfig;
  /// The URI of the endpoint used to access the metastore service.
  final pulumi.Input<String> endpointUri;
  /// Configuration information specific to running Hive metastore software as the metastore service.
  final pulumi.Input<HiveMetastoreConfigResponse> hiveMetastoreConfig;
  /// User-defined labels for the metastore service.
  final pulumi.Input<Map<String, String>> labels;
  /// The one hour maintenance window of the metastore service. This specifies when the service can be restarted for maintenance purposes in UTC time. Maintenance window is not needed for services with the SPANNER database type.
  final pulumi.Input<MaintenanceWindowResponse> maintenanceWindow;
  /// Optional. The setting that defines how metastore metadata should be integrated with external services and systems.
  final pulumi.Input<MetadataIntegrationResponse> metadataIntegration;
  /// The metadata management activities of the metastore service.
  final pulumi.Input<MetadataManagementActivityResponse> metadataManagementActivity;
  /// Immutable. The relative resource name of the metastore service, in the following format:projects/{project_number}/locations/{location_id}/services/{service_id}.
  final pulumi.Input<String> name;
  /// Immutable. The relative resource name of the VPC network on which the instance can be accessed. It is specified in the following form:projects/{project_number}/global/networks/{network_id}.
  final pulumi.Input<String> network;
  /// The configuration specifying the network settings for the Dataproc Metastore service.
  final pulumi.Input<NetworkConfigResponse> networkConfig;
  /// The TCP port at which the metastore service is reached. Default: 9083.
  final pulumi.Input<int> port;
  /// Immutable. The release channel of the service. If unspecified, defaults to STABLE.
  final pulumi.Input<String> releaseChannel;
  /// Scaling configuration of the metastore service.
  final pulumi.Input<ScalingConfigResponse> scalingConfig;
  /// The current state of the metastore service.
  final pulumi.Input<String> state;
  /// Additional information about the current state of the metastore service, if available.
  final pulumi.Input<String> stateMessage;
  /// The configuration specifying telemetry settings for the Dataproc Metastore service. If unspecified defaults to JSON.
  final pulumi.Input<TelemetryConfigResponse> telemetryConfig;
  /// The tier of the service.
  final pulumi.Input<String> tier;
  /// The globally unique resource identifier of the metastore service.
  final pulumi.Input<String> uid;
  /// The time when the metastore service was last updated.
  final pulumi.Input<String> updateTime;

  /// Creates a new [ServiceResponse].
  /// [artifactGcsUri] A Cloud Storage URI (starting with gs://) that specifies where artifacts related to the metastore service are stored.
  /// [createTime] The time when the metastore service was created.
  /// [databaseType] Immutable. The database type that the Metastore service stores its data.
  /// [encryptionConfig] Immutable. Information used to configure the Dataproc Metastore service to encrypt customer data at rest. Cannot be updated.
  /// [endpointUri] The URI of the endpoint used to access the metastore service.
  /// [hiveMetastoreConfig] Configuration information specific to running Hive metastore software as the metastore service.
  /// [labels] User-defined labels for the metastore service.
  /// [maintenanceWindow] The one hour maintenance window of the metastore service. This specifies when the service can be restarted for maintenance purposes in UTC time. Maintenance window is not needed for services with the SPANNER database type.
  /// [metadataIntegration] Optional. The setting that defines how metastore metadata should be integrated with external services and systems.
  /// [metadataManagementActivity] The metadata management activities of the metastore service.
  /// [name] Immutable. The relative resource name of the metastore service, in the following format:projects/{project_number}/locations/{location_id}/services/{service_id}.
  /// [network] Immutable. The relative resource name of the VPC network on which the instance can be accessed. It is specified in the following form:projects/{project_number}/global/networks/{network_id}.
  /// [networkConfig] The configuration specifying the network settings for the Dataproc Metastore service.
  /// [port] The TCP port at which the metastore service is reached. Default: 9083.
  /// [releaseChannel] Immutable. The release channel of the service. If unspecified, defaults to STABLE.
  /// [scalingConfig] Scaling configuration of the metastore service.
  /// [state] The current state of the metastore service.
  /// [stateMessage] Additional information about the current state of the metastore service, if available.
  /// [telemetryConfig] The configuration specifying telemetry settings for the Dataproc Metastore service. If unspecified defaults to JSON.
  /// [tier] The tier of the service.
  /// [uid] The globally unique resource identifier of the metastore service.
  /// [updateTime] The time when the metastore service was last updated.
  const ServiceResponse({
    required this.artifactGcsUri,
    required this.createTime,
    required this.databaseType,
    required this.encryptionConfig,
    required this.endpointUri,
    required this.hiveMetastoreConfig,
    required this.labels,
    required this.maintenanceWindow,
    required this.metadataIntegration,
    required this.metadataManagementActivity,
    required this.name,
    required this.network,
    required this.networkConfig,
    required this.port,
    required this.releaseChannel,
    required this.scalingConfig,
    required this.state,
    required this.stateMessage,
    required this.telemetryConfig,
    required this.tier,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactGcsUri': artifactGcsUri,
      'createTime': createTime,
      'databaseType': databaseType,
      'encryptionConfig': pulumi.Input.mapInputValue<EncryptionConfigResponse, Map<String, dynamic>>(encryptionConfig, (value) => value.toMap()),
      'endpointUri': endpointUri,
      'hiveMetastoreConfig': pulumi.Input.mapInputValue<HiveMetastoreConfigResponse, Map<String, dynamic>>(hiveMetastoreConfig, (value) => value.toMap()),
      'labels': labels,
      'maintenanceWindow': pulumi.Input.mapInputValue<MaintenanceWindowResponse, Map<String, dynamic>>(maintenanceWindow, (value) => value.toMap()),
      'metadataIntegration': pulumi.Input.mapInputValue<MetadataIntegrationResponse, Map<String, dynamic>>(metadataIntegration, (value) => value.toMap()),
      'metadataManagementActivity': pulumi.Input.mapInputValue<MetadataManagementActivityResponse, Map<String, dynamic>>(metadataManagementActivity, (value) => value.toMap()),
      'name': name,
      'network': network,
      'networkConfig': pulumi.Input.mapInputValue<NetworkConfigResponse, Map<String, dynamic>>(networkConfig, (value) => value.toMap()),
      'port': port,
      'releaseChannel': releaseChannel,
      'scalingConfig': pulumi.Input.mapInputValue<ScalingConfigResponse, Map<String, dynamic>>(scalingConfig, (value) => value.toMap()),
      'state': state,
      'stateMessage': stateMessage,
      'telemetryConfig': pulumi.Input.mapInputValue<TelemetryConfigResponse, Map<String, dynamic>>(telemetryConfig, (value) => value.toMap()),
      'tier': tier,
      'uid': uid,
      'updateTime': updateTime,
    };
  }

  factory ServiceResponse.fromMap(Map<String, dynamic> map) {
    return ServiceResponse(
      artifactGcsUri: pulumi.Input.fromValue(map['artifactGcsUri'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      databaseType: pulumi.Input.fromValue(map['databaseType'] as String),
      encryptionConfig: pulumi.Input.fromValue(EncryptionConfigResponse.fromMap((map['encryptionConfig']! as Map).cast<String, dynamic>())),
      endpointUri: pulumi.Input.fromValue(map['endpointUri'] as String),
      hiveMetastoreConfig: pulumi.Input.fromValue(HiveMetastoreConfigResponse.fromMap((map['hiveMetastoreConfig']! as Map).cast<String, dynamic>())),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      maintenanceWindow: pulumi.Input.fromValue(MaintenanceWindowResponse.fromMap((map['maintenanceWindow']! as Map).cast<String, dynamic>())),
      metadataIntegration: pulumi.Input.fromValue(MetadataIntegrationResponse.fromMap((map['metadataIntegration']! as Map).cast<String, dynamic>())),
      metadataManagementActivity: pulumi.Input.fromValue(MetadataManagementActivityResponse.fromMap((map['metadataManagementActivity']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      network: pulumi.Input.fromValue(map['network'] as String),
      networkConfig: pulumi.Input.fromValue(NetworkConfigResponse.fromMap((map['networkConfig']! as Map).cast<String, dynamic>())),
      port: pulumi.Input.fromValue(map['port'] as int),
      releaseChannel: pulumi.Input.fromValue(map['releaseChannel'] as String),
      scalingConfig: pulumi.Input.fromValue(ScalingConfigResponse.fromMap((map['scalingConfig']! as Map).cast<String, dynamic>())),
      state: pulumi.Input.fromValue(map['state'] as String),
      stateMessage: pulumi.Input.fromValue(map['stateMessage'] as String),
      telemetryConfig: pulumi.Input.fromValue(TelemetryConfigResponse.fromMap((map['telemetryConfig']! as Map).cast<String, dynamic>())),
      tier: pulumi.Input.fromValue(map['tier'] as String),
      uid: pulumi.Input.fromValue(map['uid'] as String),
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
    );
  }
}

