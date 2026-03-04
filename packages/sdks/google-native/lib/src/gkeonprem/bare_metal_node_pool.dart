import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_node_pool_args.dart';
import 'bare_metal_node_pool_config_response.dart';
import 'bare_metal_node_pool_upgrade_policy_response.dart';
import 'resource_status_response.dart';

/// Creates a new bare metal node pool in a given project, location and Bare Metal cluster.
class BareMetalNodePool extends pulumi.CustomResource {
  /// Annotations on the bare metal node pool. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  late final pulumi.Output<Map<String, String>> annotations;
  late final pulumi.Output<String> bareMetalClusterId;

  /// The ID to use for the node pool, which will become the final component of the node pool's resource name. This value must be up to 63 characters, and valid characters are /a-z-/. The value must not be permitted to be a UUID (or UUID-like: anything matching /^[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}$/i).
  late final pulumi.Output<String?> bareMetalNodePoolId;

  /// The time at which this bare metal node pool was created.
  late final pulumi.Output<String> createTime;

  /// The time at which this bare metal node pool was deleted. If the resource is not deleted, this must be empty
  late final pulumi.Output<String> deleteTime;

  /// The display name for the bare metal node pool.
  late final pulumi.Output<String> displayName;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. Allows clients to perform consistent read-modify-writes through optimistic concurrency control.
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> location;

  /// Immutable. The bare metal node pool resource name.
  late final pulumi.Output<String> name;

  /// Node pool configuration.
  late final pulumi.Output<BareMetalNodePoolConfigResponse> nodePoolConfig;
  late final pulumi.Output<String> project;

  /// If set, there are currently changes in flight to the bare metal node pool.
  late final pulumi.Output<bool> reconciling;

  /// The current state of the bare metal node pool.
  late final pulumi.Output<String> state;

  /// ResourceStatus representing the detailed node pool status.
  late final pulumi.Output<ResourceStatusResponse> status;

  /// The unique identifier of the bare metal node pool.
  late final pulumi.Output<String> uid;

  /// The time at which this bare metal node pool was last updated.
  late final pulumi.Output<String> updateTime;

  /// The worker node pool upgrade policy.
  late final pulumi.Output<BareMetalNodePoolUpgradePolicyResponse>
  upgradePolicy;

  /// Creates a new [BareMetalNodePool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BareMetalNodePool]. {@macro pulumi_gkeonprem_v1_bare_metal_node_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BareMetalNodePool(
    String name, {
    BareMetalNodePoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:gkeonprem/v1:BareMetalNodePool',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    annotations = registerOutput<Map<String, String>>('annotations');
    bareMetalClusterId = registerOutput<String>('bareMetalClusterId');
    bareMetalNodePoolId = registerOutput<String?>('bareMetalNodePoolId');
    createTime = registerOutput<String>('createTime');
    deleteTime = registerOutput<String>('deleteTime');
    displayName = registerOutput<String>('displayName');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    nodePoolConfig = registerOutput<BareMetalNodePoolConfigResponse>(
      'nodePoolConfig',
    );
    project = registerOutput<String>('project');
    reconciling = registerOutput<bool>('reconciling');
    state = registerOutput<String>('state');
    status = registerOutput<ResourceStatusResponse>('status');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
    upgradePolicy = registerOutput<BareMetalNodePoolUpgradePolicyResponse>(
      'upgradePolicy',
    );
  }
}
