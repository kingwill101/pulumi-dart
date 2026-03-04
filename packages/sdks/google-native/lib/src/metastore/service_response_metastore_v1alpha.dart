// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_config_response_metastore_v1alpha.dart';
import 'hive_metastore_config_response_metastore_v1alpha.dart';
import 'maintenance_window_response_metastore_v1alpha.dart';
import 'metadata_integration_response_metastore_v1alpha.dart';
import 'metadata_management_activity_response_metastore_v1alpha.dart';
import 'network_config_response_metastore_v1alpha.dart';
import 'scaling_config_response_metastore_v1alpha.dart';
import 'telemetry_config_response_metastore_v1alpha.dart';

/// A managed metastore service that serves metadata queries.
class ServiceResponseMetastoreV1alpha {
  /// A Cloud Storage URI (starting with gs://) that specifies where artifacts related to the metastore service are stored.
  final pulumi.Input<String> artifactGcsUri;

  /// The time when the metastore service was created.
  final pulumi.Input<String> createTime;

  /// Immutable. The database type that the Metastore service stores its data.
  final pulumi.Input<String> databaseType;

  /// Immutable. Information used to configure the Dataproc Metastore service to encrypt customer data at rest. Cannot be updated.
  final pulumi.Input<EncryptionConfigResponseMetastoreV1alpha> encryptionConfig;

  /// The URI of the endpoint used to access the metastore service.
  final pulumi.Input<String> endpointUri;

  /// Configuration information specific to running Hive metastore software as the metastore service.
  final pulumi.Input<HiveMetastoreConfigResponseMetastoreV1alpha>
  hiveMetastoreConfig;

  /// User-defined labels for the metastore service.
  final pulumi.Input<Map<String, String>> labels;

  /// The one hour maintenance window of the metastore service. This specifies when the service can be restarted for maintenance purposes in UTC time. Maintenance window is not needed for services with the SPANNER database type.
  final pulumi.Input<MaintenanceWindowResponseMetastoreV1alpha>
  maintenanceWindow;

  /// Optional. The setting that defines how metastore metadata should be integrated with external services and systems.
  final pulumi.Input<MetadataIntegrationResponseMetastoreV1alpha>
  metadataIntegration;

  /// The metadata management activities of the metastore service.
  final pulumi.Input<MetadataManagementActivityResponseMetastoreV1alpha>
  metadataManagementActivity;

  /// Immutable. The relative resource name of the metastore service, in the following format:projects/{project_number}/locations/{location_id}/services/{service_id}.
  final pulumi.Input<String> name;

  /// Immutable. The relative resource name of the VPC network on which the instance can be accessed. It is specified in the following form:projects/{project_number}/global/networks/{network_id}.
  final pulumi.Input<String> network;

  /// The configuration specifying the network settings for the Dataproc Metastore service.
  final pulumi.Input<NetworkConfigResponseMetastoreV1alpha> networkConfig;

  /// The TCP port at which the metastore service is reached. Default: 9083.
  final pulumi.Input<int> port;

  /// Immutable. The release channel of the service. If unspecified, defaults to STABLE.
  final pulumi.Input<String> releaseChannel;

  /// Scaling configuration of the metastore service.
  final pulumi.Input<ScalingConfigResponseMetastoreV1alpha> scalingConfig;

  /// The current state of the metastore service.
  final pulumi.Input<String> state;

  /// Additional information about the current state of the metastore service, if available.
  final pulumi.Input<String> stateMessage;

  /// The configuration specifying telemetry settings for the Dataproc Metastore service. If unspecified defaults to JSON.
  final pulumi.Input<TelemetryConfigResponseMetastoreV1alpha> telemetryConfig;

  /// The tier of the service.
  final pulumi.Input<String> tier;

  /// The globally unique resource identifier of the metastore service.
  final pulumi.Input<String> uid;

  /// The time when the metastore service was last updated.
  final pulumi.Input<String> updateTime;

  /// Creates a new [ServiceResponseMetastoreV1alpha].
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
  ServiceResponseMetastoreV1alpha({
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
      'encryptionConfig':
          pulumi.Input.mapInputValue<
            EncryptionConfigResponseMetastoreV1alpha,
            Map<String, dynamic>
          >(encryptionConfig, (value) => value.toMap()),
      'endpointUri': endpointUri,
      'hiveMetastoreConfig':
          pulumi.Input.mapInputValue<
            HiveMetastoreConfigResponseMetastoreV1alpha,
            Map<String, dynamic>
          >(hiveMetastoreConfig, (value) => value.toMap()),
      'labels': labels,
      'maintenanceWindow':
          pulumi.Input.mapInputValue<
            MaintenanceWindowResponseMetastoreV1alpha,
            Map<String, dynamic>
          >(maintenanceWindow, (value) => value.toMap()),
      'metadataIntegration':
          pulumi.Input.mapInputValue<
            MetadataIntegrationResponseMetastoreV1alpha,
            Map<String, dynamic>
          >(metadataIntegration, (value) => value.toMap()),
      'metadataManagementActivity':
          pulumi.Input.mapInputValue<
            MetadataManagementActivityResponseMetastoreV1alpha,
            Map<String, dynamic>
          >(metadataManagementActivity, (value) => value.toMap()),
      'name': name,
      'network': network,
      'networkConfig':
          pulumi.Input.mapInputValue<
            NetworkConfigResponseMetastoreV1alpha,
            Map<String, dynamic>
          >(networkConfig, (value) => value.toMap()),
      'port': port,
      'releaseChannel': releaseChannel,
      'scalingConfig':
          pulumi.Input.mapInputValue<
            ScalingConfigResponseMetastoreV1alpha,
            Map<String, dynamic>
          >(scalingConfig, (value) => value.toMap()),
      'state': state,
      'stateMessage': stateMessage,
      'telemetryConfig':
          pulumi.Input.mapInputValue<
            TelemetryConfigResponseMetastoreV1alpha,
            Map<String, dynamic>
          >(telemetryConfig, (value) => value.toMap()),
      'tier': tier,
      'uid': uid,
      'updateTime': updateTime,
    };
  }

  factory ServiceResponseMetastoreV1alpha.fromMap(Map<String, dynamic> map) {
    return ServiceResponseMetastoreV1alpha(
      artifactGcsUri: pulumi.Input.fromValue(map['artifactGcsUri'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      databaseType: pulumi.Input.fromValue(map['databaseType'] as String),
      encryptionConfig: pulumi.Input.fromValue(
        EncryptionConfigResponseMetastoreV1alpha.fromMap(
          (map['encryptionConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      endpointUri: pulumi.Input.fromValue(map['endpointUri'] as String),
      hiveMetastoreConfig: pulumi.Input.fromValue(
        HiveMetastoreConfigResponseMetastoreV1alpha.fromMap(
          (map['hiveMetastoreConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      labels: pulumi.Input.fromValue(
        (map['labels'] as Map).cast<String, String>(),
      ),
      maintenanceWindow: pulumi.Input.fromValue(
        MaintenanceWindowResponseMetastoreV1alpha.fromMap(
          (map['maintenanceWindow']! as Map).cast<String, dynamic>(),
        ),
      ),
      metadataIntegration: pulumi.Input.fromValue(
        MetadataIntegrationResponseMetastoreV1alpha.fromMap(
          (map['metadataIntegration']! as Map).cast<String, dynamic>(),
        ),
      ),
      metadataManagementActivity: pulumi.Input.fromValue(
        MetadataManagementActivityResponseMetastoreV1alpha.fromMap(
          (map['metadataManagementActivity']! as Map).cast<String, dynamic>(),
        ),
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
      network: pulumi.Input.fromValue(map['network'] as String),
      networkConfig: pulumi.Input.fromValue(
        NetworkConfigResponseMetastoreV1alpha.fromMap(
          (map['networkConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      port: pulumi.Input.fromValue(map['port'] as int),
      releaseChannel: pulumi.Input.fromValue(map['releaseChannel'] as String),
      scalingConfig: pulumi.Input.fromValue(
        ScalingConfigResponseMetastoreV1alpha.fromMap(
          (map['scalingConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      state: pulumi.Input.fromValue(map['state'] as String),
      stateMessage: pulumi.Input.fromValue(map['stateMessage'] as String),
      telemetryConfig: pulumi.Input.fromValue(
        TelemetryConfigResponseMetastoreV1alpha.fromMap(
          (map['telemetryConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      tier: pulumi.Input.fromValue(map['tier'] as String),
      uid: pulumi.Input.fromValue(map['uid'] as String),
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
    );
  }
}
