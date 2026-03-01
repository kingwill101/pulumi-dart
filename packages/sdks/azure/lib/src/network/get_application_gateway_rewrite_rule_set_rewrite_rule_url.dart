// ignore_for_file: unused_element, unnecessary_cast


class GetApplicationGatewayRewriteRuleSetRewriteRuleUrl {
  /// The components used to rewrite the URL.
  final String components;
  /// The URL path to rewrite.
  final String path;
  /// The query string to rewrite.
  final String queryString;
  /// Whether the URL path map is reevaluated after this rewrite has been applied.
  final bool reroute;

  /// Creates a new [GetApplicationGatewayRewriteRuleSetRewriteRuleUrl].
  /// [components] The components used to rewrite the URL.
  /// [path] The URL path to rewrite.
  /// [queryString] The query string to rewrite.
  /// [reroute] Whether the URL path map is reevaluated after this rewrite has been applied.
  GetApplicationGatewayRewriteRuleSetRewriteRuleUrl({
    required this.components,
    required this.path,
    required this.queryString,
    required this.reroute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'components': components,
      'path': path,
      'queryString': queryString,
      'reroute': reroute,
    };
  }

  factory GetApplicationGatewayRewriteRuleSetRewriteRuleUrl.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayRewriteRuleSetRewriteRuleUrl(
      components: map['components'] as String,
      path: map['path'] as String,
      queryString: map['queryString'] as String,
      reroute: map['reroute'] as bool,
    );
  }
}

