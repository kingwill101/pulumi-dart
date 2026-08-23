// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_vpc_peering_get_vpc_peering_args_doc}
/// Arguments for getVpcPeering.
/// {@endtemplate}
/// {@macro pulumi_index_get_vpc_peering_get_vpc_peering_args_doc}
class GetVpcPeeringArgs {
  /// The unique identifier of an existing VPC Peering.
  final pulumi.Input<String>? id;
  /// The name of an existing VPC Peering.
  final pulumi.Input<String>? name;
  /// The list of VPC IDs involved in the peering.
  final pulumi.Input<List<String>>? vpcIds;

  /// Creates a new [GetVpcPeeringArgs].
  /// [id] The unique identifier of an existing VPC Peering.
  /// [name] The name of an existing VPC Peering.
  /// [vpcIds] The list of VPC IDs involved in the peering.
  const GetVpcPeeringArgs({
    this.id,
    this.name,
    this.vpcIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'vpcIds': ?vpcIds,
    };
  }

  factory GetVpcPeeringArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcPeeringArgs(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcIds: (() { final guardedValue = map['vpcIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
