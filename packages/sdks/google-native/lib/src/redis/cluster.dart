import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_args.dart';
import 'state_info_response.dart';

/// Creates a Redis cluster based on the specified properties. The creation is executed asynchronously and callers may check the returned operation to track its progress. Once the operation is completed the Redis cluster will be fully functional. The completed longrunning.Operation will contain the new cluster object in the response field. The returned operation is automatically deleted after a few hours, so there is no need to call DeleteOperation.
class Cluster extends pulumi.CustomResource {
  /// Optional. The authorization mode of the Redis cluster. If not provided, auth feature is disabled for the cluster.
  late final pulumi.Output<String> authorizationMode;
  /// Required. The logical name of the Redis cluster in the customer project with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the customer project / location
  late final pulumi.Output<String> clusterId;
  /// The timestamp associated with the cluster creation request.
  late final pulumi.Output<String> createTime;
  /// Endpoints created on each given network, for Redis clients to connect to the cluster. Currently only one discovery endpoint is supported.
  late final pulumi.Output<List<Map<String, dynamic>>> discoveryEndpoints;
  late final pulumi.Output<String> location;
  /// Unique name of the resource in this scope including project and location using the form: `projects/{project_id}/locations/{location_id}/clusters/{cluster_id}`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// Each PscConfig configures the consumer network where IPs will be designated to the cluster for client access through Private Service Connect Automation. Currently, only one PscConfig is supported.
  late final pulumi.Output<List<Map<String, dynamic>>> pscConfigs;
  /// PSC connections for discovery of the cluster topology and accessing the cluster.
  late final pulumi.Output<List<Map<String, dynamic>>> pscConnections;
  /// Optional. The number of replica nodes per shard.
  late final pulumi.Output<int> replicaCount;
  /// Idempotent request UUID.
  late final pulumi.Output<String?> requestId;
  /// Number of shards for the Redis cluster.
  late final pulumi.Output<int> shardCount;
  /// Redis memory size in GB for the entire cluster.
  late final pulumi.Output<int> sizeGb;
  /// The current state of this cluster. Can be CREATING, READY, UPDATING, DELETING and SUSPENDED
  late final pulumi.Output<String> state;
  /// Additional information about the current state of the cluster.
  late final pulumi.Output<StateInfoResponse> stateInfo;
  /// Optional. The in-transit encryption for the Redis cluster. If not provided, encryption is disabled for the cluster.
  late final pulumi.Output<String> transitEncryptionMode;
  /// System assigned, unique identifier for the cluster.
  late final pulumi.Output<String> uid;

  /// Creates a new [Cluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cluster]. {@macro pulumi_redis_v1_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:redis/v1:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authorizationMode = registerOutput<String>('authorizationMode');
    clusterId = registerOutput<String>('clusterId');
    createTime = registerOutput<String>('createTime');
    discoveryEndpoints = registerOutput<List<Map<String, dynamic>>>('discoveryEndpoints');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pscConfigs = registerOutput<List<Map<String, dynamic>>>('pscConfigs');
    pscConnections = registerOutput<List<Map<String, dynamic>>>('pscConnections');
    replicaCount = registerOutput<int>('replicaCount');
    requestId = registerOutput<String?>('requestId');
    shardCount = registerOutput<int>('shardCount');
    sizeGb = registerOutput<int>('sizeGb');
    state = registerOutput<String>('state');
    stateInfo = registerOutput<StateInfoResponse>('stateInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StateInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    transitEncryptionMode = registerOutput<String>('transitEncryptionMode');
    uid = registerOutput<String>('uid');
  }
}
