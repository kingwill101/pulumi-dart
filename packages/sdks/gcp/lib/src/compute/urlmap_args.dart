// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'urlmap_default_custom_error_response_policy.dart';
import 'urlmap_default_route_action.dart';
import 'urlmap_default_url_redirect.dart';
import 'urlmap_header_action.dart';
import 'urlmap_host_rule.dart';
import 'urlmap_path_matcher.dart';
import 'urlmap_test.dart';

/// {@template pulumi_compute_u_rlmap_urlmap_args_doc}
/// The set of arguments for URLMap.
/// {@endtemplate}
/// {@macro pulumi_compute_u_rlmap_urlmap_args_doc}
class URLMapArgs {
  /// defaultCustomErrorResponsePolicy specifies how the Load Balancer returns error responses when BackendService or BackendBucket responds with an error.
  /// This policy takes effect at the PathMatcher level and applies only when no policy has been defined for the error code at lower levels like RouteRule and PathRule within this PathMatcher. If an error code does not have a policy defined in defaultCustomErrorResponsePolicy, then a policy defined for the error code in UrlMap.defaultCustomErrorResponsePolicy takes effect.
  /// For example, consider a UrlMap with the following configuration:
  /// UrlMap.defaultCustomErrorResponsePolicy is configured with policies for 5xx and 4xx errors
  /// A RouteRule for /coming_soon/ is configured for the error code 404.
  /// If the request is for www.myotherdomain.com and a 404 is encountered, the policy under UrlMap.defaultCustomErrorResponsePolicy takes effect. If a 404 response is encountered for the request www.example.com/current_events/, the pathMatcher's policy takes effect. If however, the request for www.example.com/coming_soon/ encounters a 404, the policy in RouteRule.customErrorResponsePolicy takes effect. If any of the requests in this example encounter a 500 error code, the policy at UrlMap.defaultCustomErrorResponsePolicy takes effect.
  /// When used in conjunction with pathMatcher.defaultRouteAction.retryPolicy, retries take precedence. Only once all retries are exhausted, the defaultCustomErrorResponsePolicy is applied. While attempting a retry, if load balancer is successful in reaching the service, the defaultCustomErrorResponsePolicy is ignored and the response from the service is returned to the client.
  /// defaultCustomErrorResponsePolicy is supported only for global external Application Load Balancers.
  /// Structure is documented below.
  final pulumi.Input<URLMapDefaultCustomErrorResponsePolicy>? defaultCustomErrorResponsePolicy;
  /// defaultRouteAction takes effect when none of the hostRules match. The load balancer performs advanced routing actions
  /// like URL rewrites, header transformations, etc. prior to forwarding the request to the selected backend.
  /// If defaultRouteAction specifies any weightedBackendServices, defaultService must not be set. Conversely if defaultService
  /// is set, defaultRouteAction cannot contain any weightedBackendServices.
  /// Only one of defaultRouteAction or defaultUrlRedirect must be set.
  /// Structure is documented below.
  final pulumi.Input<URLMapDefaultRouteAction>? defaultRouteAction;
  /// The backend service or backend bucket to use when none of the given rules match.
  final pulumi.Input<String>? defaultService;
  /// When none of the specified hostRules match, the request is redirected to a URL specified
  /// by defaultUrlRedirect. If defaultUrlRedirect is specified, defaultService or
  /// defaultRouteAction must not be set.
  /// Structure is documented below.
  final pulumi.Input<URLMapDefaultUrlRedirect>? defaultUrlRedirect;
  /// An optional description of this resource. Provide this property when you create
  /// the resource.
  final pulumi.Input<String>? description;
  /// Specifies changes to request and response headers that need to take effect for
  /// the selected backendService. The headerAction specified here take effect after
  /// headerAction specified under pathMatcher.
  /// Structure is documented below.
  final pulumi.Input<URLMapHeaderAction>? headerAction;
  /// The list of HostRules to use against the URL.
  /// Structure is documented below.
  final pulumi.Input<List<URLMapHostRule>>? hostRules;
  /// Name of the resource. Provided by the client when the resource is created. The
  /// name must be 1-63 characters long, and comply with RFC1035. Specifically, the
  /// name must be 1-63 characters long and match the regular expression
  /// `a-z?` which means the first character must be a lowercase
  /// letter, and all following characters must be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// The list of named PathMatchers to use against the URL.
  /// Structure is documented below.
  final pulumi.Input<List<URLMapPathMatcher>>? pathMatchers;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The list of expected URL mapping tests. Request to update this UrlMap will
  /// succeed only if all of the test cases pass. You can specify a maximum of 100
  /// tests per UrlMap.
  /// Structure is documented below.
  final pulumi.Input<List<URLMapTest>>? tests;

  /// Creates a new [URLMapArgs].
  /// [defaultCustomErrorResponsePolicy] defaultCustomErrorResponsePolicy specifies how the Load Balancer returns error responses when BackendService or BackendBucket responds with an error.
  /// [defaultRouteAction] defaultRouteAction takes effect when none of the hostRules match. The load balancer performs advanced routing actions
  /// [defaultService] The backend service or backend bucket to use when none of the given rules match.
  /// [defaultUrlRedirect] When none of the specified hostRules match, the request is redirected to a URL specified
  /// [description] An optional description of this resource. Provide this property when you create
  /// [headerAction] Specifies changes to request and response headers that need to take effect for
  /// [hostRules] The list of HostRules to use against the URL.
  /// [name] Name of the resource. Provided by the client when the resource is created. The
  /// [pathMatchers] The list of named PathMatchers to use against the URL.
  /// [project] The ID of the project in which the resource belongs.
  /// [tests] The list of expected URL mapping tests. Request to update this UrlMap will
  URLMapArgs({
    this.defaultCustomErrorResponsePolicy,
    this.defaultRouteAction,
    this.defaultService,
    this.defaultUrlRedirect,
    this.description,
    this.headerAction,
    this.hostRules,
    this.name,
    this.pathMatchers,
    this.project,
    this.tests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultCustomErrorResponsePolicy': ?pulumi.Input.mapOptionalInputValue<URLMapDefaultCustomErrorResponsePolicy, Map<String, dynamic>>(defaultCustomErrorResponsePolicy, (value) => value.toMap()),
      'defaultRouteAction': ?pulumi.Input.mapOptionalInputValue<URLMapDefaultRouteAction, Map<String, dynamic>>(defaultRouteAction, (value) => value.toMap()),
      'defaultService': ?defaultService,
      'defaultUrlRedirect': ?pulumi.Input.mapOptionalInputValue<URLMapDefaultUrlRedirect, Map<String, dynamic>>(defaultUrlRedirect, (value) => value.toMap()),
      'description': ?description,
      'headerAction': ?pulumi.Input.mapOptionalInputValue<URLMapHeaderAction, Map<String, dynamic>>(headerAction, (value) => value.toMap()),
      'hostRules': ?pulumi.Input.mapOptionalInputValue<List<URLMapHostRule>, List<Map<String, dynamic>>>(hostRules, (value) => pulumi.Input.encodeList<URLMapHostRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'pathMatchers': ?pulumi.Input.mapOptionalInputValue<List<URLMapPathMatcher>, List<Map<String, dynamic>>>(pathMatchers, (value) => pulumi.Input.encodeList<URLMapPathMatcher, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'tests': ?pulumi.Input.mapOptionalInputValue<List<URLMapTest>, List<Map<String, dynamic>>>(tests, (value) => pulumi.Input.encodeList<URLMapTest, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory URLMapArgs.fromMap(Map<String, dynamic> map) {
    return URLMapArgs(
      defaultCustomErrorResponsePolicy: map['defaultCustomErrorResponsePolicy'] == null ? null : (URLMapDefaultCustomErrorResponsePolicy.fromMap((map['defaultCustomErrorResponsePolicy']! as Map).cast<String, dynamic>())).input(),
      defaultRouteAction: map['defaultRouteAction'] == null ? null : (URLMapDefaultRouteAction.fromMap((map['defaultRouteAction']! as Map).cast<String, dynamic>())).input(),
      defaultService: map['defaultService'] == null ? null : (map['defaultService']! as String).input(),
      defaultUrlRedirect: map['defaultUrlRedirect'] == null ? null : (URLMapDefaultUrlRedirect.fromMap((map['defaultUrlRedirect']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      headerAction: map['headerAction'] == null ? null : (URLMapHeaderAction.fromMap((map['headerAction']! as Map).cast<String, dynamic>())).input(),
      hostRules: map['hostRules'] == null ? null : (pulumi.Input.decodeList<URLMapHostRule>(map['hostRules']!, (value) => URLMapHostRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      pathMatchers: map['pathMatchers'] == null ? null : (pulumi.Input.decodeList<URLMapPathMatcher>(map['pathMatchers']!, (value) => URLMapPathMatcher.fromMap((value as Map).cast<String, dynamic>()))).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      tests: map['tests'] == null ? null : (pulumi.Input.decodeList<URLMapTest>(map['tests']!, (value) => URLMapTest.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

