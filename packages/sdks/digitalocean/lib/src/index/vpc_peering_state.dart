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
    pulumi.Output<String>? createdAt,
    pulumi.Output<String>? name,
    pulumi.Output<String>? status,
    pulumi.Output<List<String>>? vpcIds,
  }) :
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      name = pulumi.Input.asOptionalInput<String>(name),
      status = pulumi.Input.asOptionalInput<String>(status),
      vpcIds = pulumi.Input.asOptionalInput<List<String>>(vpcIds);

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
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      vpcIds: map['vpcIds'] == null ? null : pulumi.Output.create<List<String>>((map['vpcIds'] as List).cast<String>()),
    );
  }
}

