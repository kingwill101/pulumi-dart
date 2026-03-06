// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AwsClusterNetworking {
  /// Disable the per node pool subnet security group rules on the control plane security group. When set to true, you must also provide one or more security groups that ensure node pools are able to send requests to the control plane on TCP/443 and TCP/8132. Failure to do so may result in unavailable node pools.
  final pulumi.Input<bool>? perNodePoolSgRulesDisabled;
  /// All pods in the cluster are assigned an RFC1918 IPv4 address from these ranges. Only a single range is supported. This field cannot be changed after creation.
  final pulumi.Input<List<String>> podAddressCidrBlocks;
  /// All services in the cluster are assigned an RFC1918 IPv4 address from these ranges. Only a single range is supported. This field cannot be changed after creation.
  final pulumi.Input<List<String>> serviceAddressCidrBlocks;
  /// The VPC associated with the cluster. All component clusters (i.e. control plane and node pools) run on a single VPC. This field cannot be changed after creation.
  ///
  /// - - -
  final pulumi.Input<String> vpcId;

  /// Creates a new [AwsClusterNetworking].
  /// [perNodePoolSgRulesDisabled] Disable the per node pool subnet security group rules on the control plane security group. When set to true, you must also provide one or more security groups that ensure node pools are able to send requests to the control plane on TCP/443 and TCP/8132. Failure to do so may result in unavailable node pools.
  /// [podAddressCidrBlocks] All pods in the cluster are assigned an RFC1918 IPv4 address from these ranges. Only a single range is supported. This field cannot be changed after creation.
  /// [serviceAddressCidrBlocks] All services in the cluster are assigned an RFC1918 IPv4 address from these ranges. Only a single range is supported. This field cannot be changed after creation.
  /// [vpcId] The VPC associated with the cluster. All component clusters (i.e. control plane and node pools) run on a single VPC. This field cannot be changed after creation.
  const AwsClusterNetworking({
    this.perNodePoolSgRulesDisabled,
    required this.podAddressCidrBlocks,
    required this.serviceAddressCidrBlocks,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'perNodePoolSgRulesDisabled': ?perNodePoolSgRulesDisabled,
      'podAddressCidrBlocks': podAddressCidrBlocks,
      'serviceAddressCidrBlocks': serviceAddressCidrBlocks,
      'vpcId': vpcId,
    };
  }

  factory AwsClusterNetworking.fromMap(Map<String, dynamic> map) {
    return AwsClusterNetworking(
      perNodePoolSgRulesDisabled: (() { final guardedValue = map['perNodePoolSgRulesDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      podAddressCidrBlocks: pulumi.Input.fromValue((map['podAddressCidrBlocks'] as List).cast<String>()),
      serviceAddressCidrBlocks: pulumi.Input.fromValue((map['serviceAddressCidrBlocks'] as List).cast<String>()),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
    );
  }
}

