// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies a match against a method.
class GrpcRouteMethodMatchResponseNetworkservicesV1beta1 {
  /// Optional. Specifies that matches are case sensitive. The default value is true. case_sensitive must not be used with a type of REGULAR_EXPRESSION.
  final pulumi.Input<bool> caseSensitive;

  /// Name of the method to match against. If unspecified, will match all methods.
  final pulumi.Input<String> grpcMethod;

  /// Name of the service to match against. If unspecified, will match all services.
  final pulumi.Input<String> grpcService;

  /// Optional. Specifies how to match against the name. If not specified, a default value of "EXACT" is used.
  final pulumi.Input<String> type;

  /// Creates a new [GrpcRouteMethodMatchResponseNetworkservicesV1beta1].
  /// [caseSensitive] Optional. Specifies that matches are case sensitive. The default value is true. case_sensitive must not be used with a type of REGULAR_EXPRESSION.
  /// [grpcMethod] Name of the method to match against. If unspecified, will match all methods.
  /// [grpcService] Name of the service to match against. If unspecified, will match all services.
  /// [type] Optional. Specifies how to match against the name. If not specified, a default value of "EXACT" is used.
  GrpcRouteMethodMatchResponseNetworkservicesV1beta1({
    required this.caseSensitive,
    required this.grpcMethod,
    required this.grpcService,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caseSensitive': caseSensitive,
      'grpcMethod': grpcMethod,
      'grpcService': grpcService,
      'type': type,
    };
  }

  factory GrpcRouteMethodMatchResponseNetworkservicesV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return GrpcRouteMethodMatchResponseNetworkservicesV1beta1(
      caseSensitive: pulumi.Input.fromValue(map['caseSensitive'] as bool),
      grpcMethod: pulumi.Input.fromValue(map['grpcMethod'] as String),
      grpcService: pulumi.Input.fromValue(map['grpcService'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
