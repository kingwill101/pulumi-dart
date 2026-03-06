// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grpc_route_rule_match_header.dart';
import 'grpc_route_rule_match_method.dart';

class GrpcRouteRuleMatch {
  /// Specifies a list of HTTP request headers to match against.
  /// Structure is documented below.
  final pulumi.Input<List<GrpcRouteRuleMatchHeader>>? headers;
  /// A gRPC method to match against. If this field is empty or omitted, will match all methods.
  /// Structure is documented below.
  final pulumi.Input<GrpcRouteRuleMatchMethod>? method;

  /// Creates a new [GrpcRouteRuleMatch].
  /// [headers] Specifies a list of HTTP request headers to match against.
  /// [method] A gRPC method to match against. If this field is empty or omitted, will match all methods.
  const GrpcRouteRuleMatch({
    this.headers,
    this.method,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers': ?pulumi.Input.mapOptionalInputValue<List<GrpcRouteRuleMatchHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<GrpcRouteRuleMatchHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'method': ?pulumi.Input.mapOptionalInputValue<GrpcRouteRuleMatchMethod, Map<String, dynamic>>(method, (value) => value.toMap()),
    };
  }

  factory GrpcRouteRuleMatch.fromMap(Map<String, dynamic> map) {
    return GrpcRouteRuleMatch(
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GrpcRouteRuleMatchHeader>(guardedValue, (value) => GrpcRouteRuleMatchHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
      method: (() { final guardedValue = map['method']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GrpcRouteRuleMatchMethod.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

