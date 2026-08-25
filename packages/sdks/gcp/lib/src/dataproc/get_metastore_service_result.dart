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
  final String? artifactGcsUri;
  final String? createTime;
  final String? databaseType;
  final String? deletionPolicy;
  final bool? deletionProtection;
  final Map<String, String>? effectiveLabels;
  final List<GetMetastoreServiceEncryptionConfig>? encryptionConfigs;
  final String? endpointUri;
  final List<GetMetastoreServiceHiveMetastoreConfig>? hiveMetastoreConfigs;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final Map<String, String>? labels;
  final String? location;
  final List<GetMetastoreServiceMaintenanceWindow>? maintenanceWindows;
  final List<GetMetastoreServiceMetadataIntegration>? metadataIntegrations;
  final String? name;
  final String? network;
  final List<GetMetastoreServiceNetworkConfig>? networkConfigs;
  final int? port;
  final String? project;
  final Map<String, String>? pulumiLabels;
  final String? releaseChannel;
  final List<GetMetastoreServiceScalingConfig>? scalingConfigs;
  final List<GetMetastoreServiceScheduledBackup>? scheduledBackups;
  final String? serviceId;
  final String? state;
  final String? stateMessage;
  final Map<String, String>? tags;
  final List<GetMetastoreServiceTelemetryConfig>? telemetryConfigs;
  final String? tier;
  final String? uid;
  final String? updateTime;

  /// Creates a new [GetMetastoreServiceResult].
  /// [artifactGcsUri] Optional.
  /// [createTime] Optional.
  /// [databaseType] Optional.
  /// [deletionPolicy] Optional.
  /// [deletionProtection] Optional.
  /// [effectiveLabels] Optional.
  /// [encryptionConfigs] Optional.
  /// [endpointUri] Optional.
  /// [hiveMetastoreConfigs] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] Optional.
  /// [location] Optional.
  /// [maintenanceWindows] Optional.
  /// [metadataIntegrations] Optional.
  /// [name] Optional.
  /// [network] Optional.
  /// [networkConfigs] Optional.
  /// [port] Optional.
  /// [project] Optional.
  /// [pulumiLabels] Optional.
  /// [releaseChannel] Optional.
  /// [scalingConfigs] Optional.
  /// [scheduledBackups] Optional.
  /// [serviceId] Optional.
  /// [state] Optional.
  /// [stateMessage] Optional.
  /// [tags] Optional.
  /// [telemetryConfigs] Optional.
  /// [tier] Optional.
  /// [uid] Optional.
  /// [updateTime] Optional.
  const GetMetastoreServiceResult({
    this.artifactGcsUri,
    this.createTime,
    this.databaseType,
    this.deletionPolicy,
    this.deletionProtection,
    this.effectiveLabels,
    this.encryptionConfigs,
    this.endpointUri,
    this.hiveMetastoreConfigs,
    this.id,
    this.labels,
    this.location,
    this.maintenanceWindows,
    this.metadataIntegrations,
    this.name,
    this.network,
    this.networkConfigs,
    this.port,
    this.project,
    this.pulumiLabels,
    this.releaseChannel,
    this.scalingConfigs,
    this.scheduledBackups,
    this.serviceId,
    this.state,
    this.stateMessage,
    this.tags,
    this.telemetryConfigs,
    this.tier,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactGcsUri': ?artifactGcsUri,
      'createTime': ?createTime,
      'databaseType': ?databaseType,
      'deletionPolicy': ?deletionPolicy,
      'deletionProtection': ?deletionProtection,
      'effectiveLabels': ?effectiveLabels,
      'encryptionConfigs': ?(() { final guardedValue = encryptionConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetMetastoreServiceEncryptionConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'endpointUri': ?endpointUri,
      'hiveMetastoreConfigs': ?(() { final guardedValue = hiveMetastoreConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetMetastoreServiceHiveMetastoreConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'labels': ?labels,
      'location': ?location,
      'maintenanceWindows': ?(() { final guardedValue = maintenanceWindows; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetMetastoreServiceMaintenanceWindow, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'metadataIntegrations': ?(() { final guardedValue = metadataIntegrations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetMetastoreServiceMetadataIntegration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'network': ?network,
      'networkConfigs': ?(() { final guardedValue = networkConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetMetastoreServiceNetworkConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'port': ?port,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'releaseChannel': ?releaseChannel,
      'scalingConfigs': ?(() { final guardedValue = scalingConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetMetastoreServiceScalingConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'scheduledBackups': ?(() { final guardedValue = scheduledBackups; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetMetastoreServiceScheduledBackup, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'serviceId': ?serviceId,
      'state': ?state,
      'stateMessage': ?stateMessage,
      'tags': ?tags,
      'telemetryConfigs': ?(() { final guardedValue = telemetryConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetMetastoreServiceTelemetryConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tier': ?tier,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory GetMetastoreServiceResult.fromMap(Map<String, dynamic> map) {
    return GetMetastoreServiceResult(
      artifactGcsUri: (() { final guardedValue = map['artifactGcsUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      databaseType: (() { final guardedValue = map['databaseType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      encryptionConfigs: (() { final guardedValue = map['encryptionConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetMetastoreServiceEncryptionConfig>(guardedValue, (value) => GetMetastoreServiceEncryptionConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      endpointUri: (() { final guardedValue = map['endpointUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hiveMetastoreConfigs: (() { final guardedValue = map['hiveMetastoreConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetMetastoreServiceHiveMetastoreConfig>(guardedValue, (value) => GetMetastoreServiceHiveMetastoreConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maintenanceWindows: (() { final guardedValue = map['maintenanceWindows']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetMetastoreServiceMaintenanceWindow>(guardedValue, (value) => GetMetastoreServiceMaintenanceWindow.fromMap((value as Map).cast<String, dynamic>())); })(),
      metadataIntegrations: (() { final guardedValue = map['metadataIntegrations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetMetastoreServiceMetadataIntegration>(guardedValue, (value) => GetMetastoreServiceMetadataIntegration.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkConfigs: (() { final guardedValue = map['networkConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetMetastoreServiceNetworkConfig>(guardedValue, (value) => GetMetastoreServiceNetworkConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      releaseChannel: (() { final guardedValue = map['releaseChannel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scalingConfigs: (() { final guardedValue = map['scalingConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetMetastoreServiceScalingConfig>(guardedValue, (value) => GetMetastoreServiceScalingConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      scheduledBackups: (() { final guardedValue = map['scheduledBackups']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetMetastoreServiceScheduledBackup>(guardedValue, (value) => GetMetastoreServiceScheduledBackup.fromMap((value as Map).cast<String, dynamic>())); })(),
      serviceId: (() { final guardedValue = map['serviceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stateMessage: (() { final guardedValue = map['stateMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      telemetryConfigs: (() { final guardedValue = map['telemetryConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetMetastoreServiceTelemetryConfig>(guardedValue, (value) => GetMetastoreServiceTelemetryConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
