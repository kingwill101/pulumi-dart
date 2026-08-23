// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_metastore_service_encryption_config.dart';
import 'get_metastore_service_hive_metastore_config.dart';
import 'get_metastore_service_maintenance_window.dart';
import 'get_metastore_service_metadata_integration.dart';
import 'get_metastore_service_network_config.dart';
import 'get_metastore_service_scaling_config.dart';
import 'get_metastore_service_scheduled_backup.dart';
import 'get_metastore_service_telemetry_config.dart';

/// Result data returned by getMetastoreService.
class GetMetastoreServiceResult {
  final String artifactGcsUri;
  final String createTime;
  final String databaseType;
  final String deletionPolicy;
  final bool deletionProtection;
  final Map<String, String> effectiveLabels;
  final List<GetMetastoreServiceEncryptionConfig> encryptionConfigs;
  final String endpointUri;
  final List<GetMetastoreServiceHiveMetastoreConfig> hiveMetastoreConfigs;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final Map<String, String> labels;
  final String location;
  final List<GetMetastoreServiceMaintenanceWindow> maintenanceWindows;
  final List<GetMetastoreServiceMetadataIntegration> metadataIntegrations;
  final String name;
  final String network;
  final List<GetMetastoreServiceNetworkConfig> networkConfigs;
  final int port;
  final String? project;
  final Map<String, String> pulumiLabels;
  final String releaseChannel;
  final List<GetMetastoreServiceScalingConfig> scalingConfigs;
  final List<GetMetastoreServiceScheduledBackup> scheduledBackups;
  final String serviceId;
  final String state;
  final String stateMessage;
  final Map<String, String> tags;
  final List<GetMetastoreServiceTelemetryConfig> telemetryConfigs;
  final String tier;
  final String uid;
  final String updateTime;

  /// Creates a new [GetMetastoreServiceResult].
  /// [artifactGcsUri] Required.
  /// [createTime] Required.
  /// [databaseType] Required.
  /// [deletionPolicy] Required.
  /// [deletionProtection] Required.
  /// [effectiveLabels] Required.
  /// [encryptionConfigs] Required.
  /// [endpointUri] Required.
  /// [hiveMetastoreConfigs] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] Required.
  /// [location] Required.
  /// [maintenanceWindows] Required.
  /// [metadataIntegrations] Required.
  /// [name] Required.
  /// [network] Required.
  /// [networkConfigs] Required.
  /// [port] Required.
  /// [project] Optional.
  /// [pulumiLabels] Required.
  /// [releaseChannel] Required.
  /// [scalingConfigs] Required.
  /// [scheduledBackups] Required.
  /// [serviceId] Required.
  /// [state] Required.
  /// [stateMessage] Required.
  /// [tags] Required.
  /// [telemetryConfigs] Required.
  /// [tier] Required.
  /// [uid] Required.
  /// [updateTime] Required.
  const GetMetastoreServiceResult({
    required this.artifactGcsUri,
    required this.createTime,
    required this.databaseType,
    required this.deletionPolicy,
    required this.deletionProtection,
    required this.effectiveLabels,
    required this.encryptionConfigs,
    required this.endpointUri,
    required this.hiveMetastoreConfigs,
    required this.id,
    required this.labels,
    required this.location,
    required this.maintenanceWindows,
    required this.metadataIntegrations,
    required this.name,
    required this.network,
    required this.networkConfigs,
    required this.port,
    this.project,
    required this.pulumiLabels,
    required this.releaseChannel,
    required this.scalingConfigs,
    required this.scheduledBackups,
    required this.serviceId,
    required this.state,
    required this.stateMessage,
    required this.tags,
    required this.telemetryConfigs,
    required this.tier,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactGcsUri': artifactGcsUri,
      'createTime': createTime,
      'databaseType': databaseType,
      'deletionPolicy': deletionPolicy,
      'deletionProtection': deletionProtection,
      'effectiveLabels': effectiveLabels,
      'encryptionConfigs': pulumi.Input.encodeList<GetMetastoreServiceEncryptionConfig, Map<String, dynamic>>(encryptionConfigs, (value) => value.toMap()),
      'endpointUri': endpointUri,
      'hiveMetastoreConfigs': pulumi.Input.encodeList<GetMetastoreServiceHiveMetastoreConfig, Map<String, dynamic>>(hiveMetastoreConfigs, (value) => value.toMap()),
      'id': id,
      'labels': labels,
      'location': location,
      'maintenanceWindows': pulumi.Input.encodeList<GetMetastoreServiceMaintenanceWindow, Map<String, dynamic>>(maintenanceWindows, (value) => value.toMap()),
      'metadataIntegrations': pulumi.Input.encodeList<GetMetastoreServiceMetadataIntegration, Map<String, dynamic>>(metadataIntegrations, (value) => value.toMap()),
      'name': name,
      'network': network,
      'networkConfigs': pulumi.Input.encodeList<GetMetastoreServiceNetworkConfig, Map<String, dynamic>>(networkConfigs, (value) => value.toMap()),
      'port': port,
      'project': ?project,
      'pulumiLabels': pulumiLabels,
      'releaseChannel': releaseChannel,
      'scalingConfigs': pulumi.Input.encodeList<GetMetastoreServiceScalingConfig, Map<String, dynamic>>(scalingConfigs, (value) => value.toMap()),
      'scheduledBackups': pulumi.Input.encodeList<GetMetastoreServiceScheduledBackup, Map<String, dynamic>>(scheduledBackups, (value) => value.toMap()),
      'serviceId': serviceId,
      'state': state,
      'stateMessage': stateMessage,
      'tags': tags,
      'telemetryConfigs': pulumi.Input.encodeList<GetMetastoreServiceTelemetryConfig, Map<String, dynamic>>(telemetryConfigs, (value) => value.toMap()),
      'tier': tier,
      'uid': uid,
      'updateTime': updateTime,
    };
  }

  factory GetMetastoreServiceResult.fromMap(Map<String, dynamic> map) {
    return GetMetastoreServiceResult(
      artifactGcsUri: map['artifactGcsUri'] as String,
      createTime: map['createTime'] as String,
      databaseType: map['databaseType'] as String,
      deletionPolicy: map['deletionPolicy'] as String,
      deletionProtection: map['deletionProtection'] as bool,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      encryptionConfigs: pulumi.Input.decodeList<GetMetastoreServiceEncryptionConfig>(map['encryptionConfigs']!, (value) => GetMetastoreServiceEncryptionConfig.fromMap((value as Map).cast<String, dynamic>())),
      endpointUri: map['endpointUri'] as String,
      hiveMetastoreConfigs: pulumi.Input.decodeList<GetMetastoreServiceHiveMetastoreConfig>(map['hiveMetastoreConfigs']!, (value) => GetMetastoreServiceHiveMetastoreConfig.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      maintenanceWindows: pulumi.Input.decodeList<GetMetastoreServiceMaintenanceWindow>(map['maintenanceWindows']!, (value) => GetMetastoreServiceMaintenanceWindow.fromMap((value as Map).cast<String, dynamic>())),
      metadataIntegrations: pulumi.Input.decodeList<GetMetastoreServiceMetadataIntegration>(map['metadataIntegrations']!, (value) => GetMetastoreServiceMetadataIntegration.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      network: map['network'] as String,
      networkConfigs: pulumi.Input.decodeList<GetMetastoreServiceNetworkConfig>(map['networkConfigs']!, (value) => GetMetastoreServiceNetworkConfig.fromMap((value as Map).cast<String, dynamic>())),
      port: map['port'] as int,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      releaseChannel: map['releaseChannel'] as String,
      scalingConfigs: pulumi.Input.decodeList<GetMetastoreServiceScalingConfig>(map['scalingConfigs']!, (value) => GetMetastoreServiceScalingConfig.fromMap((value as Map).cast<String, dynamic>())),
      scheduledBackups: pulumi.Input.decodeList<GetMetastoreServiceScheduledBackup>(map['scheduledBackups']!, (value) => GetMetastoreServiceScheduledBackup.fromMap((value as Map).cast<String, dynamic>())),
      serviceId: map['serviceId'] as String,
      state: map['state'] as String,
      stateMessage: map['stateMessage'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      telemetryConfigs: pulumi.Input.decodeList<GetMetastoreServiceTelemetryConfig>(map['telemetryConfigs']!, (value) => GetMetastoreServiceTelemetryConfig.fromMap((value as Map).cast<String, dynamic>())),
      tier: map['tier'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
