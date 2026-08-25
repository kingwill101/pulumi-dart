// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_client_connection_config.dart';
import 'get_instance_connection_pool_config.dart';
import 'get_instance_machine_config.dart';
import 'get_instance_network_config.dart';
import 'get_instance_observability_config.dart';
import 'get_instance_psc_instance_config.dart';
import 'get_instance_query_insights_config.dart';
import 'get_instance_read_pool_config.dart';

/// Result data returned by getInstance.
class GetInstanceResult {
  final String? activationPolicy;
  final Map<String, String>? annotations;
  final String? availabilityType;
  final List<GetInstanceClientConnectionConfig>? clientConnectionConfigs;
  final String? cluster;
  final String? clusterId;
  final List<GetInstanceConnectionPoolConfig>? connectionPoolConfigs;
  final String? createTime;
  final Map<String, String>? databaseFlags;
  final String? deletionPolicy;
  final String? displayName;
  final Map<String, String>? effectiveAnnotations;
  final Map<String, String>? effectiveLabels;
  final String? gceZone;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? instanceId;
  final String? instanceType;
  final String? ipAddress;
  final Map<String, String>? labels;
  final String? location;
  final List<GetInstanceMachineConfig>? machineConfigs;
  final String? name;
  final List<GetInstanceNetworkConfig>? networkConfigs;
  final List<GetInstanceObservabilityConfig>? observabilityConfigs;
  final List<String>? outboundPublicIpAddresses;
  final String? project;
  final List<GetInstancePscInstanceConfig>? pscInstanceConfigs;
  final String? publicIpAddress;
  final Map<String, String>? pulumiLabels;
  final List<GetInstanceQueryInsightsConfig>? queryInsightsConfigs;
  final List<GetInstanceReadPoolConfig>? readPoolConfigs;
  final bool? reconciling;
  final String? state;
  final String? uid;
  final String? updateTime;

  /// Creates a new [GetInstanceResult].
  /// [activationPolicy] Optional.
  /// [annotations] Optional.
  /// [availabilityType] Optional.
  /// [clientConnectionConfigs] Optional.
  /// [cluster] Optional.
  /// [clusterId] Optional.
  /// [connectionPoolConfigs] Optional.
  /// [createTime] Optional.
  /// [databaseFlags] Optional.
  /// [deletionPolicy] Optional.
  /// [displayName] Optional.
  /// [effectiveAnnotations] Optional.
  /// [effectiveLabels] Optional.
  /// [gceZone] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceId] Optional.
  /// [instanceType] Optional.
  /// [ipAddress] Optional.
  /// [labels] Optional.
  /// [location] Optional.
  /// [machineConfigs] Optional.
  /// [name] Optional.
  /// [networkConfigs] Optional.
  /// [observabilityConfigs] Optional.
  /// [outboundPublicIpAddresses] Optional.
  /// [project] Optional.
  /// [pscInstanceConfigs] Optional.
  /// [publicIpAddress] Optional.
  /// [pulumiLabels] Optional.
  /// [queryInsightsConfigs] Optional.
  /// [readPoolConfigs] Optional.
  /// [reconciling] Optional.
  /// [state] Optional.
  /// [uid] Optional.
  /// [updateTime] Optional.
  const GetInstanceResult({
    this.activationPolicy,
    this.annotations,
    this.availabilityType,
    this.clientConnectionConfigs,
    this.cluster,
    this.clusterId,
    this.connectionPoolConfigs,
    this.createTime,
    this.databaseFlags,
    this.deletionPolicy,
    this.displayName,
    this.effectiveAnnotations,
    this.effectiveLabels,
    this.gceZone,
    this.id,
    this.instanceId,
    this.instanceType,
    this.ipAddress,
    this.labels,
    this.location,
    this.machineConfigs,
    this.name,
    this.networkConfigs,
    this.observabilityConfigs,
    this.outboundPublicIpAddresses,
    this.project,
    this.pscInstanceConfigs,
    this.publicIpAddress,
    this.pulumiLabels,
    this.queryInsightsConfigs,
    this.readPoolConfigs,
    this.reconciling,
    this.state,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationPolicy': ?activationPolicy,
      'annotations': ?annotations,
      'availabilityType': ?availabilityType,
      'clientConnectionConfigs': ?(() { final guardedValue = clientConnectionConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceClientConnectionConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'cluster': ?cluster,
      'clusterId': ?clusterId,
      'connectionPoolConfigs': ?(() { final guardedValue = connectionPoolConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceConnectionPoolConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'createTime': ?createTime,
      'databaseFlags': ?databaseFlags,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'effectiveAnnotations': ?effectiveAnnotations,
      'effectiveLabels': ?effectiveLabels,
      'gceZone': ?gceZone,
      'id': ?id,
      'instanceId': ?instanceId,
      'instanceType': ?instanceType,
      'ipAddress': ?ipAddress,
      'labels': ?labels,
      'location': ?location,
      'machineConfigs': ?(() { final guardedValue = machineConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceMachineConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'networkConfigs': ?(() { final guardedValue = networkConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceNetworkConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'observabilityConfigs': ?(() { final guardedValue = observabilityConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceObservabilityConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'outboundPublicIpAddresses': ?outboundPublicIpAddresses,
      'project': ?project,
      'pscInstanceConfigs': ?(() { final guardedValue = pscInstanceConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstancePscInstanceConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'publicIpAddress': ?publicIpAddress,
      'pulumiLabels': ?pulumiLabels,
      'queryInsightsConfigs': ?(() { final guardedValue = queryInsightsConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceQueryInsightsConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'readPoolConfigs': ?(() { final guardedValue = readPoolConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceReadPoolConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'reconciling': ?reconciling,
      'state': ?state,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory GetInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceResult(
      activationPolicy: (() { final guardedValue = map['activationPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      availabilityType: (() { final guardedValue = map['availabilityType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clientConnectionConfigs: (() { final guardedValue = map['clientConnectionConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceClientConnectionConfig>(guardedValue, (value) => GetInstanceClientConnectionConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      cluster: (() { final guardedValue = map['cluster']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectionPoolConfigs: (() { final guardedValue = map['connectionPoolConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceConnectionPoolConfig>(guardedValue, (value) => GetInstanceConnectionPoolConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      databaseFlags: (() { final guardedValue = map['databaseFlags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effectiveAnnotations: (() { final guardedValue = map['effectiveAnnotations']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      gceZone: (() { final guardedValue = map['gceZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      machineConfigs: (() { final guardedValue = map['machineConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceMachineConfig>(guardedValue, (value) => GetInstanceMachineConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkConfigs: (() { final guardedValue = map['networkConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceNetworkConfig>(guardedValue, (value) => GetInstanceNetworkConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      observabilityConfigs: (() { final guardedValue = map['observabilityConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceObservabilityConfig>(guardedValue, (value) => GetInstanceObservabilityConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      outboundPublicIpAddresses: (() { final guardedValue = map['outboundPublicIpAddresses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pscInstanceConfigs: (() { final guardedValue = map['pscInstanceConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstancePscInstanceConfig>(guardedValue, (value) => GetInstancePscInstanceConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      publicIpAddress: (() { final guardedValue = map['publicIpAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      queryInsightsConfigs: (() { final guardedValue = map['queryInsightsConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceQueryInsightsConfig>(guardedValue, (value) => GetInstanceQueryInsightsConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      readPoolConfigs: (() { final guardedValue = map['readPoolConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceReadPoolConfig>(guardedValue, (value) => GetInstanceReadPoolConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      reconciling: (() { final guardedValue = map['reconciling']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
