// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_header_option_response_compute_beta.dart';

/// The request and response header transformations that take effect before the request is passed along to the selected backendService.
class HttpHeaderActionResponseComputeBeta {
  /// Headers to add to a matching request before forwarding the request to the backendService.
  final pulumi.Input<List<HttpHeaderOptionResponseComputeBeta>>
  requestHeadersToAdd;

  /// A list of header names for headers that need to be removed from the request before forwarding the request to the backendService.
  final pulumi.Input<List<String>> requestHeadersToRemove;

  /// Headers to add the response before sending the response back to the client.
  final pulumi.Input<List<HttpHeaderOptionResponseComputeBeta>>
  responseHeadersToAdd;

  /// A list of header names for headers that need to be removed from the response before sending the response back to the client.
  final pulumi.Input<List<String>> responseHeadersToRemove;

  /// Creates a new [HttpHeaderActionResponseComputeBeta].
  /// [requestHeadersToAdd] Headers to add to a matching request before forwarding the request to the backendService.
  /// [requestHeadersToRemove] A list of header names for headers that need to be removed from the request before forwarding the request to the backendService.
  /// [responseHeadersToAdd] Headers to add the response before sending the response back to the client.
  /// [responseHeadersToRemove] A list of header names for headers that need to be removed from the response before sending the response back to the client.
  HttpHeaderActionResponseComputeBeta({
    required this.requestHeadersToAdd,
    required this.requestHeadersToRemove,
    required this.responseHeadersToAdd,
    required this.responseHeadersToRemove,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestHeadersToAdd':
          pulumi.Input.mapInputValue<
            List<HttpHeaderOptionResponseComputeBeta>,
            List<Map<String, dynamic>>
          >(
            requestHeadersToAdd,
            (value) =>
                pulumi.Input.encodeList<
                  HttpHeaderOptionResponseComputeBeta,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'requestHeadersToRemove': requestHeadersToRemove,
      'responseHeadersToAdd':
          pulumi.Input.mapInputValue<
            List<HttpHeaderOptionResponseComputeBeta>,
            List<Map<String, dynamic>>
          >(
            responseHeadersToAdd,
            (value) =>
                pulumi.Input.encodeList<
                  HttpHeaderOptionResponseComputeBeta,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'responseHeadersToRemove': responseHeadersToRemove,
    };
  }

  factory HttpHeaderActionResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return HttpHeaderActionResponseComputeBeta(
      requestHeadersToAdd: pulumi.Input.fromValue(
        pulumi.Input.decodeList<HttpHeaderOptionResponseComputeBeta>(
          map['requestHeadersToAdd']!,
          (value) => HttpHeaderOptionResponseComputeBeta.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      requestHeadersToRemove: pulumi.Input.fromValue(
        (map['requestHeadersToRemove'] as List).cast<String>(),
      ),
      responseHeadersToAdd: pulumi.Input.fromValue(
        pulumi.Input.decodeList<HttpHeaderOptionResponseComputeBeta>(
          map['responseHeadersToAdd']!,
          (value) => HttpHeaderOptionResponseComputeBeta.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      responseHeadersToRemove: pulumi.Input.fromValue(
        (map['responseHeadersToRemove'] as List).cast<String>(),
      ),
    );
  }
}
