// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GrpcRouteRuleMatchMethod {
  /// Specifies that matches are case sensitive. The default value is true.
  final pulumi.Input<bool>? caseSensitive;
  /// Required. Name of the method to match against.
  final pulumi.Input<String> grpcMethod;
  /// Required. Name of the service to match against.
  final pulumi.Input<String> grpcService;

  /// Creates a new [GrpcRouteRuleMatchMethod].
  /// [caseSensitive] Specifies that matches are case sensitive. The default value is true.
  /// [grpcMethod] Required. Name of the method to match against.
  /// [grpcService] Required. Name of the service to match against.
  const GrpcRouteRuleMatchMethod({
    this.caseSensitive,
    required this.grpcMethod,
    required this.grpcService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caseSensitive': ?caseSensitive,
      'grpcMethod': grpcMethod,
      'grpcService': grpcService,
    };
  }

  factory GrpcRouteRuleMatchMethod.fromMap(Map<String, dynamic> map) {
    return GrpcRouteRuleMatchMethod(
      caseSensitive: (() { final guardedValue = map['caseSensitive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      grpcMethod: pulumi.Input.fromValue(map['grpcMethod'] as String),
      grpcService: pulumi.Input.fromValue(map['grpcService'] as String),
    );
  }
}

