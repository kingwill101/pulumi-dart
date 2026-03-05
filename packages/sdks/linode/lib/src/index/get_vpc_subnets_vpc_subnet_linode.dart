// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_subnets_vpc_subnet_linode_interface.dart';

class GetVpcSubnetsVpcSubnetLinode {
  /// ID of the interface.
  final pulumi.Input<int> id;
  /// A list of networking interfaces objects.
  final pulumi.Input<List<GetVpcSubnetsVpcSubnetLinodeInterface>> interfaces;

  /// Creates a new [GetVpcSubnetsVpcSubnetLinode].
  /// [id] ID of the interface.
  /// [interfaces] A list of networking interfaces objects.
  GetVpcSubnetsVpcSubnetLinode({
    required this.id,
    required this.interfaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'interfaces': pulumi.Input.mapInputValue<List<GetVpcSubnetsVpcSubnetLinodeInterface>, List<Map<String, dynamic>>>(interfaces, (value) => pulumi.Input.encodeList<GetVpcSubnetsVpcSubnetLinodeInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetVpcSubnetsVpcSubnetLinode.fromMap(Map<String, dynamic> map) {
    return GetVpcSubnetsVpcSubnetLinode(
      id: pulumi.Input.fromValue(map['id'] as int),
      interfaces: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVpcSubnetsVpcSubnetLinodeInterface>(map['interfaces']!, (value) => GetVpcSubnetsVpcSubnetLinodeInterface.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

