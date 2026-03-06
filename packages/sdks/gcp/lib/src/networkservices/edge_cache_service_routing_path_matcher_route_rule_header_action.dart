// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'edge_cache_service_routing_path_matcher_route_rule_header_action_request_header_to_add.dart';
import 'edge_cache_service_routing_path_matcher_route_rule_header_action_request_header_to_remove.dart';
import 'edge_cache_service_routing_path_matcher_route_rule_header_action_response_header_to_add.dart';
import 'edge_cache_service_routing_path_matcher_route_rule_header_action_response_header_to_remove.dart';

class EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderAction {
  /// Describes a header to add.
  /// Structure is documented below.
  final pulumi.Input<List<EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToAdd>>? requestHeaderToAdds;
  /// A list of header names for headers that need to be removed from the request prior to forwarding the request to the origin.
  /// Structure is documented below.
  final pulumi.Input<List<EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToRemove>>? requestHeaderToRemoves;
  /// Headers to add to the response prior to sending it back to the client.
  /// Response headers are only sent to the client, and do not have an effect on the cache serving the response.
  /// Structure is documented below.
  final pulumi.Input<List<EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToAdd>>? responseHeaderToAdds;
  /// A list of header names for headers that need to be removed from the request prior to forwarding the request to the origin.
  /// Structure is documented below.
  final pulumi.Input<List<EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToRemove>>? responseHeaderToRemoves;

  /// Creates a new [EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderAction].
  /// [requestHeaderToAdds] Describes a header to add.
  /// [requestHeaderToRemoves] A list of header names for headers that need to be removed from the request prior to forwarding the request to the origin.
  /// [responseHeaderToAdds] Headers to add to the response prior to sending it back to the client.
  /// [responseHeaderToRemoves] A list of header names for headers that need to be removed from the request prior to forwarding the request to the origin.
  const EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderAction({
    this.requestHeaderToAdds,
    this.requestHeaderToRemoves,
    this.responseHeaderToAdds,
    this.responseHeaderToRemoves,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestHeaderToAdds': ?pulumi.Input.mapOptionalInputValue<List<EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToAdd>, List<Map<String, dynamic>>>(requestHeaderToAdds, (value) => pulumi.Input.encodeList<EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToAdd, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestHeaderToRemoves': ?pulumi.Input.mapOptionalInputValue<List<EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToRemove>, List<Map<String, dynamic>>>(requestHeaderToRemoves, (value) => pulumi.Input.encodeList<EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToRemove, Map<String, dynamic>>(value, (value) => value.toMap())),
      'responseHeaderToAdds': ?pulumi.Input.mapOptionalInputValue<List<EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToAdd>, List<Map<String, dynamic>>>(responseHeaderToAdds, (value) => pulumi.Input.encodeList<EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToAdd, Map<String, dynamic>>(value, (value) => value.toMap())),
      'responseHeaderToRemoves': ?pulumi.Input.mapOptionalInputValue<List<EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToRemove>, List<Map<String, dynamic>>>(responseHeaderToRemoves, (value) => pulumi.Input.encodeList<EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToRemove, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderAction.fromMap(Map<String, dynamic> map) {
    return EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderAction(
      requestHeaderToAdds: (() { final guardedValue = map['requestHeaderToAdds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToAdd>(guardedValue, (value) => EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToAdd.fromMap((value as Map).cast<String, dynamic>()))); })(),
      requestHeaderToRemoves: (() { final guardedValue = map['requestHeaderToRemoves']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToRemove>(guardedValue, (value) => EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToRemove.fromMap((value as Map).cast<String, dynamic>()))); })(),
      responseHeaderToAdds: (() { final guardedValue = map['responseHeaderToAdds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToAdd>(guardedValue, (value) => EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToAdd.fromMap((value as Map).cast<String, dynamic>()))); })(),
      responseHeaderToRemoves: (() { final guardedValue = map['responseHeaderToRemoves']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToRemove>(guardedValue, (value) => EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToRemove.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

