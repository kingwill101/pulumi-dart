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
    this.allSecurityGroupIds,
    this.enforce,
    this.portId,
    this.region,
    this.securityGroupIds,
  });

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
      allSecurityGroupIds: (() {
        final guardedValue = map['allSecurityGroupIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      enforce: (() {
        final guardedValue = map['enforce'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      portId: (() {
        final guardedValue = map['portId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      securityGroupIds: (() {
        final guardedValue = map['securityGroupIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
