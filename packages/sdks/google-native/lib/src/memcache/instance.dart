import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_memcache_v1_maintenance_policy_response.dart';
import 'instance_args.dart';
import 'maintenance_schedule_response.dart';
import 'memcache_parameters_response.dart';
import 'node_config_response.dart';

/// Creates a new Instance in a given location.
class Instance extends pulumi.CustomResource {
  /// The full name of the Google Compute Engine [network](/compute/docs/networks-and-firewalls#networks) to which the instance is connected. If left unspecified, the `default` network will be used.
  late final pulumi.Output<String> authorizedNetwork;

  /// The time the instance was created.
  late final pulumi.Output<String> createTime;

  /// Endpoint for the Discovery API.
  late final pulumi.Output<String> discoveryEndpoint;

  /// User provided name for the instance, which is only used for display purposes. Cannot be more than 80 characters.
  late final pulumi.Output<String> displayName;

  /// Required. The logical name of the Memcached instance in the user project with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-40 characters. * Must end with a number or a letter. * Must be unique within the user project / location. If any of the above are not met, the API raises an invalid argument error.
  late final pulumi.Output<String> instanceId;

  /// List of messages that describe the current state of the Memcached instance.
  late final pulumi.Output<List<Map<String, dynamic>>> instanceMessages;

  /// Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// The maintenance policy for the instance. If not provided, the maintenance event will be performed based on Memorystore internal rollout schedule.
  late final pulumi.Output<GoogleCloudMemcacheV1MaintenancePolicyResponse>
  maintenancePolicy;

  /// Published maintenance schedule.
  late final pulumi.Output<MaintenanceScheduleResponse> maintenanceSchedule;

  /// The full version of memcached server running on this instance. System automatically determines the full memcached version for an instance based on the input MemcacheVersion. The full version format will be "memcached-1.5.16".
  late final pulumi.Output<String> memcacheFullVersion;

  /// List of Memcached nodes. Refer to Node message for more details.
  late final pulumi.Output<List<Map<String, dynamic>>> memcacheNodes;

  /// The major version of Memcached software. If not provided, latest supported version will be used. Currently the latest supported major version is `MEMCACHE_1_5`. The minor version will be automatically determined by our system based on the latest supported minor version.
  late final pulumi.Output<String> memcacheVersion;

  /// Unique name of the resource in this scope including project and location using the form: `projects/{project_id}/locations/{location_id}/instances/{instance_id}` Note: Memcached instances are managed and addressed at the regional level so `location_id` here refers to a Google Cloud region; however, users may choose which zones Memcached nodes should be provisioned in within an instance. Refer to zones field for more details.
  late final pulumi.Output<String> name;

  /// Configuration for Memcached nodes.
  late final pulumi.Output<NodeConfigResponse> nodeConfig;

  /// Number of nodes in the Memcached instance.
  late final pulumi.Output<int> nodeCount;

  /// User defined parameters to apply to the memcached process on each node.
  late final pulumi.Output<MemcacheParametersResponse> parameters;
  late final pulumi.Output<String> project;

  /// Optional. Contains the id of allocated IP address ranges associated with the private service access connection for example, "test-default" associated with IP range 10.0.0.0/29.
  late final pulumi.Output<List<String>> reservedIpRangeId;

  /// The state of this Memcached instance.
  late final pulumi.Output<String> state;

  /// The time the instance was updated.
  late final pulumi.Output<String> updateTime;

  /// Zones in which Memcached nodes should be provisioned. Memcached nodes will be equally distributed across these zones. If not provided, the service will by default create nodes in all zones in the region for the instance.
  late final pulumi.Output<List<String>> zones;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_memcache_v1_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:memcache/v1:Instance',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    authorizedNetwork = registerOutput<String>('authorizedNetwork');
    createTime = registerOutput<String>('createTime');
    discoveryEndpoint = registerOutput<String>('discoveryEndpoint');
    displayName = registerOutput<String>('displayName');
    instanceId = registerOutput<String>('instanceId');
    instanceMessages = registerOutput<List<Map<String, dynamic>>>(
      'instanceMessages',
    );
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    maintenancePolicy =
        registerOutput<GoogleCloudMemcacheV1MaintenancePolicyResponse>(
          'maintenancePolicy',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudMemcacheV1MaintenancePolicyResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    maintenanceSchedule = registerOutput<MaintenanceScheduleResponse>(
      'maintenanceSchedule',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return MaintenanceScheduleResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    memcacheFullVersion = registerOutput<String>('memcacheFullVersion');
    memcacheNodes = registerOutput<List<Map<String, dynamic>>>('memcacheNodes');
    memcacheVersion = registerOutput<String>('memcacheVersion');
    this.name = registerOutput<String>('name');
    nodeConfig = registerOutput<NodeConfigResponse>(
      'nodeConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return NodeConfigResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    nodeCount = registerOutput<int>('nodeCount');
    parameters = registerOutput<MemcacheParametersResponse>(
      'parameters',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return MemcacheParametersResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    project = registerOutput<String>('project');
    reservedIpRangeId = registerOutput<List<String>>('reservedIpRangeId');
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
    zones = registerOutput<List<String>>('zones');
  }
}
