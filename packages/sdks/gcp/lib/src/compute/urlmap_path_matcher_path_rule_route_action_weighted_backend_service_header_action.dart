// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'urlmap_path_matcher_path_rule_route_action_weighted_backend_service_header_action_request_headers_to_add.dart';
import 'urlmap_path_matcher_path_rule_route_action_weighted_backend_service_header_action_response_headers_to_add.dart';

class URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderAction {
  /// Headers to add to a matching request prior to forwarding the request to the backendService.
  /// Structure is documented below.
  final List<URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAdd>? requestHeadersToAdds;
  /// A list of header names for headers that need to be removed from the request prior to
  /// forwarding the request to the backendService.
  final List<String>? requestHeadersToRemoves;
  /// Headers to add the response prior to sending the response back to the client.
  /// Structure is documented below.
  final List<URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAdd>? responseHeadersToAdds;
  /// A list of header names for headers that need to be removed from the response prior to sending the
  /// response back to the client.
  final List<String>? responseHeadersToRemoves;

  /// Creates a new [URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderAction].
  /// [requestHeadersToAdds] Headers to add to a matching request prior to forwarding the request to the backendService.
  /// [requestHeadersToRemoves] A list of header names for headers that need to be removed from the request prior to
  /// [responseHeadersToAdds] Headers to add the response prior to sending the response back to the client.
  /// [responseHeadersToRemoves] A list of header names for headers that need to be removed from the response prior to sending the
  URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderAction({
    this.requestHeadersToAdds,
    this.requestHeadersToRemoves,
    this.responseHeadersToAdds,
    this.responseHeadersToRemoves,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestHeadersToAdds': ?requestHeadersToAdds == null ? null : pulumi.Input.encodeList<URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAdd, Map<String, dynamic>>(requestHeadersToAdds!, (value) => value.toMap()),
      'requestHeadersToRemoves': ?requestHeadersToRemoves,
      'responseHeadersToAdds': ?responseHeadersToAdds == null ? null : pulumi.Input.encodeList<URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAdd, Map<String, dynamic>>(responseHeadersToAdds!, (value) => value.toMap()),
      'responseHeadersToRemoves': ?responseHeadersToRemoves,
    };
  }

  factory URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderAction.fromMap(Map<String, dynamic> map) {
    return URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderAction(
      requestHeadersToAdds: map['requestHeadersToAdds'] == null ? null : pulumi.Input.decodeList<URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAdd>(map['requestHeadersToAdds'], (value) => URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAdd.fromMap((value as Map).cast<String, dynamic>())),
      requestHeadersToRemoves: map['requestHeadersToRemoves'] == null ? null : (map['requestHeadersToRemoves'] as List).cast<String>(),
      responseHeadersToAdds: map['responseHeadersToAdds'] == null ? null : pulumi.Input.decodeList<URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAdd>(map['responseHeadersToAdds'], (value) => URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAdd.fromMap((value as Map).cast<String, dynamic>())),
      responseHeadersToRemoves: map['responseHeadersToRemoves'] == null ? null : (map['responseHeadersToRemoves'] as List).cast<String>(),
    );
  }
}

