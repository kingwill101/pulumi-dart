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
  final String authorizedNetwork;
  /// The time the instance was created.
  final String createTime;
  /// Endpoint for the Discovery API.
  final String discoveryEndpoint;
  /// User provided name for the instance, which is only used for display purposes. Cannot be more than 80 characters.
  final String displayName;
  /// List of messages that describe the current state of the Memcached instance.
  final List<InstanceMessageResponseMemcacheV1beta2> instanceMessages;
  /// Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  final Map<String, String> labels;
  /// The maintenance policy for the instance. If not provided, the maintenance event will be performed based on Memorystore internal rollout schedule.
  final GoogleCloudMemcacheV1beta2MaintenancePolicyResponse maintenancePolicy;
  /// Published maintenance schedule.
  final MaintenanceScheduleResponseMemcacheV1beta2 maintenanceSchedule;
  /// The full version of memcached server running on this instance. System automatically determines the full memcached version for an instance based on the input MemcacheVersion. The full version format will be "memcached-1.5.16".
  final String memcacheFullVersion;
  /// List of Memcached nodes. Refer to Node message for more details.
  final List<NodeResponseMemcacheV1beta2> memcacheNodes;
  /// The major version of Memcached software. If not provided, latest supported version will be used. Currently the latest supported major version is `MEMCACHE_1_5`. The minor version will be automatically determined by our system based on the latest supported minor version.
  final String memcacheVersion;
  /// Unique name of the resource in this scope including project and location using the form: `projects/{project_id}/locations/{location_id}/instances/{instance_id}` Note: Memcached instances are managed and addressed at the regional level so `location_id` here refers to a Google Cloud region; however, users may choose which zones Memcached nodes should be provisioned in within an instance. Refer to zones field for more details.
  final String name;
  /// Configuration for Memcached nodes.
  final NodeConfigResponseMemcacheV1beta2 nodeConfig;
  /// Number of nodes in the Memcached instance.
  final int nodeCount;
  /// User defined parameters to apply to the memcached process on each node.
  final MemcacheParametersResponseMemcacheV1beta2 parameters;
  /// Optional. Contains the id of allocated IP address ranges associated with the private service access connection for example, "test-default" associated with IP range 10.0.0.0/29.
  final List<String> reservedIpRangeId;
  /// The state of this Memcached instance.
  final String state;
  /// Returns true if there is an update waiting to be applied
  final bool updateAvailable;
  /// The time the instance was updated.
  final String updateTime;
  /// Zones in which Memcached nodes should be provisioned. Memcached nodes will be equally distributed across these zones. If not provided, the service will by default create nodes in all zones in the region for the instance.
  final List<String> zones;

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
  GetInstanceMemcacheV1beta2Result({
    required this.authorizedNetwork,
    required this.createTime,
    required this.discoveryEndpoint,
    required this.displayName,
    required this.instanceMessages,
    required this.labels,
    required this.maintenancePolicy,
    required this.maintenanceSchedule,
    required this.memcacheFullVersion,
    required this.memcacheNodes,
    required this.memcacheVersion,
    required this.name,
    required this.nodeConfig,
    required this.nodeCount,
    required this.parameters,
    required this.reservedIpRangeId,
    required this.state,
    required this.updateAvailable,
    required this.updateTime,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizedNetwork': authorizedNetwork,
      'createTime': createTime,
      'discoveryEndpoint': discoveryEndpoint,
      'displayName': displayName,
      'instanceMessages': pulumi.Input.encodeList<InstanceMessageResponseMemcacheV1beta2, Map<String, dynamic>>(instanceMessages, (value) => value.toMap()),
      'labels': labels,
      'maintenancePolicy': maintenancePolicy.toMap(),
      'maintenanceSchedule': maintenanceSchedule.toMap(),
      'memcacheFullVersion': memcacheFullVersion,
      'memcacheNodes': pulumi.Input.encodeList<NodeResponseMemcacheV1beta2, Map<String, dynamic>>(memcacheNodes, (value) => value.toMap()),
      'memcacheVersion': memcacheVersion,
      'name': name,
      'nodeConfig': nodeConfig.toMap(),
      'nodeCount': nodeCount,
      'parameters': parameters.toMap(),
      'reservedIpRangeId': reservedIpRangeId,
      'state': state,
      'updateAvailable': updateAvailable,
      'updateTime': updateTime,
      'zones': zones,
    };
  }

  factory GetInstanceMemcacheV1beta2Result.fromMap(Map<String, dynamic> map) {
    return GetInstanceMemcacheV1beta2Result(
      authorizedNetwork: map['authorizedNetwork'] as String,
      createTime: map['createTime'] as String,
      discoveryEndpoint: map['discoveryEndpoint'] as String,
      displayName: map['displayName'] as String,
      instanceMessages: pulumi.Input.decodeList<InstanceMessageResponseMemcacheV1beta2>(map['instanceMessages']!, (value) => InstanceMessageResponseMemcacheV1beta2.fromMap((value as Map).cast<String, dynamic>())),
      labels: (map['labels'] as Map).cast<String, String>(),
      maintenancePolicy: GoogleCloudMemcacheV1beta2MaintenancePolicyResponse.fromMap((map['maintenancePolicy']! as Map).cast<String, dynamic>()),
      maintenanceSchedule: MaintenanceScheduleResponseMemcacheV1beta2.fromMap((map['maintenanceSchedule']! as Map).cast<String, dynamic>()),
      memcacheFullVersion: map['memcacheFullVersion'] as String,
      memcacheNodes: pulumi.Input.decodeList<NodeResponseMemcacheV1beta2>(map['memcacheNodes']!, (value) => NodeResponseMemcacheV1beta2.fromMap((value as Map).cast<String, dynamic>())),
      memcacheVersion: map['memcacheVersion'] as String,
      name: map['name'] as String,
      nodeConfig: NodeConfigResponseMemcacheV1beta2.fromMap((map['nodeConfig']! as Map).cast<String, dynamic>()),
      nodeCount: map['nodeCount'] as int,
      parameters: MemcacheParametersResponseMemcacheV1beta2.fromMap((map['parameters']! as Map).cast<String, dynamic>()),
      reservedIpRangeId: (map['reservedIpRangeId'] as List).cast<String>(),
      state: map['state'] as String,
      updateAvailable: map['updateAvailable'] as bool,
      updateTime: map['updateTime'] as String,
      zones: (map['zones'] as List).cast<String>(),
    );
  }
}

