// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tcp_route_route_destination_networkservices_v1beta1.dart';

/// The specifications for routing traffic and applying associated policies.
class TcpRouteRouteActionNetworkservicesV1beta1 {
  /// Optional. The destination services to which traffic should be forwarded. At least one destination service is required. Only one of route destination or original destination can be set.
  final pulumi.Input<List<TcpRouteRouteDestinationNetworkservicesV1beta1>>? destinations;
  /// Optional. If true, Router will use the destination IP and port of the original connection as the destination of the request. Default is false. Only one of route destinations or original destination can be set.
  final pulumi.Input<bool>? originalDestination;

  /// Creates a new [TcpRouteRouteActionNetworkservicesV1beta1].
  /// [destinations] Optional. The destination services to which traffic should be forwarded. At least one destination service is required. Only one of route destination or original destination can be set.
  /// [originalDestination] Optional. If true, Router will use the destination IP and port of the original connection as the destination of the request. Default is false. Only one of route destinations or original destination can be set.
  const TcpRouteRouteActionNetworkservicesV1beta1({
    this.destinations,
    this.originalDestination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': ?pulumi.Input.mapOptionalInputValue<List<TcpRouteRouteDestinationNetworkservicesV1beta1>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<TcpRouteRouteDestinationNetworkservicesV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'originalDestination': ?originalDestination,
    };
  }

  factory TcpRouteRouteActionNetworkservicesV1beta1.fromMap(Map<String, dynamic> map) {
    return TcpRouteRouteActionNetworkservicesV1beta1(
      destinations: (() { final guardedValue = map['destinations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TcpRouteRouteDestinationNetworkservicesV1beta1>(guardedValue, (value) => TcpRouteRouteDestinationNetworkservicesV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      originalDestination: (() { final guardedValue = map['originalDestination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
