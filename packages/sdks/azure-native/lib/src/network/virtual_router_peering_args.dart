// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_virtual_router_peering_args_doc}
/// The set of arguments for VirtualRouterPeering.
/// {@endtemplate}
/// {@macro pulumi_network_virtual_router_peering_args_doc}
class VirtualRouterPeeringArgs {
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Name of the virtual router peering that is unique within a virtual router.
  final pulumi.Input<String>? name;
  /// Peer ASN.
  final pulumi.Input<double>? peerAsn;
  /// Peer IP.
  final pulumi.Input<String>? peerIp;
  /// The name of the Virtual Router Peering.
  final pulumi.Input<String>? peeringName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Virtual Router.
  final pulumi.Input<String> virtualRouterName;

  /// Creates a new [VirtualRouterPeeringArgs].
  /// [id] Resource ID.
  /// [name] Name of the virtual router peering that is unique within a virtual router.
  /// [peerAsn] Peer ASN.
  /// [peerIp] Peer IP.
  /// [peeringName] The name of the Virtual Router Peering.
  /// [resourceGroupName] The name of the resource group.
  /// [virtualRouterName] The name of the Virtual Router.
  VirtualRouterPeeringArgs({
    pulumi.Output<String>? id,
    pulumi.Output<String>? name,
    pulumi.Output<double>? peerAsn,
    pulumi.Output<String>? peerIp,
    pulumi.Output<String>? peeringName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> virtualRouterName,
  }) :
      id = pulumi.Input.asOptionalInput<String>(id),
      name = pulumi.Input.asOptionalInput<String>(name),
      peerAsn = pulumi.Input.asOptionalInput<double>(peerAsn),
      peerIp = pulumi.Input.asOptionalInput<String>(peerIp),
      peeringName = pulumi.Input.asOptionalInput<String>(peeringName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      virtualRouterName = pulumi.Input.asInput<String>(virtualRouterName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'peerAsn': ?peerAsn,
      'peerIp': ?peerIp,
      'peeringName': ?peeringName,
      'resourceGroupName': resourceGroupName,
      'virtualRouterName': virtualRouterName,
    };
  }

  factory VirtualRouterPeeringArgs.fromMap(Map<String, dynamic> map) {
    return VirtualRouterPeeringArgs(
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      peerAsn: map['peerAsn'] == null ? null : pulumi.Output.create<double>(map['peerAsn'] as double),
      peerIp: map['peerIp'] == null ? null : pulumi.Output.create<String>(map['peerIp'] as String),
      peeringName: map['peeringName'] == null ? null : pulumi.Output.create<String>(map['peeringName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      virtualRouterName: pulumi.Output.create<String>(map['virtualRouterName'] as String),
    );
  }
}

