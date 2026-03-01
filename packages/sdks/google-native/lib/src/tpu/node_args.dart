// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_health.dart';
import 'scheduling_config.dart';

/// {@template pulumi_tpu_v1_node_args_doc}
/// The set of arguments for Node.
/// {@endtemplate}
/// {@macro pulumi_tpu_v1_node_args_doc}
class NodeArgs {
  /// The type of hardware accelerators associated with this node.
  final pulumi.Input<String> acceleratorType;
  /// The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must be a /29 block; the Compute Engine networks API forbids a smaller block, and using a larger block would be wasteful (a node can only consume one IP address). Errors will occur if the CIDR block has already been used for a currently existing TPU node, the CIDR block conflicts with any subnetworks in the user's provided network, or the provided network is peered with another network that is using that CIDR block.
  final pulumi.Input<String>? cidrBlock;
  /// The user-supplied description of the TPU. Maximum of 512 characters.
  final pulumi.Input<String>? description;
  /// The health status of the TPU node.
  final pulumi.Input<NodeHealth>? health;
  /// Resource labels to represent user-provided metadata.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// The name of a network they wish to peer the TPU node to. It must be a preexisting Compute Engine network inside of the project on which this API has been activated. If none is provided, "default" will be used.
  final pulumi.Input<String>? network;
  /// The unqualified resource name.
  final pulumi.Input<String>? nodeId;
  final pulumi.Input<String>? project;
  /// The scheduling options for this node.
  final pulumi.Input<SchedulingConfig>? schedulingConfig;
  /// The version of Tensorflow running in the Node.
  final pulumi.Input<String> tensorflowVersion;
  /// Whether the VPC peering for the node is set up through Service Networking API. The VPC Peering should be set up before provisioning the node. If this field is set, cidr_block field should not be specified. If the network, that you want to peer the TPU Node to, is Shared VPC networks, the node must be created with this this field enabled.
  final pulumi.Input<bool>? useServiceNetworking;

  /// Creates a new [NodeArgs].
  /// [acceleratorType] The type of hardware accelerators associated with this node.
  /// [cidrBlock] The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must be a /29 block; the Compute Engine networks API forbids a smaller block, and using a larger block would be wasteful (a node can only consume one IP address). Errors will occur if the CIDR block has already been used for a currently existing TPU node, the CIDR block conflicts with any subnetworks in the user's provided network, or the provided network is peered with another network that is using that CIDR block.
  /// [description] The user-supplied description of the TPU. Maximum of 512 characters.
  /// [health] The health status of the TPU node.
  /// [labels] Resource labels to represent user-provided metadata.
  /// [location] Optional.
  /// [network] The name of a network they wish to peer the TPU node to. It must be a preexisting Compute Engine network inside of the project on which this API has been activated. If none is provided, "default" will be used.
  /// [nodeId] The unqualified resource name.
  /// [project] Optional.
  /// [schedulingConfig] The scheduling options for this node.
  /// [tensorflowVersion] The version of Tensorflow running in the Node.
  /// [useServiceNetworking] Whether the VPC peering for the node is set up through Service Networking API. The VPC Peering should be set up before provisioning the node. If this field is set, cidr_block field should not be specified. If the network, that you want to peer the TPU Node to, is Shared VPC networks, the node must be created with this this field enabled.
  NodeArgs({
    required pulumi.Output<String> acceleratorType,
    pulumi.Output<String>? cidrBlock,
    pulumi.Output<String>? description,
    pulumi.Output<NodeHealth>? health,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? network,
    pulumi.Output<String>? nodeId,
    pulumi.Output<String>? project,
    pulumi.Output<SchedulingConfig>? schedulingConfig,
    required pulumi.Output<String> tensorflowVersion,
    pulumi.Output<bool>? useServiceNetworking,
  }) :
      acceleratorType = pulumi.Input.asInput<String>(acceleratorType),
      cidrBlock = pulumi.Input.asOptionalInput<String>(cidrBlock),
      description = pulumi.Input.asOptionalInput<String>(description),
      health = pulumi.Input.asOptionalInput<NodeHealth>(health),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      network = pulumi.Input.asOptionalInput<String>(network),
      nodeId = pulumi.Input.asOptionalInput<String>(nodeId),
      project = pulumi.Input.asOptionalInput<String>(project),
      schedulingConfig = pulumi.Input.asOptionalInput<SchedulingConfig>(schedulingConfig),
      tensorflowVersion = pulumi.Input.asInput<String>(tensorflowVersion),
      useServiceNetworking = pulumi.Input.asOptionalInput<bool>(useServiceNetworking);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorType': acceleratorType,
      'cidrBlock': ?cidrBlock,
      'description': ?description,
      'health': ?pulumi.Input.mapOptionalInputValue<NodeHealth, String>(health, (value) => value.value),
      'labels': ?labels,
      'location': ?location,
      'network': ?network,
      'nodeId': ?nodeId,
      'project': ?project,
      'schedulingConfig': ?pulumi.Input.mapOptionalInputValue<SchedulingConfig, Map<String, dynamic>>(schedulingConfig, (value) => value.toMap()),
      'tensorflowVersion': tensorflowVersion,
      'useServiceNetworking': ?useServiceNetworking,
    };
  }

  factory NodeArgs.fromMap(Map<String, dynamic> map) {
    return NodeArgs(
      acceleratorType: pulumi.Output.create<String>(map['acceleratorType'] as String),
      cidrBlock: map['cidrBlock'] == null ? null : pulumi.Output.create<String>(map['cidrBlock'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      health: map['health'] == null ? null : pulumi.Output.create<NodeHealth>(NodeHealth.fromValue(map['health'] as String)),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      network: map['network'] == null ? null : pulumi.Output.create<String>(map['network'] as String),
      nodeId: map['nodeId'] == null ? null : pulumi.Output.create<String>(map['nodeId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      schedulingConfig: map['schedulingConfig'] == null ? null : pulumi.Output.create<SchedulingConfig>(SchedulingConfig.fromMap((map['schedulingConfig'] as Map).cast<String, dynamic>())),
      tensorflowVersion: pulumi.Output.create<String>(map['tensorflowVersion'] as String),
      useServiceNetworking: map['useServiceNetworking'] == null ? null : pulumi.Output.create<bool>(map['useServiceNetworking'] as bool),
    );
  }
}

