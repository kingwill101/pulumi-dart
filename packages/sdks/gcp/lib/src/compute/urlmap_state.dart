// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'urlmap_default_custom_error_response_policy.dart';
import 'urlmap_default_route_action.dart';
import 'urlmap_default_url_redirect.dart';
import 'urlmap_header_action.dart';
import 'urlmap_host_rule.dart';
import 'urlmap_path_matcher.dart';
import 'urlmap_test.dart';

/// Input properties used for looking up and filtering URLMap resources.
class URLMapState {
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String?>? creationTimestamp;
  /// defaultCustomErrorResponsePolicy specifies how the Load Balancer returns error responses when BackendService or BackendBucket responds with an error.
  /// This policy takes effect at the PathMatcher level and applies only when no policy has been defined for the error code at lower levels like RouteRule and PathRule within this PathMatcher. If an error code does not have a policy defined in defaultCustomErrorResponsePolicy, then a policy defined for the error code in UrlMap.defaultCustomErrorResponsePolicy takes effect.
  /// For example, consider a UrlMap with the following configuration:
  /// UrlMap.defaultCustomErrorResponsePolicy is configured with policies for 5xx and 4xx errors
  /// A RouteRule for /coming_soon/ is configured for the error code 404.
  /// If the request is for www.myotherdomain.com and a 404 is encountered, the policy under UrlMap.defaultCustomErrorResponsePolicy takes effect. If a 404 response is encountered for the request www.example.com/current_events/, the pathMatcher's policy takes effect. If however, the request for www.example.com/coming_soon/ encounters a 404, the policy in RouteRule.customErrorResponsePolicy takes effect. If any of the requests in this example encounter a 500 error code, the policy at UrlMap.defaultCustomErrorResponsePolicy takes effect.
  /// When used in conjunction with pathMatcher.defaultRouteAction.retryPolicy, retries take precedence. Only once all retries are exhausted, the defaultCustomErrorResponsePolicy is applied. While attempting a retry, if load balancer is successful in reaching the service, the defaultCustomErrorResponsePolicy is ignored and the response from the service is returned to the client.
  /// defaultCustomErrorResponsePolicy is supported only for global external Application Load Balancers.
  /// Structure is documented below.
  final pulumi.Input<URLMapDefaultCustomErrorResponsePolicy?>? defaultCustomErrorResponsePolicy;
  /// defaultRouteAction takes effect when none of the hostRules match. The load balancer performs advanced routing actions
  /// like URL rewrites, header transformations, etc. prior to forwarding the request to the selected backend.
  /// If defaultRouteAction specifies any weightedBackendServices, defaultService must not be set. Conversely if defaultService
  /// is set, defaultRouteAction cannot contain any weightedBackendServices.
  /// Only one of defaultRouteAction or defaultUrlRedirect must be set.
  /// Structure is documented below.
  final pulumi.Input<URLMapDefaultRouteAction?>? defaultRouteAction;
  /// The backend service or backend bucket to use when none of the given rules match.
  final pulumi.Input<String?>? defaultService;
  /// When none of the specified hostRules match, the request is redirected to a URL specified
  /// by defaultUrlRedirect. If defaultUrlRedirect is specified, defaultService or
  /// defaultRouteAction must not be set.
  /// Structure is documented below.
  final pulumi.Input<URLMapDefaultUrlRedirect?>? defaultUrlRedirect;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// An optional description of this resource. Provide this property when you create
  /// the resource.
  final pulumi.Input<String?>? description;
  /// Fingerprint of this resource. A hash of the contents stored in this object. This
  /// field is used in optimistic locking.
  final pulumi.Input<String?>? fingerprint;
  /// Specifies changes to request and response headers that need to take effect for
  /// the selected backendService. The headerAction specified here take effect after
  /// headerAction specified under pathMatcher.
  /// Structure is documented below.
  final pulumi.Input<URLMapHeaderAction?>? headerAction;
  /// The list of HostRules to use against the URL.
  /// Structure is documented below.
  final pulumi.Input<List<URLMapHostRule>?>? hostRules;
  /// The unique identifier for the resource.
  final pulumi.Input<int?>? mapId;
  /// Name of the resource. Provided by the client when the resource is created. The
  /// name must be 1-63 characters long, and comply with RFC1035. Specifically, the
  /// name must be 1-63 characters long and match the regular expression
  /// `a-z?` which means the first character must be a lowercase
  /// letter, and all following characters must be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  final pulumi.Input<String?>? name;
  /// The list of named PathMatchers to use against the URL.
  /// Structure is documented below.
  final pulumi.Input<List<URLMapPathMatcher>?>? pathMatchers;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The URI of the created resource.
  final pulumi.Input<String?>? selfLink;
  /// The list of expected URL mapping tests. Request to update this UrlMap will
  /// succeed only if all of the test cases pass. You can specify a maximum of 100
  /// tests per UrlMap.
  /// Structure is documented below.
  final pulumi.Input<List<URLMapTest>?>? tests;

  /// Creates a new [URLMapState].
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [defaultCustomErrorResponsePolicy] defaultCustomErrorResponsePolicy specifies how the Load Balancer returns error responses when BackendService or BackendBucket responds with an error.
  /// [defaultRouteAction] defaultRouteAction takes effect when none of the hostRules match. The load balancer performs advanced routing actions
  /// [defaultService] The backend service or backend bucket to use when none of the given rules match.
  /// [defaultUrlRedirect] When none of the specified hostRules match, the request is redirected to a URL specified
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description of this resource. Provide this property when you create
  /// [fingerprint] Fingerprint of this resource. A hash of the contents stored in this object. This
  /// [headerAction] Specifies changes to request and response headers that need to take effect for
  /// [hostRules] The list of HostRules to use against the URL.
  /// [mapId] The unique identifier for the resource.
  /// [name] Name of the resource. Provided by the client when the resource is created. The
  /// [pathMatchers] The list of named PathMatchers to use against the URL.
  /// [project] The ID of the project in which the resource belongs.
  /// [selfLink] The URI of the created resource.
  /// [tests] The list of expected URL mapping tests. Request to update this UrlMap will
  const URLMapState({
    this.creationTimestamp,
    this.defaultCustomErrorResponsePolicy,
    this.defaultRouteAction,
    this.defaultService,
    this.defaultUrlRedirect,
    this.deletionPolicy,
    this.description,
    this.fingerprint,
    this.headerAction,
    this.hostRules,
    this.mapId,
    this.name,
    this.pathMatchers,
    this.project,
    this.selfLink,
    this.tests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTimestamp': ?creationTimestamp,
      'defaultCustomErrorResponsePolicy': ?pulumi.Input.mapOptionalInputValue<URLMapDefaultCustomErrorResponsePolicy, Map<String, dynamic>>(defaultCustomErrorResponsePolicy, (value) => value.toMap()),
      'defaultRouteAction': ?pulumi.Input.mapOptionalInputValue<URLMapDefaultRouteAction, Map<String, dynamic>>(defaultRouteAction, (value) => value.toMap()),
      'defaultService': ?defaultService,
      'defaultUrlRedirect': ?pulumi.Input.mapOptionalInputValue<URLMapDefaultUrlRedirect, Map<String, dynamic>>(defaultUrlRedirect, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'fingerprint': ?fingerprint,
      'headerAction': ?pulumi.Input.mapOptionalInputValue<URLMapHeaderAction, Map<String, dynamic>>(headerAction, (value) => value.toMap()),
      'hostRules': ?pulumi.Input.mapOptionalInputValue<List<URLMapHostRule>, List<Map<String, dynamic>>>(hostRules, (value) => pulumi.Input.encodeList<URLMapHostRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mapId': ?mapId,
      'name': ?name,
      'pathMatchers': ?pulumi.Input.mapOptionalInputValue<List<URLMapPathMatcher>, List<Map<String, dynamic>>>(pathMatchers, (value) => pulumi.Input.encodeList<URLMapPathMatcher, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'selfLink': ?selfLink,
      'tests': ?pulumi.Input.mapOptionalInputValue<List<URLMapTest>, List<Map<String, dynamic>>>(tests, (value) => pulumi.Input.encodeList<URLMapTest, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory URLMapState.fromMap(Map<String, dynamic> map) {
    return URLMapState(
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultCustomErrorResponsePolicy: (() { final guardedValue = map['defaultCustomErrorResponsePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(URLMapDefaultCustomErrorResponsePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defaultRouteAction: (() { final guardedValue = map['defaultRouteAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(URLMapDefaultRouteAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defaultService: (() { final guardedValue = map['defaultService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultUrlRedirect: (() { final guardedValue = map['defaultUrlRedirect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(URLMapDefaultUrlRedirect.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fingerprint: (() { final guardedValue = map['fingerprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      headerAction: (() { final guardedValue = map['headerAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(URLMapHeaderAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostRules: (() { final guardedValue = map['hostRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<URLMapHostRule>(guardedValue, (value) => URLMapHostRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      mapId: (() { final guardedValue = map['mapId']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pathMatchers: (() { final guardedValue = map['pathMatchers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<URLMapPathMatcher>(guardedValue, (value) => URLMapPathMatcher.fromMap((value as Map).cast<String, dynamic>()))); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tests: (() { final guardedValue = map['tests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<URLMapTest>(guardedValue, (value) => URLMapTest.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
