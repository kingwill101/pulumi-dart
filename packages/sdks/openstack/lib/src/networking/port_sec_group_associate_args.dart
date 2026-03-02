// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networking_port_sec_group_associate_port_sec_group_associate_args_doc}
/// The set of arguments for PortSecGroupAssociate.
/// {@endtemplate}
/// {@macro pulumi_networking_port_sec_group_associate_port_sec_group_associate_args_doc}
class PortSecGroupAssociateArgs {
  /// Whether to replace or append the list of security
  /// groups, specified in the `security_group_ids`. Defaults to `false`.
  final pulumi.Input<bool>? enforce;
  /// An UUID of the port to apply security groups to.
  final pulumi.Input<String> portId;
  /// The region in which to obtain the V2 networking client.
  /// A networking client is needed to manage a port. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// resource.
  final pulumi.Input<String>? region;
  /// A list of security group IDs to apply to
  /// the port. The security groups must be specified by ID and not name (as
  /// opposed to how they are configured with the Compute Instance).
  final pulumi.Input<List<String>> securityGroupIds;

  /// Creates a new [PortSecGroupAssociateArgs].
  /// [enforce] Whether to replace or append the list of security
  /// [portId] An UUID of the port to apply security groups to.
  /// [region] The region in which to obtain the V2 networking client.
  /// [securityGroupIds] A list of security group IDs to apply to
  PortSecGroupAssociateArgs({
    this.enforce,
    required this.portId,
    this.region,
    required this.securityGroupIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enforce': ?enforce,
      'portId': portId,
      'region': ?region,
      'securityGroupIds': securityGroupIds,
    };
  }

  factory PortSecGroupAssociateArgs.fromMap(Map<String, dynamic> map) {
    return PortSecGroupAssociateArgs(
      enforce: map['enforce'] == null ? null : (map['enforce']! as bool).input(),
      portId: (map['portId'] as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      securityGroupIds: ((map['securityGroupIds'] as List).cast<String>()).input(),
    );
  }
}

