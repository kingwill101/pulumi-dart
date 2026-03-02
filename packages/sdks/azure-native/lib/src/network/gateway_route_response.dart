// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gateway routing details.
class GatewayRouteResponse {
  /// The route's AS path sequence.
  final pulumi.Input<String> asPath;
  /// The gateway's local address.
  final pulumi.Input<String> localAddress;
  /// The route's network prefix.
  final pulumi.Input<String> network;
  /// The route's next hop.
  final pulumi.Input<String> nextHop;
  /// The source this route was learned from.
  final pulumi.Input<String> origin;
  /// The peer this route was learned from.
  final pulumi.Input<String> sourcePeer;
  /// The route's weight.
  final pulumi.Input<int> weight;

  /// Creates a new [GatewayRouteResponse].
  /// [asPath] The route's AS path sequence.
  /// [localAddress] The gateway's local address.
  /// [network] The route's network prefix.
  /// [nextHop] The route's next hop.
  /// [origin] The source this route was learned from.
  /// [sourcePeer] The peer this route was learned from.
  /// [weight] The route's weight.
  GatewayRouteResponse({
    required this.asPath,
    required this.localAddress,
    required this.network,
    required this.nextHop,
    required this.origin,
    required this.sourcePeer,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asPath': asPath,
      'localAddress': localAddress,
      'network': network,
      'nextHop': nextHop,
      'origin': origin,
      'sourcePeer': sourcePeer,
      'weight': weight,
    };
  }

  factory GatewayRouteResponse.fromMap(Map<String, dynamic> map) {
    return GatewayRouteResponse(
      asPath: (map['asPath'] as String).input(),
      localAddress: (map['localAddress'] as String).input(),
      network: (map['network'] as String).input(),
      nextHop: (map['nextHop'] as String).input(),
      origin: (map['origin'] as String).input(),
      sourcePeer: (map['sourcePeer'] as String).input(),
      weight: (map['weight'] as int).input(),
    );
  }
}

