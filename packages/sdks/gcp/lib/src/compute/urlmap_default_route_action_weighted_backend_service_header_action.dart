// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'urlmap_default_route_action_weighted_backend_service_header_action_request_headers_to_add.dart';
import 'urlmap_default_route_action_weighted_backend_service_header_action_response_headers_to_add.dart';

class URLMapDefaultRouteActionWeightedBackendServiceHeaderAction {
  /// Headers to add to a matching request prior to forwarding the request to the backendService.
  /// Structure is documented below.
  final pulumi.Input<List<URLMapDefaultRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAdd>>? requestHeadersToAdds;
  /// A list of header names for headers that need to be removed from the request prior to
  /// forwarding the request to the backendService.
  final pulumi.Input<List<String>>? requestHeadersToRemoves;
  /// Headers to add the response prior to sending the response back to the client.
  /// Structure is documented below.
  final pulumi.Input<List<URLMapDefaultRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAdd>>? responseHeadersToAdds;
  /// A list of header names for headers that need to be removed from the response prior to sending the
  /// response back to the client.
  final pulumi.Input<List<String>>? responseHeadersToRemoves;

  /// Creates a new [URLMapDefaultRouteActionWeightedBackendServiceHeaderAction].
  /// [requestHeadersToAdds] Headers to add to a matching request prior to forwarding the request to the backendService.
  /// [requestHeadersToRemoves] A list of header names for headers that need to be removed from the request prior to
  /// [responseHeadersToAdds] Headers to add the response prior to sending the response back to the client.
  /// [responseHeadersToRemoves] A list of header names for headers that need to be removed from the response prior to sending the
  const URLMapDefaultRouteActionWeightedBackendServiceHeaderAction({
    this.requestHeadersToAdds,
    this.requestHeadersToRemoves,
    this.responseHeadersToAdds,
    this.responseHeadersToRemoves,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestHeadersToAdds': ?pulumi.Input.mapOptionalInputValue<List<URLMapDefaultRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAdd>, List<Map<String, dynamic>>>(requestHeadersToAdds, (value) => pulumi.Input.encodeList<URLMapDefaultRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAdd, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestHeadersToRemoves': ?requestHeadersToRemoves,
      'responseHeadersToAdds': ?pulumi.Input.mapOptionalInputValue<List<URLMapDefaultRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAdd>, List<Map<String, dynamic>>>(responseHeadersToAdds, (value) => pulumi.Input.encodeList<URLMapDefaultRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAdd, Map<String, dynamic>>(value, (value) => value.toMap())),
      'responseHeadersToRemoves': ?responseHeadersToRemoves,
    };
  }

  factory URLMapDefaultRouteActionWeightedBackendServiceHeaderAction.fromMap(Map<String, dynamic> map) {
    return URLMapDefaultRouteActionWeightedBackendServiceHeaderAction(
      requestHeadersToAdds: (() { final guardedValue = map['requestHeadersToAdds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<URLMapDefaultRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAdd>(guardedValue, (value) => URLMapDefaultRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAdd.fromMap((value as Map).cast<String, dynamic>()))); })(),
      requestHeadersToRemoves: (() { final guardedValue = map['requestHeadersToRemoves']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      responseHeadersToAdds: (() { final guardedValue = map['responseHeadersToAdds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<URLMapDefaultRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAdd>(guardedValue, (value) => URLMapDefaultRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAdd.fromMap((value as Map).cast<String, dynamic>()))); })(),
      responseHeadersToRemoves: (() { final guardedValue = map['responseHeadersToRemoves']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
