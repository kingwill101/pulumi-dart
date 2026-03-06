// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_header_option_compute_beta.dart';

/// The request and response header transformations that take effect before the request is passed along to the selected backendService.
class HttpHeaderActionComputeBeta {
  /// Headers to add to a matching request before forwarding the request to the backendService.
  final pulumi.Input<List<HttpHeaderOptionComputeBeta>>? requestHeadersToAdd;
  /// A list of header names for headers that need to be removed from the request before forwarding the request to the backendService.
  final pulumi.Input<List<String>>? requestHeadersToRemove;
  /// Headers to add the response before sending the response back to the client.
  final pulumi.Input<List<HttpHeaderOptionComputeBeta>>? responseHeadersToAdd;
  /// A list of header names for headers that need to be removed from the response before sending the response back to the client.
  final pulumi.Input<List<String>>? responseHeadersToRemove;

  /// Creates a new [HttpHeaderActionComputeBeta].
  /// [requestHeadersToAdd] Headers to add to a matching request before forwarding the request to the backendService.
  /// [requestHeadersToRemove] A list of header names for headers that need to be removed from the request before forwarding the request to the backendService.
  /// [responseHeadersToAdd] Headers to add the response before sending the response back to the client.
  /// [responseHeadersToRemove] A list of header names for headers that need to be removed from the response before sending the response back to the client.
  const HttpHeaderActionComputeBeta({
    this.requestHeadersToAdd,
    this.requestHeadersToRemove,
    this.responseHeadersToAdd,
    this.responseHeadersToRemove,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestHeadersToAdd': ?pulumi.Input.mapOptionalInputValue<List<HttpHeaderOptionComputeBeta>, List<Map<String, dynamic>>>(requestHeadersToAdd, (value) => pulumi.Input.encodeList<HttpHeaderOptionComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestHeadersToRemove': ?requestHeadersToRemove,
      'responseHeadersToAdd': ?pulumi.Input.mapOptionalInputValue<List<HttpHeaderOptionComputeBeta>, List<Map<String, dynamic>>>(responseHeadersToAdd, (value) => pulumi.Input.encodeList<HttpHeaderOptionComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'responseHeadersToRemove': ?responseHeadersToRemove,
    };
  }

  factory HttpHeaderActionComputeBeta.fromMap(Map<String, dynamic> map) {
    return HttpHeaderActionComputeBeta(
      requestHeadersToAdd: (() { final guardedValue = map['requestHeadersToAdd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HttpHeaderOptionComputeBeta>(guardedValue, (value) => HttpHeaderOptionComputeBeta.fromMap((value as Map).cast<String, dynamic>()))); })(),
      requestHeadersToRemove: (() { final guardedValue = map['requestHeadersToRemove']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      responseHeadersToAdd: (() { final guardedValue = map['responseHeadersToAdd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HttpHeaderOptionComputeBeta>(guardedValue, (value) => HttpHeaderOptionComputeBeta.fromMap((value as Map).cast<String, dynamic>()))); })(),
      responseHeadersToRemove: (() { final guardedValue = map['responseHeadersToRemove']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

