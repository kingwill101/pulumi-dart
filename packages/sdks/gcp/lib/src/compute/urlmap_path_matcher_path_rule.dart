// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'urlmap_path_matcher_path_rule_custom_error_response_policy.dart';
import 'urlmap_path_matcher_path_rule_route_action.dart';
import 'urlmap_path_matcher_path_rule_url_redirect.dart';

class URLMapPathMatcherPathRule {
  /// customErrorResponsePolicy specifies how the Load Balancer returns error responses when BackendService or BackendBucket responds with an error.
  /// If a policy for an error code is not configured for the PathRule, a policy for the error code configured in pathMatcher.defaultCustomErrorResponsePolicy is applied. If one is not specified in pathMatcher.defaultCustomErrorResponsePolicy, the policy configured in UrlMap.defaultCustomErrorResponsePolicy takes effect.
  /// For example, consider a UrlMap with the following configuration:
  /// UrlMap.defaultCustomErrorResponsePolicy are configured with policies for 5xx and 4xx errors
  /// A PathRule for /coming_soon/ is configured for the error code 404.
  /// If the request is for www.myotherdomain.com and a 404 is encountered, the policy under UrlMap.defaultCustomErrorResponsePolicy takes effect. If a 404 response is encountered for the request www.example.com/current_events/, the pathMatcher's policy takes effect. If however, the request for www.example.com/coming_soon/ encounters a 404, the policy in PathRule.customErrorResponsePolicy takes effect. If any of the requests in this example encounter a 500 error code, the policy at UrlMap.defaultCustomErrorResponsePolicy takes effect.
  /// customErrorResponsePolicy is supported only for global external Application Load Balancers.
  /// Structure is documented below.
  final pulumi.Input<URLMapPathMatcherPathRuleCustomErrorResponsePolicy>? customErrorResponsePolicy;
  /// The list of path patterns to match. Each must start with / and the only place a
  /// \* is allowed is at the end following a /. The string fed to the path matcher
  /// does not include any text after the first ? or #, and those chars are not
  /// allowed here.
  final pulumi.Input<List<String>> paths;
  /// In response to a matching path, the load balancer performs advanced routing
  /// actions like URL rewrites, header transformations, etc. prior to forwarding the
  /// request to the selected backend. If routeAction specifies any
  /// weightedBackendServices, service must not be set. Conversely if service is set,
  /// routeAction cannot contain any  weightedBackendServices. Only one of routeAction
  /// or urlRedirect must be set.
  /// Structure is documented below.
  final pulumi.Input<URLMapPathMatcherPathRuleRouteAction>? routeAction;
  /// The backend service or backend bucket to use if any of the given paths match.
  final pulumi.Input<String>? service;
  /// When a path pattern is matched, the request is redirected to a URL specified
  /// by urlRedirect. If urlRedirect is specified, service or routeAction must not
  /// be set.
  /// Structure is documented below.
  final pulumi.Input<URLMapPathMatcherPathRuleUrlRedirect>? urlRedirect;

  /// Creates a new [URLMapPathMatcherPathRule].
  /// [customErrorResponsePolicy] customErrorResponsePolicy specifies how the Load Balancer returns error responses when BackendService or BackendBucket responds with an error.
  /// [paths] The list of path patterns to match. Each must start with / and the only place a
  /// [routeAction] In response to a matching path, the load balancer performs advanced routing
  /// [service] The backend service or backend bucket to use if any of the given paths match.
  /// [urlRedirect] When a path pattern is matched, the request is redirected to a URL specified
  URLMapPathMatcherPathRule({
    this.customErrorResponsePolicy,
    required this.paths,
    this.routeAction,
    this.service,
    this.urlRedirect,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customErrorResponsePolicy': ?pulumi.Input.mapOptionalInputValue<URLMapPathMatcherPathRuleCustomErrorResponsePolicy, Map<String, dynamic>>(customErrorResponsePolicy, (value) => value.toMap()),
      'paths': paths,
      'routeAction': ?pulumi.Input.mapOptionalInputValue<URLMapPathMatcherPathRuleRouteAction, Map<String, dynamic>>(routeAction, (value) => value.toMap()),
      'service': ?service,
      'urlRedirect': ?pulumi.Input.mapOptionalInputValue<URLMapPathMatcherPathRuleUrlRedirect, Map<String, dynamic>>(urlRedirect, (value) => value.toMap()),
    };
  }

  factory URLMapPathMatcherPathRule.fromMap(Map<String, dynamic> map) {
    return URLMapPathMatcherPathRule(
      customErrorResponsePolicy: map['customErrorResponsePolicy'] == null ? null : (URLMapPathMatcherPathRuleCustomErrorResponsePolicy.fromMap((map['customErrorResponsePolicy']! as Map).cast<String, dynamic>())).input(),
      paths: ((map['paths'] as List).cast<String>()).input(),
      routeAction: map['routeAction'] == null ? null : (URLMapPathMatcherPathRuleRouteAction.fromMap((map['routeAction']! as Map).cast<String, dynamic>())).input(),
      service: map['service'] == null ? null : (map['service']! as String).input(),
      urlRedirect: map['urlRedirect'] == null ? null : (URLMapPathMatcherPathRuleUrlRedirect.fromMap((map['urlRedirect']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

