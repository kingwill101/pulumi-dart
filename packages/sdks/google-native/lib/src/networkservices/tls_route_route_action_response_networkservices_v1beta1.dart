// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tls_route_route_destination_response_networkservices_v1beta1.dart';

/// The specifications for routing traffic and applying associated policies.
class TlsRouteRouteActionResponseNetworkservicesV1beta1 {
  /// The destination services to which traffic should be forwarded. At least one destination service is required.
  final pulumi.Input<List<TlsRouteRouteDestinationResponseNetworkservicesV1beta1>> destinations;

  /// Creates a new [TlsRouteRouteActionResponseNetworkservicesV1beta1].
  /// [destinations] The destination services to which traffic should be forwarded. At least one destination service is required.
  const TlsRouteRouteActionResponseNetworkservicesV1beta1({
    required this.destinations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': pulumi.Input.mapInputValue<List<TlsRouteRouteDestinationResponseNetworkservicesV1beta1>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<TlsRouteRouteDestinationResponseNetworkservicesV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TlsRouteRouteActionResponseNetworkservicesV1beta1.fromMap(Map<String, dynamic> map) {
    return TlsRouteRouteActionResponseNetworkservicesV1beta1(
      destinations: pulumi.Input.fromValue(pulumi.Input.decodeList<TlsRouteRouteDestinationResponseNetworkservicesV1beta1>(map['destinations']!, (value) => TlsRouteRouteDestinationResponseNetworkservicesV1beta1.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

