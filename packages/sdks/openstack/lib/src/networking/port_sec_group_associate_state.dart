// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PortSecGroupAssociate resources.
class PortSecGroupAssociateState {
  /// The collection of Security Group IDs on the port
  /// which have been explicitly and implicitly added.
  final pulumi.Input<List<String>>? allSecurityGroupIds;
  /// Whether to replace or append the list of security
  /// groups, specified in the `security_group_ids`. Defaults to `false`.
  final pulumi.Input<bool>? enforce;
  /// An UUID of the port to apply security groups to.
  final pulumi.Input<String>? portId;
  /// The region in which to obtain the V2 networking client.
  /// A networking client is needed to manage a port. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// resource.
  final pulumi.Input<String>? region;
  /// A list of security group IDs to apply to
  /// the port. The security groups must be specified by ID and not name (as
  /// opposed to how they are configured with the Compute Instance).
  final pulumi.Input<List<String>>? securityGroupIds;

  /// Creates a new [PortSecGroupAssociateState].
  /// [allSecurityGroupIds] The collection of Security Group IDs on the port
  /// [enforce] Whether to replace or append the list of security
  /// [portId] An UUID of the port to apply security groups to.
  /// [region] The region in which to obtain the V2 networking client.
  /// [securityGroupIds] A list of security group IDs to apply to
  PortSecGroupAssociateState({
    pulumi.Output<List<String>>? allSecurityGroupIds,
    pulumi.Output<bool>? enforce,
    pulumi.Output<String>? portId,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? securityGroupIds,
  }) :
      allSecurityGroupIds = pulumi.Input.asOptionalInput<List<String>>(allSecurityGroupIds),
      enforce = pulumi.Input.asOptionalInput<bool>(enforce),
      portId = pulumi.Input.asOptionalInput<String>(portId),
      region = pulumi.Input.asOptionalInput<String>(region),
      securityGroupIds = pulumi.Input.asOptionalInput<List<String>>(securityGroupIds);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allSecurityGroupIds': ?allSecurityGroupIds,
      'enforce': ?enforce,
      'portId': ?portId,
      'region': ?region,
      'securityGroupIds': ?securityGroupIds,
    };
  }

  factory PortSecGroupAssociateState.fromMap(Map<String, dynamic> map) {
    return PortSecGroupAssociateState(
      allSecurityGroupIds: map['allSecurityGroupIds'] == null ? null : pulumi.Output.create<List<String>>((map['allSecurityGroupIds'] as List).cast<String>()),
      enforce: map['enforce'] == null ? null : pulumi.Output.create<bool>(map['enforce'] as bool),
      portId: map['portId'] == null ? null : pulumi.Output.create<String>(map['portId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      securityGroupIds: map['securityGroupIds'] == null ? null : pulumi.Output.create<List<String>>((map['securityGroupIds'] as List).cast<String>()),
    );
  }
}

