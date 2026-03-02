// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_header_option_compute_v1.dart';

/// The request and response header transformations that take effect before the request is passed along to the selected backendService.
class HttpHeaderActionComputeV1 {
  /// Headers to add to a matching request before forwarding the request to the backendService.
  final pulumi.Input<List<HttpHeaderOptionComputeV1>>? requestHeadersToAdd;
  /// A list of header names for headers that need to be removed from the request before forwarding the request to the backendService.
  final pulumi.Input<List<String>>? requestHeadersToRemove;
  /// Headers to add the response before sending the response back to the client.
  final pulumi.Input<List<HttpHeaderOptionComputeV1>>? responseHeadersToAdd;
  /// A list of header names for headers that need to be removed from the response before sending the response back to the client.
  final pulumi.Input<List<String>>? responseHeadersToRemove;

  /// Creates a new [HttpHeaderActionComputeV1].
  /// [requestHeadersToAdd] Headers to add to a matching request before forwarding the request to the backendService.
  /// [requestHeadersToRemove] A list of header names for headers that need to be removed from the request before forwarding the request to the backendService.
  /// [responseHeadersToAdd] Headers to add the response before sending the response back to the client.
  /// [responseHeadersToRemove] A list of header names for headers that need to be removed from the response before sending the response back to the client.
  HttpHeaderActionComputeV1({
    this.requestHeadersToAdd,
    this.requestHeadersToRemove,
    this.responseHeadersToAdd,
    this.responseHeadersToRemove,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestHeadersToAdd': ?pulumi.Input.mapOptionalInputValue<List<HttpHeaderOptionComputeV1>, List<Map<String, dynamic>>>(requestHeadersToAdd, (value) => pulumi.Input.encodeList<HttpHeaderOptionComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestHeadersToRemove': ?requestHeadersToRemove,
      'responseHeadersToAdd': ?pulumi.Input.mapOptionalInputValue<List<HttpHeaderOptionComputeV1>, List<Map<String, dynamic>>>(responseHeadersToAdd, (value) => pulumi.Input.encodeList<HttpHeaderOptionComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'responseHeadersToRemove': ?responseHeadersToRemove,
    };
  }

  factory HttpHeaderActionComputeV1.fromMap(Map<String, dynamic> map) {
    return HttpHeaderActionComputeV1(
      requestHeadersToAdd: map['requestHeadersToAdd'] == null ? null : (pulumi.Input.decodeList<HttpHeaderOptionComputeV1>(map['requestHeadersToAdd']!, (value) => HttpHeaderOptionComputeV1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      requestHeadersToRemove: map['requestHeadersToRemove'] == null ? null : ((map['requestHeadersToRemove']! as List).cast<String>()).input(),
      responseHeadersToAdd: map['responseHeadersToAdd'] == null ? null : (pulumi.Input.decodeList<HttpHeaderOptionComputeV1>(map['responseHeadersToAdd']!, (value) => HttpHeaderOptionComputeV1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      responseHeadersToRemove: map['responseHeadersToRemove'] == null ? null : ((map['responseHeadersToRemove']! as List).cast<String>()).input(),
    );
  }
}

