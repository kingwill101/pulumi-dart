import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_config_response.dart';
import 'network_config_response.dart';
import 'node_tpu_v2_args.dart';
import 'scheduling_config_response_tpu_v2.dart';
import 'service_account_response.dart';
import 'shielded_instance_config_response.dart';

/// Creates a node.
/// Auto-naming is currently not supported for this resource.
class NodeTpuV2 extends pulumi.CustomResource {
  /// The AccleratorConfig for the TPU Node.
  late final pulumi.Output<AcceleratorConfigResponse> acceleratorConfig;

  /// Optional. The type of hardware accelerators associated with this node.
  late final pulumi.Output<String> acceleratorType;

  /// The API version that created this Node.
  late final pulumi.Output<String> apiVersion;

  /// The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must be a /29 block; the Compute Engine networks API forbids a smaller block, and using a larger block would be wasteful (a node can only consume one IP address). Errors will occur if the CIDR block has already been used for a currently existing TPU node, the CIDR block conflicts with any subnetworks in the user's provided network, or the provided network is peered with another network that is using that CIDR block.
  late final pulumi.Output<String> cidrBlock;

  /// The time when the node was created.
  late final pulumi.Output<String> createTime;

  /// The additional data disks for the Node.
  late final pulumi.Output<List<Map<String, dynamic>>> dataDisks;

  /// The user-supplied description of the TPU. Maximum of 512 characters.
  late final pulumi.Output<String> description;

  /// The health status of the TPU node.
  late final pulumi.Output<String> health;

  /// If this field is populated, it contains a description of why the TPU Node is unhealthy.
  late final pulumi.Output<String> healthDescription;

  /// Resource labels to represent user-provided metadata.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// Custom metadata to apply to the TPU Node. Can set startup-script and shutdown-script
  late final pulumi.Output<Map<String, String>> metadata;

  /// Whether the Node belongs to a Multislice group.
  late final pulumi.Output<bool> multisliceNode;

  /// Immutable. The name of the TPU.
  late final pulumi.Output<String> name;

  /// Network configurations for the TPU node.
  late final pulumi.Output<NetworkConfigResponse> networkConfig;

  /// The network endpoints where TPU workers can be accessed and sent work. It is recommended that runtime clients of the node reach out to the 0th entry in this map first.
  late final pulumi.Output<List<Map<String, dynamic>>> networkEndpoints;

  /// The unqualified resource name.
  late final pulumi.Output<String?> nodeId;
  late final pulumi.Output<String> project;

  /// The qualified name of the QueuedResource that requested this Node.
  late final pulumi.Output<String> queuedResource;

  /// The runtime version running in the Node.
  late final pulumi.Output<String> runtimeVersion;

  /// The scheduling options for this node.
  late final pulumi.Output<SchedulingConfigResponseTpuV2> schedulingConfig;

  /// The Google Cloud Platform Service Account to be used by the TPU node VMs. If None is specified, the default compute service account will be used.
  late final pulumi.Output<ServiceAccountResponse> serviceAccount;

  /// Shielded Instance options.
  late final pulumi.Output<ShieldedInstanceConfigResponse>
  shieldedInstanceConfig;

  /// The current state for the TPU Node.
  late final pulumi.Output<String> state;

  /// The Symptoms that have occurred to the TPU Node.
  late final pulumi.Output<List<Map<String, dynamic>>> symptoms;

  /// Tags to apply to the TPU Node. Tags are used to identify valid sources or targets for network firewalls.
  late final pulumi.Output<List<String>> tags;

  /// Creates a new [NodeTpuV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NodeTpuV2]. {@macro pulumi_tpu_v2_node_tpu_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NodeTpuV2(
    String name, {
    NodeTpuV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:tpu/v2:Node',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    acceleratorConfig = registerOutput<AcceleratorConfigResponse>(
      'acceleratorConfig',
    );
    acceleratorType = registerOutput<String>('acceleratorType');
    apiVersion = registerOutput<String>('apiVersion');
    cidrBlock = registerOutput<String>('cidrBlock');
    createTime = registerOutput<String>('createTime');
    dataDisks = registerOutput<List<Map<String, dynamic>>>('dataDisks');
    description = registerOutput<String>('description');
    health = registerOutput<String>('health');
    healthDescription = registerOutput<String>('healthDescription');
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    metadata = registerOutput<Map<String, String>>('metadata');
    multisliceNode = registerOutput<bool>('multisliceNode');
    this.name = registerOutput<String>('name');
    networkConfig = registerOutput<NetworkConfigResponse>('networkConfig');
    networkEndpoints = registerOutput<List<Map<String, dynamic>>>(
      'networkEndpoints',
    );
    nodeId = registerOutput<String?>('nodeId');
    project = registerOutput<String>('project');
    queuedResource = registerOutput<String>('queuedResource');
    runtimeVersion = registerOutput<String>('runtimeVersion');
    schedulingConfig = registerOutput<SchedulingConfigResponseTpuV2>(
      'schedulingConfig',
    );
    serviceAccount = registerOutput<ServiceAccountResponse>('serviceAccount');
    shieldedInstanceConfig = registerOutput<ShieldedInstanceConfigResponse>(
      'shieldedInstanceConfig',
    );
    state = registerOutput<String>('state');
    symptoms = registerOutput<List<Map<String, dynamic>>>('symptoms');
    tags = registerOutput<List<String>>('tags');
  }
}
