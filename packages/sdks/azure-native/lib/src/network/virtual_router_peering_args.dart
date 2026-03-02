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
    this.id,
    this.name,
    this.peerAsn,
    this.peerIp,
    this.peeringName,
    required this.resourceGroupName,
    required this.virtualRouterName,
  });

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
      id: map['id'] == null ? null : (map['id'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      peerAsn: map['peerAsn'] == null ? null : (map['peerAsn'] as double).input(),
      peerIp: map['peerIp'] == null ? null : (map['peerIp'] as String).input(),
      peeringName: map['peeringName'] == null ? null : (map['peeringName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      virtualRouterName: (map['virtualRouterName'] as String).input(),
    );
  }
}

