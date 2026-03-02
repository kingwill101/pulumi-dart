// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_vpc_peering_vpc_peering_args_doc}
/// The set of arguments for VpcPeering.
/// {@endtemplate}
/// {@macro pulumi_index_vpc_peering_vpc_peering_args_doc}
class VpcPeeringArgs {
  /// A name for the VPC Peering. Must be unique and contain alphanumeric characters, dashes, and periods only.
  final pulumi.Input<String>? name;
  /// A set of two VPC IDs to be peered.
  final pulumi.Input<List<String>> vpcIds;

  /// Creates a new [VpcPeeringArgs].
  /// [name] A name for the VPC Peering. Must be unique and contain alphanumeric characters, dashes, and periods only.
  /// [vpcIds] A set of two VPC IDs to be peered.
  VpcPeeringArgs({
    this.name,
    required this.vpcIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'vpcIds': vpcIds,
    };
  }

  factory VpcPeeringArgs.fromMap(Map<String, dynamic> map) {
    return VpcPeeringArgs(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      vpcIds: ((map['vpcIds'] as List).cast<String>()).input(),
    );
  }
}

