// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tcp_route_route_destination_response_networkservices_v1beta1.dart';

/// The specifications for routing traffic and applying associated policies.
class TcpRouteRouteActionResponseNetworkservicesV1beta1 {
  /// Optional. The destination services to which traffic should be forwarded. At least one destination service is required. Only one of route destination or original destination can be set.
  final pulumi.Input<
    List<TcpRouteRouteDestinationResponseNetworkservicesV1beta1>
  >
  destinations;

  /// Optional. If true, Router will use the destination IP and port of the original connection as the destination of the request. Default is false. Only one of route destinations or original destination can be set.
  final pulumi.Input<bool> originalDestination;

  /// Creates a new [TcpRouteRouteActionResponseNetworkservicesV1beta1].
  /// [destinations] Optional. The destination services to which traffic should be forwarded. At least one destination service is required. Only one of route destination or original destination can be set.
  /// [originalDestination] Optional. If true, Router will use the destination IP and port of the original connection as the destination of the request. Default is false. Only one of route destinations or original destination can be set.
  TcpRouteRouteActionResponseNetworkservicesV1beta1({
    required this.destinations,
    required this.originalDestination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations':
          pulumi.Input.mapInputValue<
            List<TcpRouteRouteDestinationResponseNetworkservicesV1beta1>,
            List<Map<String, dynamic>>
          >(
            destinations,
            (value) =>
                pulumi.Input.encodeList<
                  TcpRouteRouteDestinationResponseNetworkservicesV1beta1,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'originalDestination': originalDestination,
    };
  }

  factory TcpRouteRouteActionResponseNetworkservicesV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return TcpRouteRouteActionResponseNetworkservicesV1beta1(
      destinations: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          TcpRouteRouteDestinationResponseNetworkservicesV1beta1
        >(
          map['destinations']!,
          (value) =>
              TcpRouteRouteDestinationResponseNetworkservicesV1beta1.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      originalDestination: pulumi.Input.fromValue(
        map['originalDestination'] as bool,
      ),
    );
  }
}
