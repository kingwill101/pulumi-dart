// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tls_route_route_destination.dart';

/// The specifications for routing traffic and applying associated policies.
class TlsRouteRouteAction {
  /// The destination services to which traffic should be forwarded. At least one destination service is required.
  final pulumi.Input<List<TlsRouteRouteDestination>> destinations;

  /// Creates a new [TlsRouteRouteAction].
  /// [destinations] The destination services to which traffic should be forwarded. At least one destination service is required.
  TlsRouteRouteAction({
    required this.destinations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': pulumi.Input.mapInputValue<List<TlsRouteRouteDestination>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<TlsRouteRouteDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TlsRouteRouteAction.fromMap(Map<String, dynamic> map) {
    return TlsRouteRouteAction(
      destinations: pulumi.Input.fromValue(pulumi.Input.decodeList<TlsRouteRouteDestination>(map['destinations']!, (value) => TlsRouteRouteDestination.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

