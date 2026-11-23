// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'urlmap_path_matcher_route_rule_route_action_url_rewrite_regex_rewrite.dart';

class URLMapPathMatcherRouteRuleRouteActionUrlRewrite {
  /// Prior to forwarding the request to the selected service, the request's host header is replaced
  /// with contents of hostRewrite.
  /// The value must be between 1 and 255 characters.
  final pulumi.Input<String?>? hostRewrite;
  /// Prior to forwarding the request to the selected backend service, the matching portion of the
  /// request's path is replaced by pathPrefixRewrite.
  /// The value must be between 1 and 1024 characters.
  final pulumi.Input<String?>? pathPrefixRewrite;
  /// Prior to forwarding the request to the selected origin, if the
  /// request matched a pathTemplateMatch, the matching portion of the
  /// request's path is replaced re-written using the pattern specified
  /// by pathTemplateRewrite.
  /// pathTemplateRewrite must be between 1 and 255 characters
  /// (inclusive), must start with a '/', and must only use variables
  /// captured by the route's pathTemplate matchers.
  /// pathTemplateRewrite may only be used when all of a route's
  /// MatchRules specify pathTemplate.
  /// Only one of pathPrefixRewrite, pathTemplateRewrite, or regexRewrite may be
  /// specified.
  final pulumi.Input<String?>? pathTemplateRewrite;
  /// The regex rewrite to be applied to the URL. Only one of
  /// pathPrefixRewrite, pathTemplateRewrite, or regexRewrite may be
  /// specified.
  /// Structure is documented below.
  final pulumi.Input<URLMapPathMatcherRouteRuleRouteActionUrlRewriteRegexRewrite?>? regexRewrite;

  /// Creates a new [URLMapPathMatcherRouteRuleRouteActionUrlRewrite].
  /// [hostRewrite] Prior to forwarding the request to the selected service, the request's host header is replaced
  /// [pathPrefixRewrite] Prior to forwarding the request to the selected backend service, the matching portion of the
  /// [pathTemplateRewrite] Prior to forwarding the request to the selected origin, if the
  /// [regexRewrite] The regex rewrite to be applied to the URL. Only one of
  const URLMapPathMatcherRouteRuleRouteActionUrlRewrite({
    this.hostRewrite,
    this.pathPrefixRewrite,
    this.pathTemplateRewrite,
    this.regexRewrite,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostRewrite': ?hostRewrite,
      'pathPrefixRewrite': ?pathPrefixRewrite,
      'pathTemplateRewrite': ?pathTemplateRewrite,
      'regexRewrite': ?pulumi.Input.mapOptionalInputValue<URLMapPathMatcherRouteRuleRouteActionUrlRewriteRegexRewrite, Map<String, dynamic>>(regexRewrite, (value) => value.toMap()),
    };
  }

  factory URLMapPathMatcherRouteRuleRouteActionUrlRewrite.fromMap(Map<String, dynamic> map) {
    return URLMapPathMatcherRouteRuleRouteActionUrlRewrite(
      hostRewrite: (() { final guardedValue = map['hostRewrite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pathPrefixRewrite: (() { final guardedValue = map['pathPrefixRewrite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pathTemplateRewrite: (() { final guardedValue = map['pathTemplateRewrite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regexRewrite: (() { final guardedValue = map['regexRewrite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(URLMapPathMatcherRouteRuleRouteActionUrlRewriteRegexRewrite.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
