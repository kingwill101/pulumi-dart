// ignore_for_file: unused_element, unnecessary_cast


class URLMapPathMatcherPathRuleRouteActionRequestMirrorPolicy {
  /// The full or partial URL to the BackendService resource being mirrored to.
  final String backendService;
  /// The percentage of requests to be mirrored to backendService.
  /// The value must be between 0.0 and 100.0 inclusive.
  final double? mirrorPercent;

  /// Creates a new [URLMapPathMatcherPathRuleRouteActionRequestMirrorPolicy].
  /// [backendService] The full or partial URL to the BackendService resource being mirrored to.
  /// [mirrorPercent] The percentage of requests to be mirrored to backendService.
  URLMapPathMatcherPathRuleRouteActionRequestMirrorPolicy({
    required this.backendService,
    this.mirrorPercent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendService': backendService,
      'mirrorPercent': ?mirrorPercent,
    };
  }

  factory URLMapPathMatcherPathRuleRouteActionRequestMirrorPolicy.fromMap(Map<String, dynamic> map) {
    return URLMapPathMatcherPathRuleRouteActionRequestMirrorPolicy(
      backendService: map['backendService'] as String,
      mirrorPercent: map['mirrorPercent'] == null ? null : map['mirrorPercent'] as double,
    );
  }
}

