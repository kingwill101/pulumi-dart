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
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcIds: (() { final guardedValue = map['vpcIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

