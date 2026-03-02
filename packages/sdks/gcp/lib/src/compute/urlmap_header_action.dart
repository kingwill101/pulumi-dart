// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'urlmap_header_action_request_headers_to_add.dart';
import 'urlmap_header_action_response_headers_to_add.dart';

class URLMapHeaderAction {
  /// Headers to add to a matching request prior to forwarding the request to the backendService.
  /// Structure is documented below.
  final pulumi.Input<List<URLMapHeaderActionRequestHeadersToAdd>>? requestHeadersToAdds;
  /// A list of header names for headers that need to be removed from the request prior to
  /// forwarding the request to the backendService.
  final pulumi.Input<List<String>>? requestHeadersToRemoves;
  /// Headers to add the response prior to sending the response back to the client.
  /// Structure is documented below.
  final pulumi.Input<List<URLMapHeaderActionResponseHeadersToAdd>>? responseHeadersToAdds;
  /// A list of header names for headers that need to be removed from the response prior to sending the
  /// response back to the client.
  final pulumi.Input<List<String>>? responseHeadersToRemoves;

  /// Creates a new [URLMapHeaderAction].
  /// [requestHeadersToAdds] Headers to add to a matching request prior to forwarding the request to the backendService.
  /// [requestHeadersToRemoves] A list of header names for headers that need to be removed from the request prior to
  /// [responseHeadersToAdds] Headers to add the response prior to sending the response back to the client.
  /// [responseHeadersToRemoves] A list of header names for headers that need to be removed from the response prior to sending the
  URLMapHeaderAction({
    this.requestHeadersToAdds,
    this.requestHeadersToRemoves,
    this.responseHeadersToAdds,
    this.responseHeadersToRemoves,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestHeadersToAdds': ?pulumi.Input.mapOptionalInputValue<List<URLMapHeaderActionRequestHeadersToAdd>, List<Map<String, dynamic>>>(requestHeadersToAdds, (value) => pulumi.Input.encodeList<URLMapHeaderActionRequestHeadersToAdd, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestHeadersToRemoves': ?requestHeadersToRemoves,
      'responseHeadersToAdds': ?pulumi.Input.mapOptionalInputValue<List<URLMapHeaderActionResponseHeadersToAdd>, List<Map<String, dynamic>>>(responseHeadersToAdds, (value) => pulumi.Input.encodeList<URLMapHeaderActionResponseHeadersToAdd, Map<String, dynamic>>(value, (value) => value.toMap())),
      'responseHeadersToRemoves': ?responseHeadersToRemoves,
    };
  }

  factory URLMapHeaderAction.fromMap(Map<String, dynamic> map) {
    return URLMapHeaderAction(
      requestHeadersToAdds: map['requestHeadersToAdds'] == null ? null : (pulumi.Input.decodeList<URLMapHeaderActionRequestHeadersToAdd>(map['requestHeadersToAdds']!, (value) => URLMapHeaderActionRequestHeadersToAdd.fromMap((value as Map).cast<String, dynamic>()))).input(),
      requestHeadersToRemoves: map['requestHeadersToRemoves'] == null ? null : ((map['requestHeadersToRemoves']! as List).cast<String>()).input(),
      responseHeadersToAdds: map['responseHeadersToAdds'] == null ? null : (pulumi.Input.decodeList<URLMapHeaderActionResponseHeadersToAdd>(map['responseHeadersToAdds']!, (value) => URLMapHeaderActionResponseHeadersToAdd.fromMap((value as Map).cast<String, dynamic>()))).input(),
      responseHeadersToRemoves: map['responseHeadersToRemoves'] == null ? null : ((map['responseHeadersToRemoves']! as List).cast<String>()).input(),
    );
  }
}

