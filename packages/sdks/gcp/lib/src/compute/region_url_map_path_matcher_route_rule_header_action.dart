// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_url_map_path_matcher_route_rule_header_action_request_headers_to_add.dart';
import 'region_url_map_path_matcher_route_rule_header_action_response_headers_to_add.dart';

class RegionUrlMapPathMatcherRouteRuleHeaderAction {
  /// Headers to add to a matching request before forwarding the request to the backendService.
  /// Structure is documented below.
  final pulumi.Input<List<RegionUrlMapPathMatcherRouteRuleHeaderActionRequestHeadersToAdd>>? requestHeadersToAdds;
  /// A list of header names for headers that need to be removed from the request before forwarding the request to the backendService.
  final pulumi.Input<List<String>>? requestHeadersToRemoves;
  /// Headers to add the response before sending the response back to the client.
  /// Structure is documented below.
  final pulumi.Input<List<RegionUrlMapPathMatcherRouteRuleHeaderActionResponseHeadersToAdd>>? responseHeadersToAdds;
  /// A list of header names for headers that need to be removed from the response before sending the response back to the client.
  final pulumi.Input<List<String>>? responseHeadersToRemoves;

  /// Creates a new [RegionUrlMapPathMatcherRouteRuleHeaderAction].
  /// [requestHeadersToAdds] Headers to add to a matching request before forwarding the request to the backendService.
  /// [requestHeadersToRemoves] A list of header names for headers that need to be removed from the request before forwarding the request to the backendService.
  /// [responseHeadersToAdds] Headers to add the response before sending the response back to the client.
  /// [responseHeadersToRemoves] A list of header names for headers that need to be removed from the response before sending the response back to the client.
  RegionUrlMapPathMatcherRouteRuleHeaderAction({
    this.requestHeadersToAdds,
    this.requestHeadersToRemoves,
    this.responseHeadersToAdds,
    this.responseHeadersToRemoves,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestHeadersToAdds': ?pulumi.Input.mapOptionalInputValue<List<RegionUrlMapPathMatcherRouteRuleHeaderActionRequestHeadersToAdd>, List<Map<String, dynamic>>>(requestHeadersToAdds, (value) => pulumi.Input.encodeList<RegionUrlMapPathMatcherRouteRuleHeaderActionRequestHeadersToAdd, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestHeadersToRemoves': ?requestHeadersToRemoves,
      'responseHeadersToAdds': ?pulumi.Input.mapOptionalInputValue<List<RegionUrlMapPathMatcherRouteRuleHeaderActionResponseHeadersToAdd>, List<Map<String, dynamic>>>(responseHeadersToAdds, (value) => pulumi.Input.encodeList<RegionUrlMapPathMatcherRouteRuleHeaderActionResponseHeadersToAdd, Map<String, dynamic>>(value, (value) => value.toMap())),
      'responseHeadersToRemoves': ?responseHeadersToRemoves,
    };
  }

  factory RegionUrlMapPathMatcherRouteRuleHeaderAction.fromMap(Map<String, dynamic> map) {
    return RegionUrlMapPathMatcherRouteRuleHeaderAction(
      requestHeadersToAdds: map['requestHeadersToAdds'] == null ? null : (pulumi.Input.decodeList<RegionUrlMapPathMatcherRouteRuleHeaderActionRequestHeadersToAdd>(map['requestHeadersToAdds']!, (value) => RegionUrlMapPathMatcherRouteRuleHeaderActionRequestHeadersToAdd.fromMap((value as Map).cast<String, dynamic>()))).input(),
      requestHeadersToRemoves: map['requestHeadersToRemoves'] == null ? null : ((map['requestHeadersToRemoves']! as List).cast<String>()).input(),
      responseHeadersToAdds: map['responseHeadersToAdds'] == null ? null : (pulumi.Input.decodeList<RegionUrlMapPathMatcherRouteRuleHeaderActionResponseHeadersToAdd>(map['responseHeadersToAdds']!, (value) => RegionUrlMapPathMatcherRouteRuleHeaderActionResponseHeadersToAdd.fromMap((value as Map).cast<String, dynamic>()))).input(),
      responseHeadersToRemoves: map['responseHeadersToRemoves'] == null ? null : ((map['responseHeadersToRemoves']! as List).cast<String>()).input(),
    );
  }
}

