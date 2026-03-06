// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationGatewayRewriteRuleSetRewriteRuleUrl {
  /// The components used to rewrite the URL. Possible values are `path_only` and `query_string_only` to limit the rewrite to the URL Path or URL Query String only.
  ///
  /// &gt; **Note:** One or both of `path` and `query_string` must be specified. If one of these is not specified, it means the value will be empty. If you only want to rewrite `path` or `query_string`, use `components`.
  final pulumi.Input<String>? components;
  /// The URL path to rewrite.
  final pulumi.Input<String>? path;
  /// The query string to rewrite.
  final pulumi.Input<String>? queryString;
  /// Whether the URL path map should be reevaluated after this rewrite has been applied. [More info on rewrite configuration](https://docs.microsoft.com/azure/application-gateway/rewrite-http-headers-url#rewrite-configuration)
  final pulumi.Input<bool>? reroute;

  /// Creates a new [ApplicationGatewayRewriteRuleSetRewriteRuleUrl].
  /// [components] The components used to rewrite the URL. Possible values are `path_only` and `query_string_only` to limit the rewrite to the URL Path or URL Query String only.
  /// [path] The URL path to rewrite.
  /// [queryString] The query string to rewrite.
  /// [reroute] Whether the URL path map should be reevaluated after this rewrite has been applied. [More info on rewrite configuration](https://docs.microsoft.com/azure/application-gateway/rewrite-http-headers-url#rewrite-configuration)
  const ApplicationGatewayRewriteRuleSetRewriteRuleUrl({
    this.components,
    this.path,
    this.queryString,
    this.reroute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'components': ?components,
      'path': ?path,
      'queryString': ?queryString,
      'reroute': ?reroute,
    };
  }

  factory ApplicationGatewayRewriteRuleSetRewriteRuleUrl.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayRewriteRuleSetRewriteRuleUrl(
      components: (() { final guardedValue = map['components']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queryString: (() { final guardedValue = map['queryString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reroute: (() { final guardedValue = map['reroute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

