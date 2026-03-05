// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tcp_route_rule_action_destination.dart';

class TcpRouteRuleAction {
  /// The destination services to which traffic should be forwarded. At least one destination service is required.
  /// Structure is documented below.
  final pulumi.Input<List<TcpRouteRuleActionDestination>>? destinations;
  /// Specifies the idle timeout for the selected route. The idle timeout is defined as the period in which there are no bytes sent or received on either the upstream or downstream connection. If not set, the default idle timeout is 30 seconds. If set to 0s, the timeout will be disabled.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final pulumi.Input<String>? idleTimeout;
  /// If true, Router will use the destination IP and port of the original connection as the destination of the request.
  final pulumi.Input<bool>? originalDestination;

  /// Creates a new [TcpRouteRuleAction].
  /// [destinations] The destination services to which traffic should be forwarded. At least one destination service is required.
  /// [idleTimeout] Specifies the idle timeout for the selected route. The idle timeout is defined as the period in which there are no bytes sent or received on either the upstream or downstream connection. If not set, the default idle timeout is 30 seconds. If set to 0s, the timeout will be disabled.
  /// [originalDestination] If true, Router will use the destination IP and port of the original connection as the destination of the request.
  TcpRouteRuleAction({
    this.destinations,
    this.idleTimeout,
    this.originalDestination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': ?pulumi.Input.mapOptionalInputValue<List<TcpRouteRuleActionDestination>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<TcpRouteRuleActionDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'idleTimeout': ?idleTimeout,
      'originalDestination': ?originalDestination,
    };
  }

  factory TcpRouteRuleAction.fromMap(Map<String, dynamic> map) {
    return TcpRouteRuleAction(
      destinations: (() { final guardedValue = map['destinations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TcpRouteRuleActionDestination>(guardedValue, (value) => TcpRouteRuleActionDestination.fromMap((value as Map).cast<String, dynamic>()))); })(),
      idleTimeout: (() { final guardedValue = map['idleTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      originalDestination: (() { final guardedValue = map['originalDestination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

