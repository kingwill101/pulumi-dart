// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'urlmap_path_matcher_path_rule_route_action_weighted_backend_service_header_action_request_headers_to_add.dart';
import 'urlmap_path_matcher_path_rule_route_action_weighted_backend_service_header_action_response_headers_to_add.dart';

class URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderAction {
  /// Headers to add to a matching request prior to forwarding the request to the backendService.
  /// Structure is documented below.
  final pulumi.Input<
    List<
      URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAdd
    >
  >?
  requestHeadersToAdds;

  /// A list of header names for headers that need to be removed from the request prior to
  /// forwarding the request to the backendService.
  final pulumi.Input<List<String>>? requestHeadersToRemoves;

  /// Headers to add the response prior to sending the response back to the client.
  /// Structure is documented below.
  final pulumi.Input<
    List<
      URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAdd
    >
  >?
  responseHeadersToAdds;

  /// A list of header names for headers that need to be removed from the response prior to sending the
  /// response back to the client.
  final pulumi.Input<List<String>>? responseHeadersToRemoves;

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
      'requestHeadersToAdds':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAdd
            >,
            List<Map<String, dynamic>>
          >(
            requestHeadersToAdds,
            (value) =>
                pulumi.Input.encodeList<
                  URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAdd,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'requestHeadersToRemoves': ?requestHeadersToRemoves,
      'responseHeadersToAdds':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAdd
            >,
            List<Map<String, dynamic>>
          >(
            responseHeadersToAdds,
            (value) =>
                pulumi.Input.encodeList<
                  URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAdd,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'responseHeadersToRemoves': ?responseHeadersToRemoves,
    };
  }

  factory URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderAction.fromMap(
    Map<String, dynamic> map,
  ) {
    return URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderAction(
      requestHeadersToAdds: (() {
        final guardedValue = map['requestHeadersToAdds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAdd
          >(
            guardedValue,
            (value) =>
                URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAdd.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      requestHeadersToRemoves: (() {
        final guardedValue = map['requestHeadersToRemoves'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      responseHeadersToAdds: (() {
        final guardedValue = map['responseHeadersToAdds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAdd
          >(
            guardedValue,
            (value) =>
                URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAdd.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      responseHeadersToRemoves: (() {
        final guardedValue = map['responseHeadersToRemoves'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
