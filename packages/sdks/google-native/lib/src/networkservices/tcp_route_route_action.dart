// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tcp_route_route_destination.dart';

/// The specifications for routing traffic and applying associated policies.
class TcpRouteRouteAction {
  /// Optional. The destination services to which traffic should be forwarded. At least one destination service is required. Only one of route destination or original destination can be set.
  final pulumi.Input<List<TcpRouteRouteDestination>>? destinations;
  /// Optional. If true, Router will use the destination IP and port of the original connection as the destination of the request. Default is false. Only one of route destinations or original destination can be set.
  final pulumi.Input<bool>? originalDestination;

  /// Creates a new [TcpRouteRouteAction].
  /// [destinations] Optional. The destination services to which traffic should be forwarded. At least one destination service is required. Only one of route destination or original destination can be set.
  /// [originalDestination] Optional. If true, Router will use the destination IP and port of the original connection as the destination of the request. Default is false. Only one of route destinations or original destination can be set.
  const TcpRouteRouteAction({
    this.destinations,
    this.originalDestination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': ?pulumi.Input.mapOptionalInputValue<List<TcpRouteRouteDestination>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<TcpRouteRouteDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'originalDestination': ?originalDestination,
    };
  }

  factory TcpRouteRouteAction.fromMap(Map<String, dynamic> map) {
    return TcpRouteRouteAction(
      destinations: (() { final guardedValue = map['destinations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TcpRouteRouteDestination>(guardedValue, (value) => TcpRouteRouteDestination.fromMap((value as Map).cast<String, dynamic>()))); })(),
      originalDestination: (() { final guardedValue = map['originalDestination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
