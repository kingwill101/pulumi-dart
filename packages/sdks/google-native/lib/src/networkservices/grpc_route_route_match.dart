// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grpc_route_header_match.dart';
import 'grpc_route_method_match.dart';

/// Criteria for matching traffic. A RouteMatch will be considered to match when all supplied fields match.
class GrpcRouteRouteMatch {
  /// Optional. Specifies a collection of headers to match.
  final pulumi.Input<List<GrpcRouteHeaderMatch>>? headers;
  /// Optional. A gRPC method to match against. If this field is empty or omitted, will match all methods.
  final pulumi.Input<GrpcRouteMethodMatch>? method;

  /// Creates a new [GrpcRouteRouteMatch].
  /// [headers] Optional. Specifies a collection of headers to match.
  /// [method] Optional. A gRPC method to match against. If this field is empty or omitted, will match all methods.
  GrpcRouteRouteMatch({
    this.headers,
    this.method,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers': ?pulumi.Input.mapOptionalInputValue<List<GrpcRouteHeaderMatch>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<GrpcRouteHeaderMatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'method': ?pulumi.Input.mapOptionalInputValue<GrpcRouteMethodMatch, Map<String, dynamic>>(method, (value) => value.toMap()),
    };
  }

  factory GrpcRouteRouteMatch.fromMap(Map<String, dynamic> map) {
    return GrpcRouteRouteMatch(
      headers: map['headers'] == null ? null : (pulumi.Input.decodeList<GrpcRouteHeaderMatch>(map['headers'], (value) => GrpcRouteHeaderMatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
      method: map['method'] == null ? null : (GrpcRouteMethodMatch.fromMap((map['method'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

