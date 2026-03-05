// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tls_route_route_destination_networkservices_v1beta1.dart';

/// The specifications for routing traffic and applying associated policies.
class TlsRouteRouteActionNetworkservicesV1beta1 {
  /// The destination services to which traffic should be forwarded. At least one destination service is required.
  final pulumi.Input<List<TlsRouteRouteDestinationNetworkservicesV1beta1>> destinations;

  /// Creates a new [TlsRouteRouteActionNetworkservicesV1beta1].
  /// [destinations] The destination services to which traffic should be forwarded. At least one destination service is required.
  TlsRouteRouteActionNetworkservicesV1beta1({
    required this.destinations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': pulumi.Input.mapInputValue<List<TlsRouteRouteDestinationNetworkservicesV1beta1>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<TlsRouteRouteDestinationNetworkservicesV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TlsRouteRouteActionNetworkservicesV1beta1.fromMap(Map<String, dynamic> map) {
    return TlsRouteRouteActionNetworkservicesV1beta1(
      destinations: pulumi.Input.fromValue(pulumi.Input.decodeList<TlsRouteRouteDestinationNetworkservicesV1beta1>(map['destinations']!, (value) => TlsRouteRouteDestinationNetworkservicesV1beta1.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

