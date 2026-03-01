// ignore_for_file: unused_element, unnecessary_cast


/// Gateway routing details.
class GatewayRouteResponse {
  /// The route's AS path sequence.
  final String asPath;
  /// The gateway's local address.
  final String localAddress;
  /// The route's network prefix.
  final String network;
  /// The route's next hop.
  final String nextHop;
  /// The source this route was learned from.
  final String origin;
  /// The peer this route was learned from.
  final String sourcePeer;
  /// The route's weight.
  final int weight;

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
      asPath: map['asPath'] as String,
      localAddress: map['localAddress'] as String,
      network: map['network'] as String,
      nextHop: map['nextHop'] as String,
      origin: map['origin'] as String,
      sourcePeer: map['sourcePeer'] as String,
      weight: map['weight'] as int,
    );
  }
}

