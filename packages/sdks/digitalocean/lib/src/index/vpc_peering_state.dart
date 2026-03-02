// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpcPeering resources.
class VpcPeeringState {
  /// The date and time of when the VPC Peering was created.
  final pulumi.Input<String>? createdAt;
  /// A name for the VPC Peering. Must be unique and contain alphanumeric characters, dashes, and periods only.
  final pulumi.Input<String>? name;
  /// The status of the VPC Peering.
  final pulumi.Input<String>? status;
  /// A set of two VPC IDs to be peered.
  final pulumi.Input<List<String>>? vpcIds;

  /// Creates a new [VpcPeeringState].
  /// [createdAt] The date and time of when the VPC Peering was created.
  /// [name] A name for the VPC Peering. Must be unique and contain alphanumeric characters, dashes, and periods only.
  /// [status] The status of the VPC Peering.
  /// [vpcIds] A set of two VPC IDs to be peered.
  VpcPeeringState({
    this.createdAt,
    this.name,
    this.status,
    this.vpcIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'name': ?name,
      'status': ?status,
      'vpcIds': ?vpcIds,
    };
  }

  factory VpcPeeringState.fromMap(Map<String, dynamic> map) {
    return VpcPeeringState(
      createdAt: map['createdAt'] == null ? null : (map['createdAt'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      vpcIds: map['vpcIds'] == null ? null : ((map['vpcIds'] as List).cast<String>()).input(),
    );
  }
}

