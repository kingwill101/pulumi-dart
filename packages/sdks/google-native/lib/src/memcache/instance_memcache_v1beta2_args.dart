// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_memcache_v1beta2_maintenance_policy.dart';
import 'instance_memcache_version_memcache_v1beta2.dart';
import 'instance_message_memcache_v1beta2.dart';
import 'memcache_parameters_memcache_v1beta2.dart';
import 'node_config_memcache_v1beta2.dart';

/// {@template pulumi_memcache_v1beta2_instance_memcache_v1beta2_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_memcache_v1beta2_instance_memcache_v1beta2_args_doc}
class InstanceMemcacheV1beta2Args {
  /// The full name of the Google Compute Engine [network](https://cloud.google.com/vpc/docs/vpc) to which the instance is connected. If left unspecified, the `default` network will be used.
  final pulumi.Input<String>? authorizedNetwork;

  /// User provided name for the instance, which is only used for display purposes. Cannot be more than 80 characters.
  final pulumi.Input<String>? displayName;

  /// Required. The logical name of the Memcached instance in the user project with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-40 characters. * Must end with a number or a letter. * Must be unique within the user project / location. If any of the above are not met, the API raises an invalid argument error.
  final pulumi.Input<String> instanceId;

  /// List of messages that describe the current state of the Memcached instance.
  final pulumi.Input<List<InstanceMessageMemcacheV1beta2>>? instanceMessages;

  /// Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// The maintenance policy for the instance. If not provided, the maintenance event will be performed based on Memorystore internal rollout schedule.
  final pulumi.Input<GoogleCloudMemcacheV1beta2MaintenancePolicy>?
  maintenancePolicy;

  /// The major version of Memcached software. If not provided, latest supported version will be used. Currently the latest supported major version is `MEMCACHE_1_5`. The minor version will be automatically determined by our system based on the latest supported minor version.
  final pulumi.Input<InstanceMemcacheVersionMemcacheV1beta2>? memcacheVersion;

  /// Unique name of the resource in this scope including project and location using the form: `projects/{project_id}/locations/{location_id}/instances/{instance_id}` Note: Memcached instances are managed and addressed at the regional level so `location_id` here refers to a Google Cloud region; however, users may choose which zones Memcached nodes should be provisioned in within an instance. Refer to zones field for more details.
  final pulumi.Input<String>? name;

  /// Configuration for Memcached nodes.
  final pulumi.Input<NodeConfigMemcacheV1beta2> nodeConfig;

  /// Number of nodes in the Memcached instance.
  final pulumi.Input<int> nodeCount;

  /// User defined parameters to apply to the memcached process on each node.
  final pulumi.Input<MemcacheParametersMemcacheV1beta2>? parameters;
  final pulumi.Input<String>? project;

  /// Optional. Contains the id of allocated IP address ranges associated with the private service access connection for example, "test-default" associated with IP range 10.0.0.0/29.
  final pulumi.Input<List<String>>? reservedIpRangeId;

  /// Zones in which Memcached nodes should be provisioned. Memcached nodes will be equally distributed across these zones. If not provided, the service will by default create nodes in all zones in the region for the instance.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [InstanceMemcacheV1beta2Args].
  /// [authorizedNetwork] The full name of the Google Compute Engine [network](https://cloud.google.com/vpc/docs/vpc) to which the instance is connected. If left unspecified, the `default` network will be used.
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
  InstanceMemcacheV1beta2Args({
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
      'instanceMessages':
          ?pulumi.Input.mapOptionalInputValue<
            List<InstanceMessageMemcacheV1beta2>,
            List<Map<String, dynamic>>
          >(
            instanceMessages,
            (value) =>
                pulumi.Input.encodeList<
                  InstanceMessageMemcacheV1beta2,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'labels': ?labels,
      'location': ?location,
      'maintenancePolicy':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudMemcacheV1beta2MaintenancePolicy,
            Map<String, dynamic>
          >(maintenancePolicy, (value) => value.toMap()),
      'memcacheVersion':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceMemcacheVersionMemcacheV1beta2,
            String
          >(memcacheVersion, (value) => value.wireValue),
      'name': ?name,
      'nodeConfig':
          pulumi.Input.mapInputValue<
            NodeConfigMemcacheV1beta2,
            Map<String, dynamic>
          >(nodeConfig, (value) => value.toMap()),
      'nodeCount': nodeCount,
      'parameters':
          ?pulumi.Input.mapOptionalInputValue<
            MemcacheParametersMemcacheV1beta2,
            Map<String, dynamic>
          >(parameters, (value) => value.toMap()),
      'project': ?project,
      'reservedIpRangeId': ?reservedIpRangeId,
      'zones': ?zones,
    };
  }

  factory InstanceMemcacheV1beta2Args.fromMap(Map<String, dynamic> map) {
    return InstanceMemcacheV1beta2Args(
      authorizedNetwork: (() {
        final guardedValue = map['authorizedNetwork'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      instanceMessages: (() {
        final guardedValue = map['instanceMessages'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InstanceMessageMemcacheV1beta2>(
            guardedValue,
            (value) => InstanceMessageMemcacheV1beta2.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      maintenancePolicy: (() {
        final guardedValue = map['maintenancePolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudMemcacheV1beta2MaintenancePolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      memcacheVersion: (() {
        final guardedValue = map['memcacheVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InstanceMemcacheVersionMemcacheV1beta2.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nodeConfig: pulumi.Input.fromValue(
        NodeConfigMemcacheV1beta2.fromMap(
          (map['nodeConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      nodeCount: pulumi.Input.fromValue(map['nodeCount'] as int),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MemcacheParametersMemcacheV1beta2.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      reservedIpRangeId: (() {
        final guardedValue = map['reservedIpRangeId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      zones: (() {
        final guardedValue = map['zones'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
