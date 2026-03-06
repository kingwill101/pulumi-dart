// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_nodebalancer_vpc_get_nodebalancer_vpc_args_doc}
/// Arguments for getNodebalancerVpc.
/// {@endtemplate}
/// {@macro pulumi_index_get_nodebalancer_vpc_get_nodebalancer_vpc_args_doc}
class GetNodebalancerVpcArgs {
  /// The ID of the VPC configuration.
  final pulumi.Input<int> id;
  /// The ID of the parent NodeBalancer of the VPC configuration.
  final pulumi.Input<int> nodebalancerId;

  /// Creates a new [GetNodebalancerVpcArgs].
  /// [id] The ID of the VPC configuration.
  /// [nodebalancerId] The ID of the parent NodeBalancer of the VPC configuration.
  const GetNodebalancerVpcArgs({
    required this.id,
    required this.nodebalancerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nodebalancerId': nodebalancerId,
    };
  }

  factory GetNodebalancerVpcArgs.fromMap(Map<String, dynamic> map) {
    return GetNodebalancerVpcArgs(
      id: pulumi.Input.fromValue(map['id'] as int),
      nodebalancerId: pulumi.Input.fromValue(map['nodebalancerId'] as int),
    );
  }
}

