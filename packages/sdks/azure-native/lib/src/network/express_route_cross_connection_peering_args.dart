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
    required pulumi.Output<String> crossConnectionName,
    pulumi.Output<String>? gatewayManagerEtag,
    pulumi.Output<String>? id,
    pulumi.Output<Ipv6ExpressRouteCircuitPeeringConfig>? ipv6PeeringConfig,
    pulumi.Output<ExpressRouteCircuitPeeringConfig>? microsoftPeeringConfig,
    pulumi.Output<String>? name,
    pulumi.Output<double>? peerASN,
    pulumi.Output<String>? peeringName,
    pulumi.Output<String>? peeringType,
    pulumi.Output<String>? primaryPeerAddressPrefix,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? secondaryPeerAddressPrefix,
    pulumi.Output<String>? sharedKey,
    pulumi.Output<String>? state,
    pulumi.Output<int>? vlanId,
  }) :
      crossConnectionName = pulumi.Input.asInput<String>(crossConnectionName),
      gatewayManagerEtag = pulumi.Input.asOptionalInput<String>(gatewayManagerEtag),
      id = pulumi.Input.asOptionalInput<String>(id),
      ipv6PeeringConfig = pulumi.Input.asOptionalInput<Ipv6ExpressRouteCircuitPeeringConfig>(ipv6PeeringConfig),
      microsoftPeeringConfig = pulumi.Input.asOptionalInput<ExpressRouteCircuitPeeringConfig>(microsoftPeeringConfig),
      name = pulumi.Input.asOptionalInput<String>(name),
      peerASN = pulumi.Input.asOptionalInput<double>(peerASN),
      peeringName = pulumi.Input.asOptionalInput<String>(peeringName),
      peeringType = pulumi.Input.asOptionalInput<String>(peeringType),
      primaryPeerAddressPrefix = pulumi.Input.asOptionalInput<String>(primaryPeerAddressPrefix),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      secondaryPeerAddressPrefix = pulumi.Input.asOptionalInput<String>(secondaryPeerAddressPrefix),
      sharedKey = pulumi.Input.asOptionalInput<String>(sharedKey),
      state = pulumi.Input.asOptionalInput<String>(state),
      vlanId = pulumi.Input.asOptionalInput<int>(vlanId);

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
      crossConnectionName: pulumi.Output.create<String>(map['crossConnectionName'] as String),
      gatewayManagerEtag: map['gatewayManagerEtag'] == null ? null : pulumi.Output.create<String>(map['gatewayManagerEtag'] as String),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      ipv6PeeringConfig: map['ipv6PeeringConfig'] == null ? null : pulumi.Output.create<Ipv6ExpressRouteCircuitPeeringConfig>(Ipv6ExpressRouteCircuitPeeringConfig.fromMap((map['ipv6PeeringConfig'] as Map).cast<String, dynamic>())),
      microsoftPeeringConfig: map['microsoftPeeringConfig'] == null ? null : pulumi.Output.create<ExpressRouteCircuitPeeringConfig>(ExpressRouteCircuitPeeringConfig.fromMap((map['microsoftPeeringConfig'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      peerASN: map['peerASN'] == null ? null : pulumi.Output.create<double>(map['peerASN'] as double),
      peeringName: map['peeringName'] == null ? null : pulumi.Output.create<String>(map['peeringName'] as String),
      peeringType: map['peeringType'] == null ? null : pulumi.Output.create<String>(map['peeringType'] as String),
      primaryPeerAddressPrefix: map['primaryPeerAddressPrefix'] == null ? null : pulumi.Output.create<String>(map['primaryPeerAddressPrefix'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      secondaryPeerAddressPrefix: map['secondaryPeerAddressPrefix'] == null ? null : pulumi.Output.create<String>(map['secondaryPeerAddressPrefix'] as String),
      sharedKey: map['sharedKey'] == null ? null : pulumi.Output.create<String>(map['sharedKey'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      vlanId: map['vlanId'] == null ? null : pulumi.Output.create<int>(map['vlanId'] as int),
    );
  }
}

