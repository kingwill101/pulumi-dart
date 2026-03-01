// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'urlmap_path_matcher_default_custom_error_response_policy.dart';
import 'urlmap_path_matcher_default_route_action.dart';
import 'urlmap_path_matcher_default_url_redirect.dart';
import 'urlmap_path_matcher_header_action.dart';
import 'urlmap_path_matcher_path_rule.dart';
import 'urlmap_path_matcher_route_rule.dart';

class URLMapPathMatcher {
  /// defaultCustomErrorResponsePolicy specifies how the Load Balancer returns error responses when BackendService or BackendBucket responds with an error.
  /// This policy takes effect at the PathMatcher level and applies only when no policy has been defined for the error code at lower levels like RouteRule and PathRule within this PathMatcher. If an error code does not have a policy defined in defaultCustomErrorResponsePolicy, then a policy defined for the error code in UrlMap.defaultCustomErrorResponsePolicy takes effect.
  /// For example, consider a UrlMap with the following configuration:
  /// UrlMap.defaultCustomErrorResponsePolicy is configured with policies for 5xx and 4xx errors
  /// A RouteRule for /coming_soon/ is configured for the error code 404.
  /// If the request is for www.myotherdomain.com and a 404 is encountered, the policy under UrlMap.defaultCustomErrorResponsePolicy takes effect. If a 404 response is encountered for the request www.example.com/current_events/, the pathMatcher's policy takes effect. If however, the request for www.example.com/coming_soon/ encounters a 404, the policy in RouteRule.customErrorResponsePolicy takes effect. If any of the requests in this example encounter a 500 error code, the policy at UrlMap.defaultCustomErrorResponsePolicy takes effect.
  /// When used in conjunction with pathMatcher.defaultRouteAction.retryPolicy, retries take precedence. Only once all retries are exhausted, the defaultCustomErrorResponsePolicy is applied. While attempting a retry, if load balancer is successful in reaching the service, the defaultCustomErrorResponsePolicy is ignored and the response from the service is returned to the client.
  /// defaultCustomErrorResponsePolicy is supported only for global external Application Load Balancers.
  /// Structure is documented below.
  final URLMapPathMatcherDefaultCustomErrorResponsePolicy? defaultCustomErrorResponsePolicy;
  /// defaultRouteAction takes effect when none of the pathRules or routeRules match. The load balancer performs
  /// advanced routing actions like URL rewrites, header transformations, etc. prior to forwarding the request
  /// to the selected backend. If defaultRouteAction specifies any weightedBackendServices, defaultService must not be set.
  /// Conversely if defaultService is set, defaultRouteAction cannot contain any weightedBackendServices.
  /// Only one of defaultRouteAction or defaultUrlRedirect must be set.
  /// Structure is documented below.
  final URLMapPathMatcherDefaultRouteAction? defaultRouteAction;
  /// The backend service or backend bucket to use when none of the given paths match.
  final String? defaultService;
  /// When none of the specified hostRules match, the request is redirected to a URL specified
  /// by defaultUrlRedirect. If defaultUrlRedirect is specified, defaultService or
  /// defaultRouteAction must not be set.
  /// Structure is documented below.
  final URLMapPathMatcherDefaultUrlRedirect? defaultUrlRedirect;
  /// An optional description of this resource. Provide this property when you create
  /// the resource.
  final String? description;
  /// Specifies changes to request and response headers that need to take effect for
  /// the selected backendService. HeaderAction specified here are applied after the
  /// matching HttpRouteRule HeaderAction and before the HeaderAction in the UrlMap
  /// Structure is documented below.
  final URLMapPathMatcherHeaderAction? headerAction;
  /// The name to which this PathMatcher is referred by the HostRule.
  final String name;
  /// The list of path rules. Use this list instead of routeRules when routing based
  /// on simple path matching is all that's required. The order by which path rules
  /// are specified does not matter. Matches are always done on the longest-path-first
  /// basis. For example: a pathRule with a path /a/b/c/* will match before /a/b/*
  /// irrespective of the order in which those paths appear in this list. Within a
  /// given pathMatcher, only one of pathRules or routeRules must be set.
  /// Structure is documented below.
  final List<URLMapPathMatcherPathRule>? pathRules;
  /// The list of ordered HTTP route rules. Use this list instead of pathRules when
  /// advanced route matching and routing actions are desired. The order of specifying
  /// routeRules matters: the first rule that matches will cause its specified routing
  /// action to take effect. Within a given pathMatcher, only one of pathRules or
  /// routeRules must be set. routeRules are not supported in UrlMaps intended for
  /// External load balancers.
  /// Structure is documented below.
  final List<URLMapPathMatcherRouteRule>? routeRules;

  /// Creates a new [URLMapPathMatcher].
  /// [defaultCustomErrorResponsePolicy] defaultCustomErrorResponsePolicy specifies how the Load Balancer returns error responses when BackendService or BackendBucket responds with an error.
  /// [defaultRouteAction] defaultRouteAction takes effect when none of the pathRules or routeRules match. The load balancer performs
  /// [defaultService] The backend service or backend bucket to use when none of the given paths match.
  /// [defaultUrlRedirect] When none of the specified hostRules match, the request is redirected to a URL specified
  /// [description] An optional description of this resource. Provide this property when you create
  /// [headerAction] Specifies changes to request and response headers that need to take effect for
  /// [name] The name to which this PathMatcher is referred by the HostRule.
  /// [pathRules] The list of path rules. Use this list instead of routeRules when routing based
  /// [routeRules] The list of ordered HTTP route rules. Use this list instead of pathRules when
  URLMapPathMatcher({
    this.defaultCustomErrorResponsePolicy,
    this.defaultRouteAction,
    this.defaultService,
    this.defaultUrlRedirect,
    this.description,
    this.headerAction,
    required this.name,
    this.pathRules,
    this.routeRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultCustomErrorResponsePolicy': ?defaultCustomErrorResponsePolicy == null ? null : defaultCustomErrorResponsePolicy!.toMap(),
      'defaultRouteAction': ?defaultRouteAction == null ? null : defaultRouteAction!.toMap(),
      'defaultService': ?defaultService,
      'defaultUrlRedirect': ?defaultUrlRedirect == null ? null : defaultUrlRedirect!.toMap(),
      'description': ?description,
      'headerAction': ?headerAction == null ? null : headerAction!.toMap(),
      'name': name,
      'pathRules': ?pathRules == null ? null : pulumi.Input.encodeList<URLMapPathMatcherPathRule, Map<String, dynamic>>(pathRules!, (value) => value.toMap()),
      'routeRules': ?routeRules == null ? null : pulumi.Input.encodeList<URLMapPathMatcherRouteRule, Map<String, dynamic>>(routeRules!, (value) => value.toMap()),
    };
  }

  factory URLMapPathMatcher.fromMap(Map<String, dynamic> map) {
    return URLMapPathMatcher(
      defaultCustomErrorResponsePolicy: map['defaultCustomErrorResponsePolicy'] == null ? null : URLMapPathMatcherDefaultCustomErrorResponsePolicy.fromMap((map['defaultCustomErrorResponsePolicy'] as Map).cast<String, dynamic>()),
      defaultRouteAction: map['defaultRouteAction'] == null ? null : URLMapPathMatcherDefaultRouteAction.fromMap((map['defaultRouteAction'] as Map).cast<String, dynamic>()),
      defaultService: map['defaultService'] == null ? null : map['defaultService'] as String,
      defaultUrlRedirect: map['defaultUrlRedirect'] == null ? null : URLMapPathMatcherDefaultUrlRedirect.fromMap((map['defaultUrlRedirect'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      headerAction: map['headerAction'] == null ? null : URLMapPathMatcherHeaderAction.fromMap((map['headerAction'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      pathRules: map['pathRules'] == null ? null : pulumi.Input.decodeList<URLMapPathMatcherPathRule>(map['pathRules'], (value) => URLMapPathMatcherPathRule.fromMap((value as Map).cast<String, dynamic>())),
      routeRules: map['routeRules'] == null ? null : pulumi.Input.decodeList<URLMapPathMatcherRouteRule>(map['routeRules'], (value) => URLMapPathMatcherRouteRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

