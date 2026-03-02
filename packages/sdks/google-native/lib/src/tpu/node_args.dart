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
    required this.acceleratorType,
    this.cidrBlock,
    this.description,
    this.health,
    this.labels,
    this.location,
    this.network,
    this.nodeId,
    this.project,
    this.schedulingConfig,
    required this.tensorflowVersion,
    this.useServiceNetworking,
  });

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
      acceleratorType: (map['acceleratorType'] as String).input(),
      cidrBlock: map['cidrBlock'] == null ? null : (map['cidrBlock'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      health: map['health'] == null ? null : (NodeHealth.fromValue(map['health'] as String)).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      network: map['network'] == null ? null : (map['network'] as String).input(),
      nodeId: map['nodeId'] == null ? null : (map['nodeId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      schedulingConfig: map['schedulingConfig'] == null ? null : (SchedulingConfig.fromMap((map['schedulingConfig'] as Map).cast<String, dynamic>())).input(),
      tensorflowVersion: (map['tensorflowVersion'] as String).input(),
      useServiceNetworking: map['useServiceNetworking'] == null ? null : (map['useServiceNetworking'] as bool).input(),
    );
  }
}

