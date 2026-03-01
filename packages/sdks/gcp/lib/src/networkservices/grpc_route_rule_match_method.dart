// ignore_for_file: unused_element, unnecessary_cast


class GrpcRouteRuleMatchMethod {
  /// Specifies that matches are case sensitive. The default value is true.
  final bool? caseSensitive;
  /// Required. Name of the method to match against.
  final String grpcMethod;
  /// Required. Name of the service to match against.
  final String grpcService;

  /// Creates a new [GrpcRouteRuleMatchMethod].
  /// [caseSensitive] Specifies that matches are case sensitive. The default value is true.
  /// [grpcMethod] Required. Name of the method to match against.
  /// [grpcService] Required. Name of the service to match against.
  GrpcRouteRuleMatchMethod({
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
      caseSensitive: map['caseSensitive'] == null ? null : map['caseSensitive'] as bool,
      grpcMethod: map['grpcMethod'] as String,
      grpcService: map['grpcService'] as String,
    );
  }
}

