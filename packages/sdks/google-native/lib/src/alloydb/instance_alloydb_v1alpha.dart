import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_connection_config_response_alloydb_v1alpha.dart';
import 'instance_alloydb_v1alpha_args.dart';
import 'machine_config_response_alloydb_v1alpha.dart';
import 'node_response_alloydb_v1alpha.dart';
import 'query_insights_instance_config_response_alloydb_v1alpha.dart';
import 'read_pool_config_response_alloydb_v1alpha.dart';
import 'update_policy_response.dart';

/// Creates a new Instance in a given project and location.
/// Auto-naming is currently not supported for this resource.
class InstanceAlloydbV1alpha extends pulumi.CustomResource {
  /// Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
  late final pulumi.Output<Map<String, String>> annotations;
  /// Availability type of an Instance. If empty, defaults to REGIONAL for primary instances. For read pools, availability_type is always UNSPECIFIED. Instances in the read pools are evenly distributed across available zones within the region (i.e. read pools with more than one node will have a node in at least two zones).
  late final pulumi.Output<String> availabilityType;
  /// Optional. Client connection specific configurations
  late final pulumi.Output<ClientConnectionConfigResponseAlloydbV1alpha> clientConnectionConfig;
  late final pulumi.Output<String> clusterId;
  /// Create time stamp
  late final pulumi.Output<String> createTime;
  /// Database flags. Set at instance level. * They are copied from primary instance on read instance creation. * Read instances can set new or override existing flags that are relevant for reads, e.g. for enabling columnar cache on a read instance. Flags set on read instance may or may not be present on primary. This is a list of "key": "value" pairs. "key": The name of the flag. These flags are passed at instance setup time, so include both server options and system variables for Postgres. Flags are specified with underscores, not hyphens. "value": The value of the flag. Booleans are set to **on** for true and **off** for false. This field must be omitted if the flag doesn't take a value.
  late final pulumi.Output<Map<String, String>> databaseFlags;
  /// Delete time stamp
  late final pulumi.Output<String> deleteTime;
  /// User-settable and human-readable display name for the Instance.
  late final pulumi.Output<String> displayName;
  /// For Resource freshness validation (https://google.aip.dev/154)
  late final pulumi.Output<String> etag;
  /// The Compute Engine zone that the instance should serve from, per https://cloud.google.com/compute/docs/regions-zones This can ONLY be specified for ZONAL instances. If present for a REGIONAL instance, an error will be thrown. If this is absent for a ZONAL instance, instance is created in a random zone with available capacity.
  late final pulumi.Output<String> gceZone;
  /// Required. ID of the requesting object.
  late final pulumi.Output<String> instanceId;
  /// The type of the instance. Specified at creation time.
  late final pulumi.Output<String> instanceType;
  /// The IP address for the Instance. This is the connection endpoint for an end-user application.
  late final pulumi.Output<String> ipAddress;
  /// Labels as key value pairs
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;
  /// Configurations for the machines that host the underlying database engine.
  late final pulumi.Output<MachineConfigResponseAlloydbV1alpha> machineConfig;
  /// The name of the instance resource with the format: * projects/{project}/locations/{region}/clusters/{cluster_id}/instances/{instance_id} where the cluster and instance ID segments should satisfy the regex expression `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`, e.g. 1-63 characters of lowercase letters, numbers, and dashes, starting with a letter, and ending with a letter or number. For more details see https://google.aip.dev/122. The prefix of the instance resource name is the name of the parent resource: * projects/{project}/locations/{region}/clusters/{cluster_id}
  late final pulumi.Output<String> name;
  /// List of available read-only VMs in this instance, including the standby for a PRIMARY instance.
  late final pulumi.Output<List<Map<String, dynamic>>> nodes;
  late final pulumi.Output<String> project;
  /// Configuration for query insights.
  late final pulumi.Output<QueryInsightsInstanceConfigResponseAlloydbV1alpha> queryInsightsConfig;
  /// Read pool instance configuration. This is required if the value of instanceType is READ_POOL.
  late final pulumi.Output<ReadPoolConfigResponseAlloydbV1alpha> readPoolConfig;
  /// Reconciling (https://google.aip.dev/128#reconciliation). Set to true if the current state of Instance does not match the user's intended state, and the service is actively updating the resource to reconcile them. This can happen due to user-triggered updates or system actions like failover or maintenance.
  late final pulumi.Output<bool> reconciling;
  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;
  /// Reserved for future use.
  late final pulumi.Output<bool> satisfiesPzs;
  /// The current serving state of the instance.
  late final pulumi.Output<String> state;
  /// The system-generated UID of the resource. The UID is assigned when the resource is created, and it is retained until it is deleted.
  late final pulumi.Output<String> uid;
  /// Update policy that will be applied during instance update. This field is not persisted when you update the instance. To use a non-default update policy, you must specify explicitly specify the value in each update request.
  late final pulumi.Output<UpdatePolicyResponse> updatePolicy;
  /// Update time stamp
  late final pulumi.Output<String> updateTime;
  /// This is set for the read-write VM of the PRIMARY instance only.
  late final pulumi.Output<NodeResponseAlloydbV1alpha> writableNode;

  /// Creates a new [InstanceAlloydbV1alpha].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceAlloydbV1alpha]. {@macro pulumi_alloydb_v1alpha_instance_alloydb_v1alpha_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceAlloydbV1alpha(
    String name, {
    InstanceAlloydbV1alphaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:alloydb/v1alpha:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    annotations = registerOutput<Map<String, String>>('annotations');
    availabilityType = registerOutput<String>('availabilityType');
    clientConnectionConfig = registerOutput<ClientConnectionConfigResponseAlloydbV1alpha>('clientConnectionConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClientConnectionConfigResponseAlloydbV1alpha.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clusterId = registerOutput<String>('clusterId');
    createTime = registerOutput<String>('createTime');
    databaseFlags = registerOutput<Map<String, String>>('databaseFlags');
    deleteTime = registerOutput<String>('deleteTime');
    displayName = registerOutput<String>('displayName');
    etag = registerOutput<String>('etag');
    gceZone = registerOutput<String>('gceZone');
    instanceId = registerOutput<String>('instanceId');
    instanceType = registerOutput<String>('instanceType');
    ipAddress = registerOutput<String>('ipAddress');
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    machineConfig = registerOutput<MachineConfigResponseAlloydbV1alpha>('machineConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MachineConfigResponseAlloydbV1alpha.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    nodes = registerOutput<List<Map<String, dynamic>>>('nodes');
    project = registerOutput<String>('project');
    queryInsightsConfig = registerOutput<QueryInsightsInstanceConfigResponseAlloydbV1alpha>('queryInsightsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return QueryInsightsInstanceConfigResponseAlloydbV1alpha.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    readPoolConfig = registerOutput<ReadPoolConfigResponseAlloydbV1alpha>('readPoolConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ReadPoolConfigResponseAlloydbV1alpha.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    reconciling = registerOutput<bool>('reconciling');
    requestId = registerOutput<String?>('requestId');
    satisfiesPzs = registerOutput<bool>('satisfiesPzs');
    state = registerOutput<String>('state');
    uid = registerOutput<String>('uid');
    updatePolicy = registerOutput<UpdatePolicyResponse>('updatePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return UpdatePolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateTime = registerOutput<String>('updateTime');
    writableNode = registerOutput<NodeResponseAlloydbV1alpha>('writableNode', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodeResponseAlloydbV1alpha.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
