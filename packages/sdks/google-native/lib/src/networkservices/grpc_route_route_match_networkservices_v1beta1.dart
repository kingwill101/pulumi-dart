// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grpc_route_header_match_networkservices_v1beta1.dart';
import 'grpc_route_method_match_networkservices_v1beta1.dart';

/// Criteria for matching traffic. A RouteMatch will be considered to match when all supplied fields match.
class GrpcRouteRouteMatchNetworkservicesV1beta1 {
  /// Optional. Specifies a collection of headers to match.
  final pulumi.Input<List<GrpcRouteHeaderMatchNetworkservicesV1beta1>>? headers;
  /// Optional. A gRPC method to match against. If this field is empty or omitted, will match all methods.
  final pulumi.Input<GrpcRouteMethodMatchNetworkservicesV1beta1>? method;

  /// Creates a new [GrpcRouteRouteMatchNetworkservicesV1beta1].
  /// [headers] Optional. Specifies a collection of headers to match.
  /// [method] Optional. A gRPC method to match against. If this field is empty or omitted, will match all methods.
  const GrpcRouteRouteMatchNetworkservicesV1beta1({
    this.headers,
    this.method,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers': ?pulumi.Input.mapOptionalInputValue<List<GrpcRouteHeaderMatchNetworkservicesV1beta1>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<GrpcRouteHeaderMatchNetworkservicesV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'method': ?pulumi.Input.mapOptionalInputValue<GrpcRouteMethodMatchNetworkservicesV1beta1, Map<String, dynamic>>(method, (value) => value.toMap()),
    };
  }

  factory GrpcRouteRouteMatchNetworkservicesV1beta1.fromMap(Map<String, dynamic> map) {
    return GrpcRouteRouteMatchNetworkservicesV1beta1(
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GrpcRouteHeaderMatchNetworkservicesV1beta1>(guardedValue, (value) => GrpcRouteHeaderMatchNetworkservicesV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      method: (() { final guardedValue = map['method']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GrpcRouteMethodMatchNetworkservicesV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

