// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_circuit_peering_config.dart';
import 'ipv6_express_route_circuit_peering_config.dart';

/// {@template pulumi_network_express_route_cross_connection_peering_args_doc}
/// The set of arguments for ExpressRouteCrossConnectionPeering.
/// {@endtemplate}
/// {@macro pulumi_network_express_route_cross_connection_peering_args_doc}
class ExpressRouteCrossConnectionPeeringArgs {
  /// The name of the ExpressRouteCrossConnection.
  final pulumi.Input<String> crossConnectionName;
  /// The GatewayManager Etag.
  final pulumi.Input<String>? gatewayManagerEtag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The IPv6 peering configuration.
  final pulumi.Input<Ipv6ExpressRouteCircuitPeeringConfig>? ipv6PeeringConfig;
  /// The Microsoft peering configuration.
  final pulumi.Input<ExpressRouteCircuitPeeringConfig>? microsoftPeeringConfig;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// The peer ASN.
  final pulumi.Input<double>? peerASN;
  /// The name of the peering.
  final pulumi.Input<String>? peeringName;
  /// The peering type.
  final pulumi.Input<String>? peeringType;
  /// The primary address prefix.
  final pulumi.Input<String>? primaryPeerAddressPrefix;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The secondary address prefix.
  final pulumi.Input<String>? secondaryPeerAddressPrefix;
  /// The shared key.
  final pulumi.Input<String>? sharedKey;
  /// The peering state.
  final pulumi.Input<String>? state;
  /// The VLAN ID.
  final pulumi.Input<int>? vlanId;

  /// Creates a new [ExpressRouteCrossConnectionPeeringArgs].
  /// [crossConnectionName] The name of the ExpressRouteCrossConnection.
  /// [gatewayManagerEtag] The GatewayManager Etag.
  /// [id] Resource ID.
  /// [ipv6PeeringConfig] The IPv6 peering configuration.
  /// [microsoftPeeringConfig] The Microsoft peering configuration.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [peerASN] The peer ASN.
  /// [peeringName] The name of the peering.
  /// [peeringType] The peering type.
  /// [primaryPeerAddressPrefix] The primary address prefix.
  /// [resourceGroupName] The name of the resource group.
  /// [secondaryPeerAddressPrefix] The secondary address prefix.
  /// [sharedKey] The shared key.
  /// [state] The peering state.
  /// [vlanId] The VLAN ID.
  ExpressRouteCrossConnectionPeeringArgs({
    required this.crossConnectionName,
    this.gatewayManagerEtag,
    this.id,
    this.ipv6PeeringConfig,
    this.microsoftPeeringConfig,
    this.name,
    this.peerASN,
    this.peeringName,
    this.peeringType,
    this.primaryPeerAddressPrefix,
    required this.resourceGroupName,
    this.secondaryPeerAddressPrefix,
    this.sharedKey,
    this.state,
    this.vlanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossConnectionName': crossConnectionName,
      'gatewayManagerEtag': ?gatewayManagerEtag,
      'id': ?id,
      'ipv6PeeringConfig': ?pulumi.Input.mapOptionalInputValue<Ipv6ExpressRouteCircuitPeeringConfig, Map<String, dynamic>>(ipv6PeeringConfig, (value) => value.toMap()),
      'microsoftPeeringConfig': ?pulumi.Input.mapOptionalInputValue<ExpressRouteCircuitPeeringConfig, Map<String, dynamic>>(microsoftPeeringConfig, (value) => value.toMap()),
      'name': ?name,
      'peerASN': ?peerASN,
      'peeringName': ?peeringName,
      'peeringType': ?peeringType,
      'primaryPeerAddressPrefix': ?primaryPeerAddressPrefix,
      'resourceGroupName': resourceGroupName,
      'secondaryPeerAddressPrefix': ?secondaryPeerAddressPrefix,
      'sharedKey': ?sharedKey,
      'state': ?state,
      'vlanId': ?vlanId,
    };
  }

  factory ExpressRouteCrossConnectionPeeringArgs.fromMap(Map<String, dynamic> map) {
    return ExpressRouteCrossConnectionPeeringArgs(
      crossConnectionName: (map['crossConnectionName'] as String).input(),
      gatewayManagerEtag: map['gatewayManagerEtag'] == null ? null : (map['gatewayManagerEtag'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      ipv6PeeringConfig: map['ipv6PeeringConfig'] == null ? null : (Ipv6ExpressRouteCircuitPeeringConfig.fromMap((map['ipv6PeeringConfig'] as Map).cast<String, dynamic>())).input(),
      microsoftPeeringConfig: map['microsoftPeeringConfig'] == null ? null : (ExpressRouteCircuitPeeringConfig.fromMap((map['microsoftPeeringConfig'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      peerASN: map['peerASN'] == null ? null : (map['peerASN'] as double).input(),
      peeringName: map['peeringName'] == null ? null : (map['peeringName'] as String).input(),
      peeringType: map['peeringType'] == null ? null : (map['peeringType'] as String).input(),
      primaryPeerAddressPrefix: map['primaryPeerAddressPrefix'] == null ? null : (map['primaryPeerAddressPrefix'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      secondaryPeerAddressPrefix: map['secondaryPeerAddressPrefix'] == null ? null : (map['secondaryPeerAddressPrefix'] as String).input(),
      sharedKey: map['sharedKey'] == null ? null : (map['sharedKey'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      vlanId: map['vlanId'] == null ? null : (map['vlanId'] as int).input(),
    );
  }
}

