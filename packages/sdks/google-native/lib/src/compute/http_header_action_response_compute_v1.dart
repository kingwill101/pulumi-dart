// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_header_option_response_compute_v1.dart';

/// The request and response header transformations that take effect before the request is passed along to the selected backendService.
class HttpHeaderActionResponseComputeV1 {
  /// Headers to add to a matching request before forwarding the request to the backendService.
  final List<HttpHeaderOptionResponseComputeV1> requestHeadersToAdd;
  /// A list of header names for headers that need to be removed from the request before forwarding the request to the backendService.
  final List<String> requestHeadersToRemove;
  /// Headers to add the response before sending the response back to the client.
  final List<HttpHeaderOptionResponseComputeV1> responseHeadersToAdd;
  /// A list of header names for headers that need to be removed from the response before sending the response back to the client.
  final List<String> responseHeadersToRemove;

  /// Creates a new [HttpHeaderActionResponseComputeV1].
  /// [requestHeadersToAdd] Headers to add to a matching request before forwarding the request to the backendService.
  /// [requestHeadersToRemove] A list of header names for headers that need to be removed from the request before forwarding the request to the backendService.
  /// [responseHeadersToAdd] Headers to add the response before sending the response back to the client.
  /// [responseHeadersToRemove] A list of header names for headers that need to be removed from the response before sending the response back to the client.
  HttpHeaderActionResponseComputeV1({
    required this.requestHeadersToAdd,
    required this.requestHeadersToRemove,
    required this.responseHeadersToAdd,
    required this.responseHeadersToRemove,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestHeadersToAdd': pulumi.Input.encodeList<HttpHeaderOptionResponseComputeV1, Map<String, dynamic>>(requestHeadersToAdd, (value) => value.toMap()),
      'requestHeadersToRemove': requestHeadersToRemove,
      'responseHeadersToAdd': pulumi.Input.encodeList<HttpHeaderOptionResponseComputeV1, Map<String, dynamic>>(responseHeadersToAdd, (value) => value.toMap()),
      'responseHeadersToRemove': responseHeadersToRemove,
    };
  }

  factory HttpHeaderActionResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return HttpHeaderActionResponseComputeV1(
      requestHeadersToAdd: pulumi.Input.decodeList<HttpHeaderOptionResponseComputeV1>(map['requestHeadersToAdd'], (value) => HttpHeaderOptionResponseComputeV1.fromMap((value as Map).cast<String, dynamic>())),
      requestHeadersToRemove: (map['requestHeadersToRemove'] as List).cast<String>(),
      responseHeadersToAdd: pulumi.Input.decodeList<HttpHeaderOptionResponseComputeV1>(map['responseHeadersToAdd'], (value) => HttpHeaderOptionResponseComputeV1.fromMap((value as Map).cast<String, dynamic>())),
      responseHeadersToRemove: (map['responseHeadersToRemove'] as List).cast<String>(),
    );
  }
}

