// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_health_tpu_v1alpha1.dart';
import 'scheduling_config_tpu_v1alpha1.dart';

/// {@template pulumi_tpu_v1alpha1_node_tpu_v1alpha1_args_doc}
/// The set of arguments for Node.
/// {@endtemplate}
/// {@macro pulumi_tpu_v1alpha1_node_tpu_v1alpha1_args_doc}
class NodeTpuV1alpha1Args {
  /// The type of hardware accelerators associated with this node.
  final pulumi.Input<String> acceleratorType;
  /// The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must be a /29 block; the Compute Engine networks API forbids a smaller block, and using a larger block would be wasteful (a node can only consume one IP address). Errors will occur if the CIDR block has already been used for a currently existing TPU node, the CIDR block conflicts with any subnetworks in the user's provided network, or the provided network is peered with another network that is using that CIDR block.
  final pulumi.Input<String>? cidrBlock;
  /// The user-supplied description of the TPU. Maximum of 512 characters.
  final pulumi.Input<String>? description;
  /// The health status of the TPU node.
  final pulumi.Input<NodeHealthTpuV1alpha1>? health;
  /// Resource labels to represent user-provided metadata.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// The name of a network they wish to peer the TPU node to. It must be a preexisting Compute Engine network inside of the project on which this API has been activated. If none is provided, "default" will be used.
  final pulumi.Input<String>? network;
  /// The unqualified resource name.
  final pulumi.Input<String>? nodeId;
  final pulumi.Input<String>? project;
  /// Idempotent request UUID.
  final pulumi.Input<String>? requestId;
  /// The scheduling options for this node.
  final pulumi.Input<SchedulingConfigTpuV1alpha1>? schedulingConfig;
  /// The version of Tensorflow running in the Node.
  final pulumi.Input<String> tensorflowVersion;
  /// Whether the VPC peering for the node is set up through Service Networking API. The VPC Peering should be set up before provisioning the node. If this field is set, cidr_block field should not be specified. If the network, that you want to peer the TPU Node to, is Shared VPC networks, the node must be created with this this field enabled.
  final pulumi.Input<bool>? useServiceNetworking;

  /// Creates a new [NodeTpuV1alpha1Args].
  /// [acceleratorType] The type of hardware accelerators associated with this node.
  /// [cidrBlock] The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must be a /29 block; the Compute Engine networks API forbids a smaller block, and using a larger block would be wasteful (a node can only consume one IP address). Errors will occur if the CIDR block has already been used for a currently existing TPU node, the CIDR block conflicts with any subnetworks in the user's provided network, or the provided network is peered with another network that is using that CIDR block.
  /// [description] The user-supplied description of the TPU. Maximum of 512 characters.
  /// [health] The health status of the TPU node.
  /// [labels] Resource labels to represent user-provided metadata.
  /// [location] Optional.
  /// [network] The name of a network they wish to peer the TPU node to. It must be a preexisting Compute Engine network inside of the project on which this API has been activated. If none is provided, "default" will be used.
  /// [nodeId] The unqualified resource name.
  /// [project] Optional.
  /// [requestId] Idempotent request UUID.
  /// [schedulingConfig] The scheduling options for this node.
  /// [tensorflowVersion] The version of Tensorflow running in the Node.
  /// [useServiceNetworking] Whether the VPC peering for the node is set up through Service Networking API. The VPC Peering should be set up before provisioning the node. If this field is set, cidr_block field should not be specified. If the network, that you want to peer the TPU Node to, is Shared VPC networks, the node must be created with this this field enabled.
  const NodeTpuV1alpha1Args({
    required this.acceleratorType,
    this.cidrBlock,
    this.description,
    this.health,
    this.labels,
    this.location,
    this.network,
    this.nodeId,
    this.project,
    this.requestId,
    this.schedulingConfig,
    required this.tensorflowVersion,
    this.useServiceNetworking,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorType': acceleratorType,
      'cidrBlock': ?cidrBlock,
      'description': ?description,
      'health': ?pulumi.Input.mapOptionalInputValue<NodeHealthTpuV1alpha1, String>(health, (value) => value.wireValue),
      'labels': ?labels,
      'location': ?location,
      'network': ?network,
      'nodeId': ?nodeId,
      'project': ?project,
      'requestId': ?requestId,
      'schedulingConfig': ?pulumi.Input.mapOptionalInputValue<SchedulingConfigTpuV1alpha1, Map<String, dynamic>>(schedulingConfig, (value) => value.toMap()),
      'tensorflowVersion': tensorflowVersion,
      'useServiceNetworking': ?useServiceNetworking,
    };
  }

  factory NodeTpuV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return NodeTpuV1alpha1Args(
      acceleratorType: pulumi.Input.fromValue(map['acceleratorType'] as String),
      cidrBlock: (() { final guardedValue = map['cidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      health: (() { final guardedValue = map['health']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodeHealthTpuV1alpha1.fromValue(guardedValue as String)); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeId: (() { final guardedValue = map['nodeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schedulingConfig: (() { final guardedValue = map['schedulingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SchedulingConfigTpuV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tensorflowVersion: pulumi.Input.fromValue(map['tensorflowVersion'] as String),
      useServiceNetworking: (() { final guardedValue = map['useServiceNetworking']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
