// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tls_route_route_destination_response.dart';

/// The specifications for routing traffic and applying associated policies.
class TlsRouteRouteActionResponse {
  /// The destination services to which traffic should be forwarded. At least one destination service is required.
  final pulumi.Input<List<TlsRouteRouteDestinationResponse>> destinations;

  /// Creates a new [TlsRouteRouteActionResponse].
  /// [destinations] The destination services to which traffic should be forwarded. At least one destination service is required.
  TlsRouteRouteActionResponse({
    required this.destinations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': pulumi.Input.mapInputValue<List<TlsRouteRouteDestinationResponse>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<TlsRouteRouteDestinationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TlsRouteRouteActionResponse.fromMap(Map<String, dynamic> map) {
    return TlsRouteRouteActionResponse(
      destinations: pulumi.Input.fromValue(pulumi.Input.decodeList<TlsRouteRouteDestinationResponse>(map['destinations']!, (value) => TlsRouteRouteDestinationResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

