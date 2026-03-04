// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'urlmap_header_action_request_headers_to_add.dart';
import 'urlmap_header_action_response_headers_to_add.dart';

class URLMapHeaderAction {
  /// Headers to add to a matching request prior to forwarding the request to the backendService.
  /// Structure is documented below.
  final pulumi.Input<List<URLMapHeaderActionRequestHeadersToAdd>>?
  requestHeadersToAdds;

  /// A list of header names for headers that need to be removed from the request prior to
  /// forwarding the request to the backendService.
  final pulumi.Input<List<String>>? requestHeadersToRemoves;

  /// Headers to add the response prior to sending the response back to the client.
  /// Structure is documented below.
  final pulumi.Input<List<URLMapHeaderActionResponseHeadersToAdd>>?
  responseHeadersToAdds;

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
      'requestHeadersToAdds':
          ?pulumi.Input.mapOptionalInputValue<
            List<URLMapHeaderActionRequestHeadersToAdd>,
            List<Map<String, dynamic>>
          >(
            requestHeadersToAdds,
            (value) =>
                pulumi.Input.encodeList<
                  URLMapHeaderActionRequestHeadersToAdd,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'requestHeadersToRemoves': ?requestHeadersToRemoves,
      'responseHeadersToAdds':
          ?pulumi.Input.mapOptionalInputValue<
            List<URLMapHeaderActionResponseHeadersToAdd>,
            List<Map<String, dynamic>>
          >(
            responseHeadersToAdds,
            (value) =>
                pulumi.Input.encodeList<
                  URLMapHeaderActionResponseHeadersToAdd,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'responseHeadersToRemoves': ?responseHeadersToRemoves,
    };
  }

  factory URLMapHeaderAction.fromMap(Map<String, dynamic> map) {
    return URLMapHeaderAction(
      requestHeadersToAdds: (() {
        final guardedValue = map['requestHeadersToAdds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<URLMapHeaderActionRequestHeadersToAdd>(
            guardedValue,
            (value) => URLMapHeaderActionRequestHeadersToAdd.fromMap(
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
          pulumi.Input.decodeList<URLMapHeaderActionResponseHeadersToAdd>(
            guardedValue,
            (value) => URLMapHeaderActionResponseHeadersToAdd.fromMap(
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
