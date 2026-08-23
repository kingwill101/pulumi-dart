// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_memcache_v1_maintenance_policy.dart';
import 'instance_memcache_version.dart';
import 'instance_message.dart';
import 'memcache_parameters.dart';
import 'node_config.dart';

/// {@template pulumi_memcache_v1_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_memcache_v1_instance_args_doc}
class InstanceArgs {
  /// The full name of the Google Compute Engine [network](/compute/docs/networks-and-firewalls#networks) to which the instance is connected. If left unspecified, the `default` network will be used.
  final pulumi.Input<String>? authorizedNetwork;
  /// User provided name for the instance, which is only used for display purposes. Cannot be more than 80 characters.
  final pulumi.Input<String>? displayName;
  /// Required. The logical name of the Memcached instance in the user project with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-40 characters. * Must end with a number or a letter. * Must be unique within the user project / location. If any of the above are not met, the API raises an invalid argument error.
  final pulumi.Input<String> instanceId;
  /// List of messages that describe the current state of the Memcached instance.
  final pulumi.Input<List<InstanceMessage>>? instanceMessages;
  /// Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// The maintenance policy for the instance. If not provided, the maintenance event will be performed based on Memorystore internal rollout schedule.
  final pulumi.Input<GoogleCloudMemcacheV1MaintenancePolicy>? maintenancePolicy;
  /// The major version of Memcached software. If not provided, latest supported version will be used. Currently the latest supported major version is `MEMCACHE_1_5`. The minor version will be automatically determined by our system based on the latest supported minor version.
  final pulumi.Input<InstanceMemcacheVersion>? memcacheVersion;
  /// Unique name of the resource in this scope including project and location using the form: `projects/{project_id}/locations/{location_id}/instances/{instance_id}` Note: Memcached instances are managed and addressed at the regional level so `location_id` here refers to a Google Cloud region; however, users may choose which zones Memcached nodes should be provisioned in within an instance. Refer to zones field for more details.
  final pulumi.Input<String>? name;
  /// Configuration for Memcached nodes.
  final pulumi.Input<NodeConfig> nodeConfig;
  /// Number of nodes in the Memcached instance.
  final pulumi.Input<int> nodeCount;
  /// User defined parameters to apply to the memcached process on each node.
  final pulumi.Input<MemcacheParameters>? parameters;
  final pulumi.Input<String>? project;
  /// Optional. Contains the id of allocated IP address ranges associated with the private service access connection for example, "test-default" associated with IP range 10.0.0.0/29.
  final pulumi.Input<List<String>>? reservedIpRangeId;
  /// Zones in which Memcached nodes should be provisioned. Memcached nodes will be equally distributed across these zones. If not provided, the service will by default create nodes in all zones in the region for the instance.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [InstanceArgs].
  /// [authorizedNetwork] The full name of the Google Compute Engine [network](/compute/docs/networks-and-firewalls#networks) to which the instance is connected. If left unspecified, the `default` network will be used.
  /// [displayName] User provided name for the instance, which is only used for display purposes. Cannot be more than 80 characters.
  /// [instanceId] Required. The logical name of the Memcached instance in the user project with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-40 characters. * Must end with a number or a letter. * Must be unique within the user project / location. If any of the above are not met, the API raises an invalid argument error.
  /// [instanceMessages] List of messages that describe the current state of the Memcached instance.
  /// [labels] Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  /// [location] Optional.
  /// [maintenancePolicy] The maintenance policy for the instance. If not provided, the maintenance event will be performed based on Memorystore internal rollout schedule.
  /// [memcacheVersion] The major version of Memcached software. If not provided, latest supported version will be used. Currently the latest supported major version is `MEMCACHE_1_5`. The minor version will be automatically determined by our system based on the latest supported minor version.
  /// [name] Unique name of the resource in this scope including project and location using the form: `projects/{project_id}/locations/{location_id}/instances/{instance_id}` Note: Memcached instances are managed and addressed at the regional level so `location_id` here refers to a Google Cloud region; however, users may choose which zones Memcached nodes should be provisioned in within an instance. Refer to zones field for more details.
  /// [nodeConfig] Configuration for Memcached nodes.
  /// [nodeCount] Number of nodes in the Memcached instance.
  /// [parameters] User defined parameters to apply to the memcached process on each node.
  /// [project] Optional.
  /// [reservedIpRangeId] Optional. Contains the id of allocated IP address ranges associated with the private service access connection for example, "test-default" associated with IP range 10.0.0.0/29.
  /// [zones] Zones in which Memcached nodes should be provisioned. Memcached nodes will be equally distributed across these zones. If not provided, the service will by default create nodes in all zones in the region for the instance.
  const InstanceArgs({
    this.authorizedNetwork,
    this.displayName,
    required this.instanceId,
    this.instanceMessages,
    this.labels,
    this.location,
    this.maintenancePolicy,
    this.memcacheVersion,
    this.name,
    required this.nodeConfig,
    required this.nodeCount,
    this.parameters,
    this.project,
    this.reservedIpRangeId,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizedNetwork': ?authorizedNetwork,
      'displayName': ?displayName,
      'instanceId': instanceId,
      'instanceMessages': ?pulumi.Input.mapOptionalInputValue<List<InstanceMessage>, List<Map<String, dynamic>>>(instanceMessages, (value) => pulumi.Input.encodeList<InstanceMessage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labels': ?labels,
      'location': ?location,
      'maintenancePolicy': ?pulumi.Input.mapOptionalInputValue<GoogleCloudMemcacheV1MaintenancePolicy, Map<String, dynamic>>(maintenancePolicy, (value) => value.toMap()),
      'memcacheVersion': ?pulumi.Input.mapOptionalInputValue<InstanceMemcacheVersion, String>(memcacheVersion, (value) => value.wireValue),
      'name': ?name,
      'nodeConfig': pulumi.Input.mapInputValue<NodeConfig, Map<String, dynamic>>(nodeConfig, (value) => value.toMap()),
      'nodeCount': nodeCount,
      'parameters': ?pulumi.Input.mapOptionalInputValue<MemcacheParameters, Map<String, dynamic>>(parameters, (value) => value.toMap()),
      'project': ?project,
      'reservedIpRangeId': ?reservedIpRangeId,
      'zones': ?zones,
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      authorizedNetwork: (() { final guardedValue = map['authorizedNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      instanceMessages: (() { final guardedValue = map['instanceMessages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceMessage>(guardedValue, (value) => InstanceMessage.fromMap((value as Map).cast<String, dynamic>()))); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintenancePolicy: (() { final guardedValue = map['maintenancePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudMemcacheV1MaintenancePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      memcacheVersion: (() { final guardedValue = map['memcacheVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceMemcacheVersion.fromValue(guardedValue as String)); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeConfig: pulumi.Input.fromValue(NodeConfig.fromMap((map['nodeConfig']! as Map).cast<String, dynamic>())),
      nodeCount: pulumi.Input.fromValue(map['nodeCount'] as int),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MemcacheParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reservedIpRangeId: (() { final guardedValue = map['reservedIpRangeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
