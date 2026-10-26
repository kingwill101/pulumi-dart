// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_memcache_v1beta2_maintenance_policy_response.dart';
import 'instance_message_response_memcache_v1beta2.dart';
import 'maintenance_schedule_response_memcache_v1beta2.dart';
import 'memcache_parameters_response_memcache_v1beta2.dart';
import 'node_config_response_memcache_v1beta2.dart';
import 'node_response_memcache_v1beta2.dart';

/// Result data returned by getInstance.
class GetInstanceMemcacheV1beta2Result {
  /// The full name of the Google Compute Engine [network](https://cloud.google.com/vpc/docs/vpc) to which the instance is connected. If left unspecified, the `default` network will be used.
  final String? authorizedNetwork;
  /// The time the instance was created.
  final String? createTime;
  /// Endpoint for the Discovery API.
  final String? discoveryEndpoint;
  /// User provided name for the instance, which is only used for display purposes. Cannot be more than 80 characters.
  final String? displayName;
  /// List of messages that describe the current state of the Memcached instance.
  final List<InstanceMessageResponseMemcacheV1beta2>? instanceMessages;
  /// Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  final Map<String, String>? labels;
  /// The maintenance policy for the instance. If not provided, the maintenance event will be performed based on Memorystore internal rollout schedule.
  final GoogleCloudMemcacheV1beta2MaintenancePolicyResponse? maintenancePolicy;
  /// Published maintenance schedule.
  final MaintenanceScheduleResponseMemcacheV1beta2? maintenanceSchedule;
  /// The full version of memcached server running on this instance. System automatically determines the full memcached version for an instance based on the input MemcacheVersion. The full version format will be "memcached-1.5.16".
  final String? memcacheFullVersion;
  /// List of Memcached nodes. Refer to Node message for more details.
  final List<NodeResponseMemcacheV1beta2>? memcacheNodes;
  /// The major version of Memcached software. If not provided, latest supported version will be used. Currently the latest supported major version is `MEMCACHE_1_5`. The minor version will be automatically determined by our system based on the latest supported minor version.
  final String? memcacheVersion;
  /// Unique name of the resource in this scope including project and location using the form: `projects/{project_id}/locations/{location_id}/instances/{instance_id}` Note: Memcached instances are managed and addressed at the regional level so `location_id` here refers to a Google Cloud region; however, users may choose which zones Memcached nodes should be provisioned in within an instance. Refer to zones field for more details.
  final String? name;
  /// Configuration for Memcached nodes.
  final NodeConfigResponseMemcacheV1beta2? nodeConfig;
  /// Number of nodes in the Memcached instance.
  final int? nodeCount;
  /// User defined parameters to apply to the memcached process on each node.
  final MemcacheParametersResponseMemcacheV1beta2? parameters;
  /// Optional. Contains the id of allocated IP address ranges associated with the private service access connection for example, "test-default" associated with IP range 10.0.0.0/29.
  final List<String>? reservedIpRangeId;
  /// The state of this Memcached instance.
  final String? state;
  /// Returns true if there is an update waiting to be applied
  final bool? updateAvailable;
  /// The time the instance was updated.
  final String? updateTime;
  /// Zones in which Memcached nodes should be provisioned. Memcached nodes will be equally distributed across these zones. If not provided, the service will by default create nodes in all zones in the region for the instance.
  final List<String>? zones;

  /// Creates a new [GetInstanceMemcacheV1beta2Result].
  /// [authorizedNetwork] The full name of the Google Compute Engine [network](https://cloud.google.com/vpc/docs/vpc) to which the instance is connected. If left unspecified, the `default` network will be used.
  /// [createTime] The time the instance was created.
  /// [discoveryEndpoint] Endpoint for the Discovery API.
  /// [displayName] User provided name for the instance, which is only used for display purposes. Cannot be more than 80 characters.
  /// [instanceMessages] List of messages that describe the current state of the Memcached instance.
  /// [labels] Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  /// [maintenancePolicy] The maintenance policy for the instance. If not provided, the maintenance event will be performed based on Memorystore internal rollout schedule.
  /// [maintenanceSchedule] Published maintenance schedule.
  /// [memcacheFullVersion] The full version of memcached server running on this instance. System automatically determines the full memcached version for an instance based on the input MemcacheVersion. The full version format will be "memcached-1.5.16".
  /// [memcacheNodes] List of Memcached nodes. Refer to Node message for more details.
  /// [memcacheVersion] The major version of Memcached software. If not provided, latest supported version will be used. Currently the latest supported major version is `MEMCACHE_1_5`. The minor version will be automatically determined by our system based on the latest supported minor version.
  /// [name] Unique name of the resource in this scope including project and location using the form: `projects/{project_id}/locations/{location_id}/instances/{instance_id}` Note: Memcached instances are managed and addressed at the regional level so `location_id` here refers to a Google Cloud region; however, users may choose which zones Memcached nodes should be provisioned in within an instance. Refer to zones field for more details.
  /// [nodeConfig] Configuration for Memcached nodes.
  /// [nodeCount] Number of nodes in the Memcached instance.
  /// [parameters] User defined parameters to apply to the memcached process on each node.
  /// [reservedIpRangeId] Optional. Contains the id of allocated IP address ranges associated with the private service access connection for example, "test-default" associated with IP range 10.0.0.0/29.
  /// [state] The state of this Memcached instance.
  /// [updateAvailable] Returns true if there is an update waiting to be applied
  /// [updateTime] The time the instance was updated.
  /// [zones] Zones in which Memcached nodes should be provisioned. Memcached nodes will be equally distributed across these zones. If not provided, the service will by default create nodes in all zones in the region for the instance.
  const GetInstanceMemcacheV1beta2Result({
    this.authorizedNetwork,
    this.createTime,
    this.discoveryEndpoint,
    this.displayName,
    this.instanceMessages,
    this.labels,
    this.maintenancePolicy,
    this.maintenanceSchedule,
    this.memcacheFullVersion,
    this.memcacheNodes,
    this.memcacheVersion,
    this.name,
    this.nodeConfig,
    this.nodeCount,
    this.parameters,
    this.reservedIpRangeId,
    this.state,
    this.updateAvailable,
    this.updateTime,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizedNetwork': ?authorizedNetwork,
      'createTime': ?createTime,
      'discoveryEndpoint': ?discoveryEndpoint,
      'displayName': ?displayName,
      'instanceMessages': ?(() { final guardedValue = instanceMessages; if (guardedValue == null) return null; return pulumi.Input.encodeList<InstanceMessageResponseMemcacheV1beta2, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'labels': ?labels,
      'maintenancePolicy': ?maintenancePolicy?.toMap(),
      'maintenanceSchedule': ?maintenanceSchedule?.toMap(),
      'memcacheFullVersion': ?memcacheFullVersion,
      'memcacheNodes': ?(() { final guardedValue = memcacheNodes; if (guardedValue == null) return null; return pulumi.Input.encodeList<NodeResponseMemcacheV1beta2, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'memcacheVersion': ?memcacheVersion,
      'name': ?name,
      'nodeConfig': ?nodeConfig?.toMap(),
      'nodeCount': ?nodeCount,
      'parameters': ?parameters?.toMap(),
      'reservedIpRangeId': ?reservedIpRangeId,
      'state': ?state,
      'updateAvailable': ?updateAvailable,
      'updateTime': ?updateTime,
      'zones': ?zones,
    };
  }

  factory GetInstanceMemcacheV1beta2Result.fromMap(Map<String, dynamic> map) {
    return GetInstanceMemcacheV1beta2Result(
      authorizedNetwork: (() { final guardedValue = map['authorizedNetwork']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      discoveryEndpoint: (() { final guardedValue = map['discoveryEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceMessages: (() { final guardedValue = map['instanceMessages']; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceMessageResponseMemcacheV1beta2>(guardedValue, (value) => InstanceMessageResponseMemcacheV1beta2.fromMap((value as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      maintenancePolicy: (() { final guardedValue = map['maintenancePolicy']; if (guardedValue == null) return null; return GoogleCloudMemcacheV1beta2MaintenancePolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      maintenanceSchedule: (() { final guardedValue = map['maintenanceSchedule']; if (guardedValue == null) return null; return MaintenanceScheduleResponseMemcacheV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      memcacheFullVersion: (() { final guardedValue = map['memcacheFullVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      memcacheNodes: (() { final guardedValue = map['memcacheNodes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<NodeResponseMemcacheV1beta2>(guardedValue, (value) => NodeResponseMemcacheV1beta2.fromMap((value as Map).cast<String, dynamic>())); })(),
      memcacheVersion: (() { final guardedValue = map['memcacheVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodeConfig: (() { final guardedValue = map['nodeConfig']; if (guardedValue == null) return null; return NodeConfigResponseMemcacheV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      nodeCount: (() { final guardedValue = map['nodeCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return MemcacheParametersResponseMemcacheV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      reservedIpRangeId: (() { final guardedValue = map['reservedIpRangeId']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateAvailable: (() { final guardedValue = map['updateAvailable']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
