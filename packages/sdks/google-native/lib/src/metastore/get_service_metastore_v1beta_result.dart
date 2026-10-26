// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_config_response_metastore_v1beta.dart';
import 'hive_metastore_config_response_metastore_v1beta.dart';
import 'maintenance_window_response_metastore_v1beta.dart';
import 'metadata_integration_response_metastore_v1beta.dart';
import 'metadata_management_activity_response_metastore_v1beta.dart';
import 'network_config_response_metastore_v1beta.dart';
import 'scaling_config_response_metastore_v1beta.dart';
import 'telemetry_config_response_metastore_v1beta.dart';

/// Result data returned by getService.
class GetServiceMetastoreV1betaResult {
  /// A Cloud Storage URI (starting with gs://) that specifies where artifacts related to the metastore service are stored.
  final String? artifactGcsUri;
  /// The time when the metastore service was created.
  final String? createTime;
  /// Immutable. The database type that the Metastore service stores its data.
  final String? databaseType;
  /// Immutable. Information used to configure the Dataproc Metastore service to encrypt customer data at rest. Cannot be updated.
  final EncryptionConfigResponseMetastoreV1beta? encryptionConfig;
  /// The URI of the endpoint used to access the metastore service.
  final String? endpointUri;
  /// Configuration information specific to running Hive metastore software as the metastore service.
  final HiveMetastoreConfigResponseMetastoreV1beta? hiveMetastoreConfig;
  /// User-defined labels for the metastore service.
  final Map<String, String>? labels;
  /// The one hour maintenance window of the metastore service. This specifies when the service can be restarted for maintenance purposes in UTC time. Maintenance window is not needed for services with the SPANNER database type.
  final MaintenanceWindowResponseMetastoreV1beta? maintenanceWindow;
  /// Optional. The setting that defines how metastore metadata should be integrated with external services and systems.
  final MetadataIntegrationResponseMetastoreV1beta? metadataIntegration;
  /// The metadata management activities of the metastore service.
  final MetadataManagementActivityResponseMetastoreV1beta? metadataManagementActivity;
  /// Immutable. The relative resource name of the metastore service, in the following format:projects/{project_number}/locations/{location_id}/services/{service_id}.
  final String? name;
  /// Immutable. The relative resource name of the VPC network on which the instance can be accessed. It is specified in the following form:projects/{project_number}/global/networks/{network_id}.
  final String? network;
  /// The configuration specifying the network settings for the Dataproc Metastore service.
  final NetworkConfigResponseMetastoreV1beta? networkConfig;
  /// The TCP port at which the metastore service is reached. Default: 9083.
  final int? port;
  /// Immutable. The release channel of the service. If unspecified, defaults to STABLE.
  final String? releaseChannel;
  /// Scaling configuration of the metastore service.
  final ScalingConfigResponseMetastoreV1beta? scalingConfig;
  /// The current state of the metastore service.
  final String? state;
  /// Additional information about the current state of the metastore service, if available.
  final String? stateMessage;
  /// The configuration specifying telemetry settings for the Dataproc Metastore service. If unspecified defaults to JSON.
  final TelemetryConfigResponseMetastoreV1beta? telemetryConfig;
  /// The tier of the service.
  final String? tier;
  /// The globally unique resource identifier of the metastore service.
  final String? uid;
  /// The time when the metastore service was last updated.
  final String? updateTime;

  /// Creates a new [GetServiceMetastoreV1betaResult].
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
  const GetServiceMetastoreV1betaResult({
    this.artifactGcsUri,
    this.createTime,
    this.databaseType,
    this.encryptionConfig,
    this.endpointUri,
    this.hiveMetastoreConfig,
    this.labels,
    this.maintenanceWindow,
    this.metadataIntegration,
    this.metadataManagementActivity,
    this.name,
    this.network,
    this.networkConfig,
    this.port,
    this.releaseChannel,
    this.scalingConfig,
    this.state,
    this.stateMessage,
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
      'encryptionConfig': ?encryptionConfig?.toMap(),
      'endpointUri': ?endpointUri,
      'hiveMetastoreConfig': ?hiveMetastoreConfig?.toMap(),
      'labels': ?labels,
      'maintenanceWindow': ?maintenanceWindow?.toMap(),
      'metadataIntegration': ?metadataIntegration?.toMap(),
      'metadataManagementActivity': ?metadataManagementActivity?.toMap(),
      'name': ?name,
      'network': ?network,
      'networkConfig': ?networkConfig?.toMap(),
      'port': ?port,
      'releaseChannel': ?releaseChannel,
      'scalingConfig': ?scalingConfig?.toMap(),
      'state': ?state,
      'stateMessage': ?stateMessage,
      'telemetryConfig': ?telemetryConfig?.toMap(),
      'tier': ?tier,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory GetServiceMetastoreV1betaResult.fromMap(Map<String, dynamic> map) {
    return GetServiceMetastoreV1betaResult(
      artifactGcsUri: (() { final guardedValue = map['artifactGcsUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      databaseType: (() { final guardedValue = map['databaseType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encryptionConfig: (() { final guardedValue = map['encryptionConfig']; if (guardedValue == null) return null; return EncryptionConfigResponseMetastoreV1beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      endpointUri: (() { final guardedValue = map['endpointUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hiveMetastoreConfig: (() { final guardedValue = map['hiveMetastoreConfig']; if (guardedValue == null) return null; return HiveMetastoreConfigResponseMetastoreV1beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      maintenanceWindow: (() { final guardedValue = map['maintenanceWindow']; if (guardedValue == null) return null; return MaintenanceWindowResponseMetastoreV1beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      metadataIntegration: (() { final guardedValue = map['metadataIntegration']; if (guardedValue == null) return null; return MetadataIntegrationResponseMetastoreV1beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      metadataManagementActivity: (() { final guardedValue = map['metadataManagementActivity']; if (guardedValue == null) return null; return MetadataManagementActivityResponseMetastoreV1beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkConfig: (() { final guardedValue = map['networkConfig']; if (guardedValue == null) return null; return NetworkConfigResponseMetastoreV1beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      releaseChannel: (() { final guardedValue = map['releaseChannel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scalingConfig: (() { final guardedValue = map['scalingConfig']; if (guardedValue == null) return null; return ScalingConfigResponseMetastoreV1beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stateMessage: (() { final guardedValue = map['stateMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      telemetryConfig: (() { final guardedValue = map['telemetryConfig']; if (guardedValue == null) return null; return TelemetryConfigResponseMetastoreV1beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
