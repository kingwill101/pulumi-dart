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
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      peerAsn: (() {
        final guardedValue = map['peerAsn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      peerIp: (() {
        final guardedValue = map['peerIp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      peeringName: (() {
        final guardedValue = map['peeringName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      virtualRouterName: pulumi.Input.fromValue(
        map['virtualRouterName'] as String,
      ),
    );
  }
}
