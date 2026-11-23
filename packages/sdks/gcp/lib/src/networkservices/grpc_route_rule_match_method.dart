// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GrpcRouteRuleMatchMethod {
  /// Specifies that matches are case sensitive. The default value is true.
  final pulumi.Input<bool?>? caseSensitive;
  /// Required. Name of the method to match against.
  final pulumi.Input<String> grpcMethod;
  /// Required. Name of the service to match against.
  final pulumi.Input<String> grpcService;
  /// Specifies how to match against the name. If not specified, a default value of "EXACT" is used.
  /// Default value is `EXACT`.
  /// Possible values are: `EXACT`, `REGULAR_EXPRESSION`.
  final pulumi.Input<String?>? type;

  /// Creates a new [GrpcRouteRuleMatchMethod].
  /// [caseSensitive] Specifies that matches are case sensitive. The default value is true.
  /// [grpcMethod] Required. Name of the method to match against.
  /// [grpcService] Required. Name of the service to match against.
  /// [type] Specifies how to match against the name. If not specified, a default value of "EXACT" is used.
  const GrpcRouteRuleMatchMethod({
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
      'type': ?type,
    };
  }

  factory GrpcRouteRuleMatchMethod.fromMap(Map<String, dynamic> map) {
    return GrpcRouteRuleMatchMethod(
      caseSensitive: (() { final guardedValue = map['caseSensitive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      grpcMethod: pulumi.Input.fromValue(map['grpcMethod'] as String),
      grpcService: pulumi.Input.fromValue(map['grpcService'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
