// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_subnet_linode_interface.dart';

class GetVpcSubnetLinode {
  /// The unique id of this VPC subnet.
  final pulumi.Input<int> id;
  /// A list of networking interfaces objects.
  final pulumi.Input<List<GetVpcSubnetLinodeInterface>> interfaces;

  /// Creates a new [GetVpcSubnetLinode].
  /// [id] The unique id of this VPC subnet.
  /// [interfaces] A list of networking interfaces objects.
  GetVpcSubnetLinode({
    required this.id,
    required this.interfaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'interfaces': pulumi.Input.mapInputValue<List<GetVpcSubnetLinodeInterface>, List<Map<String, dynamic>>>(interfaces, (value) => pulumi.Input.encodeList<GetVpcSubnetLinodeInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetVpcSubnetLinode.fromMap(Map<String, dynamic> map) {
    return GetVpcSubnetLinode(
      id: (map['id'] as int).input(),
      interfaces: (pulumi.Input.decodeList<GetVpcSubnetLinodeInterface>(map['interfaces'], (value) => GetVpcSubnetLinodeInterface.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

