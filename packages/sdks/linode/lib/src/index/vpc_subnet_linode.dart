// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_subnet_linode_interface.dart';

class VpcSubnetLinode {
  /// ID of the interface.
  final int id;
  /// A list of networking interfaces objects.
  final List<VpcSubnetLinodeInterface> interfaces;

  /// Creates a new [VpcSubnetLinode].
  /// [id] ID of the interface.
  /// [interfaces] A list of networking interfaces objects.
  VpcSubnetLinode({
    required this.id,
    required this.interfaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'interfaces': pulumi.Input.encodeList<VpcSubnetLinodeInterface, Map<String, dynamic>>(interfaces, (value) => value.toMap()),
    };
  }

  factory VpcSubnetLinode.fromMap(Map<String, dynamic> map) {
    return VpcSubnetLinode(
      id: map['id'] as int,
      interfaces: pulumi.Input.decodeList<VpcSubnetLinodeInterface>(map['interfaces'], (value) => VpcSubnetLinodeInterface.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

