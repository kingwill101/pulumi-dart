// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_vpc_subnet_get_vpc_subnet_args_doc}
/// Arguments for getVpcSubnet.
/// {@endtemplate}
/// {@macro pulumi_index_get_vpc_subnet_get_vpc_subnet_args_doc}
class GetVpcSubnetArgs {
  /// The unique id of this VPC subnet.
  final pulumi.Input<String> id;
  /// The id of the parent VPC for this VPC Subnet.
  final pulumi.Input<int> vpcId;

  /// Creates a new [GetVpcSubnetArgs].
  /// [id] The unique id of this VPC subnet.
  /// [vpcId] The id of the parent VPC for this VPC Subnet.
  GetVpcSubnetArgs({
    required this.id,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'vpcId': vpcId,
    };
  }

  factory GetVpcSubnetArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcSubnetArgs(
      id: pulumi.Input.fromValue(map['id'] as String),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as int),
    );
  }
}

