// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_header_option_response.dart';

/// The request and response header transformations that take effect before the request is passed along to the selected backendService.
class HttpHeaderActionResponse {
  /// Headers to add to a matching request before forwarding the request to the backendService.
  final List<HttpHeaderOptionResponse> requestHeadersToAdd;
  /// A list of header names for headers that need to be removed from the request before forwarding the request to the backendService.
  final List<String> requestHeadersToRemove;
  /// Headers to add the response before sending the response back to the client.
  final List<HttpHeaderOptionResponse> responseHeadersToAdd;
  /// A list of header names for headers that need to be removed from the response before sending the response back to the client.
  final List<String> responseHeadersToRemove;

  /// Creates a new [HttpHeaderActionResponse].
  /// [requestHeadersToAdd] Headers to add to a matching request before forwarding the request to the backendService.
  /// [requestHeadersToRemove] A list of header names for headers that need to be removed from the request before forwarding the request to the backendService.
  /// [responseHeadersToAdd] Headers to add the response before sending the response back to the client.
  /// [responseHeadersToRemove] A list of header names for headers that need to be removed from the response before sending the response back to the client.
  HttpHeaderActionResponse({
    required this.requestHeadersToAdd,
    required this.requestHeadersToRemove,
    required this.responseHeadersToAdd,
    required this.responseHeadersToRemove,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestHeadersToAdd': pulumi.Input.encodeList<HttpHeaderOptionResponse, Map<String, dynamic>>(requestHeadersToAdd, (value) => value.toMap()),
      'requestHeadersToRemove': requestHeadersToRemove,
      'responseHeadersToAdd': pulumi.Input.encodeList<HttpHeaderOptionResponse, Map<String, dynamic>>(responseHeadersToAdd, (value) => value.toMap()),
      'responseHeadersToRemove': responseHeadersToRemove,
    };
  }

  factory HttpHeaderActionResponse.fromMap(Map<String, dynamic> map) {
    return HttpHeaderActionResponse(
      requestHeadersToAdd: pulumi.Input.decodeList<HttpHeaderOptionResponse>(map['requestHeadersToAdd'], (value) => HttpHeaderOptionResponse.fromMap((value as Map).cast<String, dynamic>())),
      requestHeadersToRemove: (map['requestHeadersToRemove'] as List).cast<String>(),
      responseHeadersToAdd: pulumi.Input.decodeList<HttpHeaderOptionResponse>(map['responseHeadersToAdd'], (value) => HttpHeaderOptionResponse.fromMap((value as Map).cast<String, dynamic>())),
      responseHeadersToRemove: (map['responseHeadersToRemove'] as List).cast<String>(),
    );
  }
}

