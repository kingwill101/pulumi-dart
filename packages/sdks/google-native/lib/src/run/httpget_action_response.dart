// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'httpheader_response.dart';

/// HTTPGetAction describes an action based on HTTP Get requests.
class HTTPGetActionResponse {
  /// Not supported by Cloud Run.
  final pulumi.Input<String> host;
  /// Custom headers to set in the request. HTTP allows repeated headers.
  final pulumi.Input<List<HTTPHeaderResponse>> httpHeaders;
  /// Path to access on the HTTP server.
  final pulumi.Input<String> path;
  /// Port number to access on the container. Number must be in the range 1 to 65535.
  final pulumi.Input<int> port;
  /// Not supported by Cloud Run.
  final pulumi.Input<String> scheme;

  /// Creates a new [HTTPGetActionResponse].
  /// [host] Not supported by Cloud Run.
  /// [httpHeaders] Custom headers to set in the request. HTTP allows repeated headers.
  /// [path] Path to access on the HTTP server.
  /// [port] Port number to access on the container. Number must be in the range 1 to 65535.
  /// [scheme] Not supported by Cloud Run.
  HTTPGetActionResponse({
    required this.host,
    required this.httpHeaders,
    required this.path,
    required this.port,
    required this.scheme,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': host,
      'httpHeaders': pulumi.Input.mapInputValue<List<HTTPHeaderResponse>, List<Map<String, dynamic>>>(httpHeaders, (value) => pulumi.Input.encodeList<HTTPHeaderResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'path': path,
      'port': port,
      'scheme': scheme,
    };
  }

  factory HTTPGetActionResponse.fromMap(Map<String, dynamic> map) {
    return HTTPGetActionResponse(
      host: (map['host'] as String).input(),
      httpHeaders: (pulumi.Input.decodeList<HTTPHeaderResponse>(map['httpHeaders'], (value) => HTTPHeaderResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      path: (map['path'] as String).input(),
      port: (map['port'] as int).input(),
      scheme: (map['scheme'] as String).input(),
    );
  }
}

