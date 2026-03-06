// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grpc_route_method_match_type_networkservices_v1beta1.dart';

/// Specifies a match against a method.
class GrpcRouteMethodMatchNetworkservicesV1beta1 {
  /// Optional. Specifies that matches are case sensitive. The default value is true. case_sensitive must not be used with a type of REGULAR_EXPRESSION.
  final pulumi.Input<bool>? caseSensitive;
  /// Name of the method to match against. If unspecified, will match all methods.
  final pulumi.Input<String> grpcMethod;
  /// Name of the service to match against. If unspecified, will match all services.
  final pulumi.Input<String> grpcService;
  /// Optional. Specifies how to match against the name. If not specified, a default value of "EXACT" is used.
  final pulumi.Input<GrpcRouteMethodMatchTypeNetworkservicesV1beta1>? type;

  /// Creates a new [GrpcRouteMethodMatchNetworkservicesV1beta1].
  /// [caseSensitive] Optional. Specifies that matches are case sensitive. The default value is true. case_sensitive must not be used with a type of REGULAR_EXPRESSION.
  /// [grpcMethod] Name of the method to match against. If unspecified, will match all methods.
  /// [grpcService] Name of the service to match against. If unspecified, will match all services.
  /// [type] Optional. Specifies how to match against the name. If not specified, a default value of "EXACT" is used.
  const GrpcRouteMethodMatchNetworkservicesV1beta1({
    this.caseSensitive,
    required this.grpcMethod,
    required this.grpcService,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caseSensitive': ?caseSensitive,
      'grpcMethod': grpcMethod,
      'grpcService': grpcService,
      'type': ?pulumi.Input.mapOptionalInputValue<GrpcRouteMethodMatchTypeNetworkservicesV1beta1, String>(type, (value) => value.wireValue),
    };
  }

  factory GrpcRouteMethodMatchNetworkservicesV1beta1.fromMap(Map<String, dynamic> map) {
    return GrpcRouteMethodMatchNetworkservicesV1beta1(
      caseSensitive: (() { final guardedValue = map['caseSensitive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      grpcMethod: pulumi.Input.fromValue(map['grpcMethod'] as String),
      grpcService: pulumi.Input.fromValue(map['grpcService'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GrpcRouteMethodMatchTypeNetworkservicesV1beta1.fromValue(guardedValue as String)); })(),
    );
  }
}

