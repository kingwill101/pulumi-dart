// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sharedfilesystem_share_network_share_network_args_doc}
/// The set of arguments for ShareNetwork.
/// {@endtemplate}
/// {@macro pulumi_sharedfilesystem_share_network_share_network_args_doc}
class ShareNetworkArgs {
  /// The human-readable description for the share network.
  /// Changing this updates the description of the existing share network.
  final pulumi.Input<String>? description;
  /// The name for the share network. Changing this updates the name
  /// of the existing share network.
  final pulumi.Input<String>? name;
  /// The UUID of a neutron network when setting up or updating
  /// a share network. Changing this updates the existing share network if it's not used by
  /// shares.
  final pulumi.Input<String> neutronNetId;
  /// The UUID of the neutron subnet when setting up or
  /// updating a share network. Changing this updates the existing share network if it's
  /// not used by shares.
  final pulumi.Input<String> neutronSubnetId;
  /// The region in which to obtain the V2 Shared File System client.
  /// A Shared File System client is needed to create a share network. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// share network.
  final pulumi.Input<String>? region;
  /// The list of security service IDs to associate with
  /// the share network. The security service must be specified by ID and not name.
  final pulumi.Input<List<String>>? securityServiceIds;

  /// Creates a new [ShareNetworkArgs].
  /// [description] The human-readable description for the share network.
  /// [name] The name for the share network. Changing this updates the name
  /// [neutronNetId] The UUID of a neutron network when setting up or updating
  /// [neutronSubnetId] The UUID of the neutron subnet when setting up or
  /// [region] The region in which to obtain the V2 Shared File System client.
  /// [securityServiceIds] The list of security service IDs to associate with
  ShareNetworkArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    required pulumi.Output<String> neutronNetId,
    required pulumi.Output<String> neutronSubnetId,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? securityServiceIds,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      neutronNetId = pulumi.Input.asInput<String>(neutronNetId),
      neutronSubnetId = pulumi.Input.asInput<String>(neutronSubnetId),
      region = pulumi.Input.asOptionalInput<String>(region),
      securityServiceIds = pulumi.Input.asOptionalInput<List<String>>(securityServiceIds);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'neutronNetId': neutronNetId,
      'neutronSubnetId': neutronSubnetId,
      'region': ?region,
      'securityServiceIds': ?securityServiceIds,
    };
  }

  factory ShareNetworkArgs.fromMap(Map<String, dynamic> map) {
    return ShareNetworkArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      neutronNetId: pulumi.Output.create<String>(map['neutronNetId'] as String),
      neutronSubnetId: pulumi.Output.create<String>(map['neutronSubnetId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      securityServiceIds: map['securityServiceIds'] == null ? null : pulumi.Output.create<List<String>>((map['securityServiceIds'] as List).cast<String>()),
    );
  }
}

