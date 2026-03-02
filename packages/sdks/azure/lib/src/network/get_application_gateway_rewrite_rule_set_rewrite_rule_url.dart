// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationGatewayRewriteRuleSetRewriteRuleUrl {
  /// The components used to rewrite the URL.
  final pulumi.Input<String> components;
  /// The URL path to rewrite.
  final pulumi.Input<String> path;
  /// The query string to rewrite.
  final pulumi.Input<String> queryString;
  /// Whether the URL path map is reevaluated after this rewrite has been applied.
  final pulumi.Input<bool> reroute;

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
      components: (map['components'] as String).input(),
      path: (map['path'] as String).input(),
      queryString: (map['queryString'] as String).input(),
      reroute: (map['reroute'] as bool).input(),
    );
  }
}

