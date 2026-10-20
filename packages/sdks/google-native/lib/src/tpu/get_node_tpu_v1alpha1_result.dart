// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_endpoint_response_tpu_v1alpha1.dart';
import 'scheduling_config_response_tpu_v1alpha1.dart';
import 'symptom_response_tpu_v1alpha1.dart';

/// Result data returned by getNode.
class GetNodeTpuV1alpha1Result {
  /// The type of hardware accelerators associated with this node.
  final String? acceleratorType;
  /// The API version that created this Node.
  final String? apiVersion;
  /// The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must be a /29 block; the Compute Engine networks API forbids a smaller block, and using a larger block would be wasteful (a node can only consume one IP address). Errors will occur if the CIDR block has already been used for a currently existing TPU node, the CIDR block conflicts with any subnetworks in the user's provided network, or the provided network is peered with another network that is using that CIDR block.
  final String? cidrBlock;
  /// The time when the node was created.
  final String? createTime;
  /// The user-supplied description of the TPU. Maximum of 512 characters.
  final String? description;
  /// The health status of the TPU node.
  final String? health;
  /// If this field is populated, it contains a description of why the TPU Node is unhealthy.
  final String? healthDescription;
  /// DEPRECATED! Use network_endpoints instead. The network address for the TPU Node as visible to Compute Engine instances.
  final String? ipAddress;
  /// Resource labels to represent user-provided metadata.
  final Map<String, String>? labels;
  /// Immutable. The name of the TPU
  final String? name;
  /// The name of a network they wish to peer the TPU node to. It must be a preexisting Compute Engine network inside of the project on which this API has been activated. If none is provided, "default" will be used.
  final String? network;
  /// The network endpoints where TPU workers can be accessed and sent work. It is recommended that Tensorflow clients of the node reach out to the 0th entry in this map first.
  final List<NetworkEndpointResponseTpuV1alpha1>? networkEndpoints;
  /// DEPRECATED! Use network_endpoints instead. The network port for the TPU Node as visible to Compute Engine instances.
  final String? port;
  /// The scheduling options for this node.
  final SchedulingConfigResponseTpuV1alpha1? schedulingConfig;
  /// The service account used to run the tensor flow services within the node. To share resources, including Google Cloud Storage data, with the Tensorflow job running in the Node, this account must have permissions to that data.
  final String? serviceAccount;
  /// The current state for the TPU Node.
  final String? state;
  /// The Symptoms that have occurred to the TPU Node.
  final List<SymptomResponseTpuV1alpha1>? symptoms;
  /// The version of Tensorflow running in the Node.
  final String? tensorflowVersion;
  /// Whether the VPC peering for the node is set up through Service Networking API. The VPC Peering should be set up before provisioning the node. If this field is set, cidr_block field should not be specified. If the network, that you want to peer the TPU Node to, is Shared VPC networks, the node must be created with this this field enabled.
  final bool? useServiceNetworking;

  /// Creates a new [GetNodeTpuV1alpha1Result].
  /// [acceleratorType] The type of hardware accelerators associated with this node.
  /// [apiVersion] The API version that created this Node.
  /// [cidrBlock] The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must be a /29 block; the Compute Engine networks API forbids a smaller block, and using a larger block would be wasteful (a node can only consume one IP address). Errors will occur if the CIDR block has already been used for a currently existing TPU node, the CIDR block conflicts with any subnetworks in the user's provided network, or the provided network is peered with another network that is using that CIDR block.
  /// [createTime] The time when the node was created.
  /// [description] The user-supplied description of the TPU. Maximum of 512 characters.
  /// [health] The health status of the TPU node.
  /// [healthDescription] If this field is populated, it contains a description of why the TPU Node is unhealthy.
  /// [ipAddress] DEPRECATED! Use network_endpoints instead. The network address for the TPU Node as visible to Compute Engine instances.
  /// [labels] Resource labels to represent user-provided metadata.
  /// [name] Immutable. The name of the TPU
  /// [network] The name of a network they wish to peer the TPU node to. It must be a preexisting Compute Engine network inside of the project on which this API has been activated. If none is provided, "default" will be used.
  /// [networkEndpoints] The network endpoints where TPU workers can be accessed and sent work. It is recommended that Tensorflow clients of the node reach out to the 0th entry in this map first.
  /// [port] DEPRECATED! Use network_endpoints instead. The network port for the TPU Node as visible to Compute Engine instances.
  /// [schedulingConfig] The scheduling options for this node.
  /// [serviceAccount] The service account used to run the tensor flow services within the node. To share resources, including Google Cloud Storage data, with the Tensorflow job running in the Node, this account must have permissions to that data.
  /// [state] The current state for the TPU Node.
  /// [symptoms] The Symptoms that have occurred to the TPU Node.
  /// [tensorflowVersion] The version of Tensorflow running in the Node.
  /// [useServiceNetworking] Whether the VPC peering for the node is set up through Service Networking API. The VPC Peering should be set up before provisioning the node. If this field is set, cidr_block field should not be specified. If the network, that you want to peer the TPU Node to, is Shared VPC networks, the node must be created with this this field enabled.
  const GetNodeTpuV1alpha1Result({
    this.acceleratorType,
    this.apiVersion,
    this.cidrBlock,
    this.createTime,
    this.description,
    this.health,
    this.healthDescription,
    this.ipAddress,
    this.labels,
    this.name,
    this.network,
    this.networkEndpoints,
    this.port,
    this.schedulingConfig,
    this.serviceAccount,
    this.state,
    this.symptoms,
    this.tensorflowVersion,
    this.useServiceNetworking,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorType': ?acceleratorType,
      'apiVersion': ?apiVersion,
      'cidrBlock': ?cidrBlock,
      'createTime': ?createTime,
      'description': ?description,
      'health': ?health,
      'healthDescription': ?healthDescription,
      'ipAddress': ?ipAddress,
      'labels': ?labels,
      'name': ?name,
      'network': ?network,
      'networkEndpoints': ?(() { final guardedValue = networkEndpoints; if (guardedValue == null) return null; return pulumi.Input.encodeList<NetworkEndpointResponseTpuV1alpha1, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'port': ?port,
      'schedulingConfig': ?schedulingConfig?.toMap(),
      'serviceAccount': ?serviceAccount,
      'state': ?state,
      'symptoms': ?(() { final guardedValue = symptoms; if (guardedValue == null) return null; return pulumi.Input.encodeList<SymptomResponseTpuV1alpha1, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tensorflowVersion': ?tensorflowVersion,
      'useServiceNetworking': ?useServiceNetworking,
    };
  }

  factory GetNodeTpuV1alpha1Result.fromMap(Map<String, dynamic> map) {
    return GetNodeTpuV1alpha1Result(
      acceleratorType: (() { final guardedValue = map['acceleratorType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cidrBlock: (() { final guardedValue = map['cidrBlock']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      health: (() { final guardedValue = map['health']; if (guardedValue == null) return null; return guardedValue as String; })(),
      healthDescription: (() { final guardedValue = map['healthDescription']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkEndpoints: (() { final guardedValue = map['networkEndpoints']; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkEndpointResponseTpuV1alpha1>(guardedValue, (value) => NetworkEndpointResponseTpuV1alpha1.fromMap((value as Map).cast<String, dynamic>())); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return guardedValue as String; })(),
      schedulingConfig: (() { final guardedValue = map['schedulingConfig']; if (guardedValue == null) return null; return SchedulingConfigResponseTpuV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      symptoms: (() { final guardedValue = map['symptoms']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SymptomResponseTpuV1alpha1>(guardedValue, (value) => SymptomResponseTpuV1alpha1.fromMap((value as Map).cast<String, dynamic>())); })(),
      tensorflowVersion: (() { final guardedValue = map['tensorflowVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      useServiceNetworking: (() { final guardedValue = map['useServiceNetworking']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
