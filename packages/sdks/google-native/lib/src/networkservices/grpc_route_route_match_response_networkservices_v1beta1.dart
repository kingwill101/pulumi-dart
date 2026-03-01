// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grpc_route_header_match_response_networkservices_v1beta1.dart';
import 'grpc_route_method_match_response_networkservices_v1beta1.dart';

/// Criteria for matching traffic. A RouteMatch will be considered to match when all supplied fields match.
class GrpcRouteRouteMatchResponseNetworkservicesV1beta1 {
  /// Optional. Specifies a collection of headers to match.
  final List<GrpcRouteHeaderMatchResponseNetworkservicesV1beta1> headers;
  /// Optional. A gRPC method to match against. If this field is empty or omitted, will match all methods.
  final GrpcRouteMethodMatchResponseNetworkservicesV1beta1 method;

  /// Creates a new [GrpcRouteRouteMatchResponseNetworkservicesV1beta1].
  /// [headers] Optional. Specifies a collection of headers to match.
  /// [method] Optional. A gRPC method to match against. If this field is empty or omitted, will match all methods.
  GrpcRouteRouteMatchResponseNetworkservicesV1beta1({
    required this.headers,
    required this.method,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers': pulumi.Input.encodeList<GrpcRouteHeaderMatchResponseNetworkservicesV1beta1, Map<String, dynamic>>(headers, (value) => value.toMap()),
      'method': method.toMap(),
    };
  }

  factory GrpcRouteRouteMatchResponseNetworkservicesV1beta1.fromMap(Map<String, dynamic> map) {
    return GrpcRouteRouteMatchResponseNetworkservicesV1beta1(
      headers: pulumi.Input.decodeList<GrpcRouteHeaderMatchResponseNetworkservicesV1beta1>(map['headers'], (value) => GrpcRouteHeaderMatchResponseNetworkservicesV1beta1.fromMap((value as Map).cast<String, dynamic>())),
      method: GrpcRouteMethodMatchResponseNetworkservicesV1beta1.fromMap((map['method'] as Map).cast<String, dynamic>()),
    );
  }
}

