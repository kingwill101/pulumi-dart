import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_args.dart';
import 'scheduling_config_response.dart';

/// Creates a node.
/// Auto-naming is currently not supported for this resource.
class NodeTpuV1 extends pulumi.CustomResource {
  /// The type of hardware accelerators associated with this node.
  late final pulumi.Output<String> acceleratorType;

  /// The API version that created this Node.
  late final pulumi.Output<String> apiVersion;

  /// The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must be a /29 block; the Compute Engine networks API forbids a smaller block, and using a larger block would be wasteful (a node can only consume one IP address). Errors will occur if the CIDR block has already been used for a currently existing TPU node, the CIDR block conflicts with any subnetworks in the user's provided network, or the provided network is peered with another network that is using that CIDR block.
  late final pulumi.Output<String> cidrBlock;

  /// The time when the node was created.
  late final pulumi.Output<String> createTime;

  /// The user-supplied description of the TPU. Maximum of 512 characters.
  late final pulumi.Output<String> description;

  /// The health status of the TPU node.
  late final pulumi.Output<String> health;

  /// If this field is populated, it contains a description of why the TPU Node is unhealthy.
  late final pulumi.Output<String> healthDescription;

  /// DEPRECATED! Use network_endpoints instead. The network address for the TPU Node as visible to Compute Engine instances.
  late final pulumi.Output<String> ipAddress;

  /// Resource labels to represent user-provided metadata.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// Immutable. The name of the TPU
  late final pulumi.Output<String> name;

  /// The name of a network they wish to peer the TPU node to. It must be a preexisting Compute Engine network inside of the project on which this API has been activated. If none is provided, "default" will be used.
  late final pulumi.Output<String> network;

  /// The network endpoints where TPU workers can be accessed and sent work. It is recommended that Tensorflow clients of the node reach out to the 0th entry in this map first.
  late final pulumi.Output<List<Map<String, dynamic>>> networkEndpoints;

  /// The unqualified resource name.
  late final pulumi.Output<String?> nodeId;

  /// DEPRECATED! Use network_endpoints instead. The network port for the TPU Node as visible to Compute Engine instances.
  late final pulumi.Output<String> port;
  late final pulumi.Output<String> project;

  /// The scheduling options for this node.
  late final pulumi.Output<SchedulingConfigResponse> schedulingConfig;

  /// The service account used to run the tensor flow services within the node. To share resources, including Google Cloud Storage data, with the Tensorflow job running in the Node, this account must have permissions to that data.
  late final pulumi.Output<String> serviceAccount;

  /// The current state for the TPU Node.
  late final pulumi.Output<String> state;

  /// The Symptoms that have occurred to the TPU Node.
  late final pulumi.Output<List<Map<String, dynamic>>> symptoms;

  /// The version of Tensorflow running in the Node.
  late final pulumi.Output<String> tensorflowVersion;

  /// Whether the VPC peering for the node is set up through Service Networking API. The VPC Peering should be set up before provisioning the node. If this field is set, cidr_block field should not be specified. If the network, that you want to peer the TPU Node to, is Shared VPC networks, the node must be created with this this field enabled.
  late final pulumi.Output<bool> useServiceNetworking;

  /// Creates a new [NodeTpuV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NodeTpuV1]. {@macro pulumi_tpu_v1_node_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NodeTpuV1(
    String name, {
    NodeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:tpu/v1:Node',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    acceleratorType = registerOutput<String>('acceleratorType');
    apiVersion = registerOutput<String>('apiVersion');
    cidrBlock = registerOutput<String>('cidrBlock');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    health = registerOutput<String>('health');
    healthDescription = registerOutput<String>('healthDescription');
    ipAddress = registerOutput<String>('ipAddress');
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    networkEndpoints = registerOutput<List<Map<String, dynamic>>>(
      'networkEndpoints',
    );
    nodeId = registerOutput<String?>('nodeId');
    port = registerOutput<String>('port');
    project = registerOutput<String>('project');
    schedulingConfig = registerOutput<SchedulingConfigResponse>(
      'schedulingConfig',
    );
    serviceAccount = registerOutput<String>('serviceAccount');
    state = registerOutput<String>('state');
    symptoms = registerOutput<List<Map<String, dynamic>>>('symptoms');
    tensorflowVersion = registerOutput<String>('tensorflowVersion');
    useServiceNetworking = registerOutput<bool>('useServiceNetworking');
  }
}
