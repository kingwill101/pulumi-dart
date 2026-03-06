// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_error_response_policy_response.dart';
import 'host_rule_response.dart';
import 'http_header_action_response.dart';
import 'http_redirect_action_response.dart';
import 'http_route_action_response.dart';
import 'path_matcher_response.dart';
import 'url_map_test_response.dart';

/// Result data returned by getUrlMap.
class GetUrlMapResult {
  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;
  /// defaultCustomErrorResponsePolicy specifies how the Load Balancer returns error responses when BackendServiceor BackendBucket responds with an error. This policy takes effect at the load balancer level and applies only when no policy has been defined for the error code at lower levels like PathMatcher, RouteRule and PathRule within this UrlMap. For example, consider a UrlMap with the following configuration: - defaultCustomErrorResponsePolicy containing policies for responding to 5xx and 4xx errors - A PathMatcher configured for *.example.com has defaultCustomErrorResponsePolicy for 4xx. If a request for http://www.example.com/ encounters a 404, the policy in pathMatcher.defaultCustomErrorResponsePolicy will be enforced. When the request for http://www.example.com/ encounters a 502, the policy in UrlMap.defaultCustomErrorResponsePolicy will be enforced. When a request that does not match any host in *.example.com such as http://www.myotherexample.com/, encounters a 404, UrlMap.defaultCustomErrorResponsePolicy takes effect. When used in conjunction with defaultRouteAction.retryPolicy, retries take precedence. Only once all retries are exhausted, the defaultCustomErrorResponsePolicy is applied. While attempting a retry, if load balancer is successful in reaching the service, the defaultCustomErrorResponsePolicy is ignored and the response from the service is returned to the client. defaultCustomErrorResponsePolicy is supported only for global external Application Load Balancers.
  final CustomErrorResponsePolicyResponse defaultCustomErrorResponsePolicy;
  /// defaultRouteAction takes effect when none of the hostRules match. The load balancer performs advanced routing actions, such as URL rewrites and header transformations, before forwarding the request to the selected backend. If defaultRouteAction specifies any weightedBackendServices, defaultService must not be set. Conversely if defaultService is set, defaultRouteAction cannot contain any weightedBackendServices. Only one of defaultRouteAction or defaultUrlRedirect must be set. URL maps for classic Application Load Balancers only support the urlRewrite action within defaultRouteAction. defaultRouteAction has no effect when the URL map is bound to a target gRPC proxy that has the validateForProxyless field set to true.
  final HttpRouteActionResponse defaultRouteAction;
  /// The full or partial URL of the defaultService resource to which traffic is directed if none of the hostRules match. If defaultRouteAction is also specified, advanced routing actions, such as URL rewrites, take effect before sending the request to the backend. However, if defaultService is specified, defaultRouteAction cannot contain any weightedBackendServices. Conversely, if routeAction specifies any weightedBackendServices, service must not be specified. Only one of defaultService, defaultUrlRedirect , or defaultRouteAction.weightedBackendService must be set. defaultService has no effect when the URL map is bound to a target gRPC proxy that has the validateForProxyless field set to true.
  final String defaultService;
  /// When none of the specified hostRules match, the request is redirected to a URL specified by defaultUrlRedirect. If defaultUrlRedirect is specified, defaultService or defaultRouteAction must not be set. Not supported when the URL map is bound to a target gRPC proxy.
  final HttpRedirectActionResponse defaultUrlRedirect;
  /// An optional description of this resource. Provide this property when you create the resource.
  final String description;
  /// Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field is ignored when inserting a UrlMap. An up-to-date fingerprint must be provided in order to update the UrlMap, otherwise the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve a UrlMap.
  final String fingerprint;
  /// Specifies changes to request and response headers that need to take effect for the selected backendService. The headerAction specified here take effect after headerAction specified under pathMatcher. headerAction is not supported for load balancers that have their loadBalancingScheme set to EXTERNAL. Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  final HttpHeaderActionResponse headerAction;
  /// The list of host rules to use against the URL.
  final List<HostRuleResponse> hostRules;
  /// Type of the resource. Always compute#urlMaps for url maps.
  final String kind;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String name;
  /// The list of named PathMatchers to use against the URL.
  final List<PathMatcherResponse> pathMatchers;
  /// URL of the region where the regional URL map resides. This field is not applicable to global URL maps. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  final String region;
  /// Server-defined URL for the resource.
  final String selfLink;
  /// The list of expected URL mapping tests. Request to update the UrlMap succeeds only if all test cases pass. You can specify a maximum of 100 tests per UrlMap. Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  final List<UrlMapTestResponse> tests;

  /// Creates a new [GetUrlMapResult].
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [defaultCustomErrorResponsePolicy] defaultCustomErrorResponsePolicy specifies how the Load Balancer returns error responses when BackendServiceor BackendBucket responds with an error. This policy takes effect at the load balancer level and applies only when no policy has been defined for the error code at lower levels like PathMatcher, RouteRule and PathRule within this UrlMap. For example, consider a UrlMap with the following configuration: - defaultCustomErrorResponsePolicy containing policies for responding to 5xx and 4xx errors - A PathMatcher configured for *.example.com has defaultCustomErrorResponsePolicy for 4xx. If a request for http://www.example.com/ encounters a 404, the policy in pathMatcher.defaultCustomErrorResponsePolicy will be enforced. When the request for http://www.example.com/ encounters a 502, the policy in UrlMap.defaultCustomErrorResponsePolicy will be enforced. When a request that does not match any host in *.example.com such as http://www.myotherexample.com/, encounters a 404, UrlMap.defaultCustomErrorResponsePolicy takes effect. When used in conjunction with defaultRouteAction.retryPolicy, retries take precedence. Only once all retries are exhausted, the defaultCustomErrorResponsePolicy is applied. While attempting a retry, if load balancer is successful in reaching the service, the defaultCustomErrorResponsePolicy is ignored and the response from the service is returned to the client. defaultCustomErrorResponsePolicy is supported only for global external Application Load Balancers.
  /// [defaultRouteAction] defaultRouteAction takes effect when none of the hostRules match. The load balancer performs advanced routing actions, such as URL rewrites and header transformations, before forwarding the request to the selected backend. If defaultRouteAction specifies any weightedBackendServices, defaultService must not be set. Conversely if defaultService is set, defaultRouteAction cannot contain any weightedBackendServices. Only one of defaultRouteAction or defaultUrlRedirect must be set. URL maps for classic Application Load Balancers only support the urlRewrite action within defaultRouteAction. defaultRouteAction has no effect when the URL map is bound to a target gRPC proxy that has the validateForProxyless field set to true.
  /// [defaultService] The full or partial URL of the defaultService resource to which traffic is directed if none of the hostRules match. If defaultRouteAction is also specified, advanced routing actions, such as URL rewrites, take effect before sending the request to the backend. However, if defaultService is specified, defaultRouteAction cannot contain any weightedBackendServices. Conversely, if routeAction specifies any weightedBackendServices, service must not be specified. Only one of defaultService, defaultUrlRedirect , or defaultRouteAction.weightedBackendService must be set. defaultService has no effect when the URL map is bound to a target gRPC proxy that has the validateForProxyless field set to true.
  /// [defaultUrlRedirect] When none of the specified hostRules match, the request is redirected to a URL specified by defaultUrlRedirect. If defaultUrlRedirect is specified, defaultService or defaultRouteAction must not be set. Not supported when the URL map is bound to a target gRPC proxy.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [fingerprint] Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field is ignored when inserting a UrlMap. An up-to-date fingerprint must be provided in order to update the UrlMap, otherwise the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve a UrlMap.
  /// [headerAction] Specifies changes to request and response headers that need to take effect for the selected backendService. The headerAction specified here take effect after headerAction specified under pathMatcher. headerAction is not supported for load balancers that have their loadBalancingScheme set to EXTERNAL. Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  /// [hostRules] The list of host rules to use against the URL.
  /// [kind] Type of the resource. Always compute#urlMaps for url maps.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [pathMatchers] The list of named PathMatchers to use against the URL.
  /// [region] URL of the region where the regional URL map resides. This field is not applicable to global URL maps. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  /// [selfLink] Server-defined URL for the resource.
  /// [tests] The list of expected URL mapping tests. Request to update the UrlMap succeeds only if all test cases pass. You can specify a maximum of 100 tests per UrlMap. Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  const GetUrlMapResult({
    required this.creationTimestamp,
    required this.defaultCustomErrorResponsePolicy,
    required this.defaultRouteAction,
    required this.defaultService,
    required this.defaultUrlRedirect,
    required this.description,
    required this.fingerprint,
    required this.headerAction,
    required this.hostRules,
    required this.kind,
    required this.name,
    required this.pathMatchers,
    required this.region,
    required this.selfLink,
    required this.tests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTimestamp': creationTimestamp,
      'defaultCustomErrorResponsePolicy': defaultCustomErrorResponsePolicy.toMap(),
      'defaultRouteAction': defaultRouteAction.toMap(),
      'defaultService': defaultService,
      'defaultUrlRedirect': defaultUrlRedirect.toMap(),
      'description': description,
      'fingerprint': fingerprint,
      'headerAction': headerAction.toMap(),
      'hostRules': pulumi.Input.encodeList<HostRuleResponse, Map<String, dynamic>>(hostRules, (value) => value.toMap()),
      'kind': kind,
      'name': name,
      'pathMatchers': pulumi.Input.encodeList<PathMatcherResponse, Map<String, dynamic>>(pathMatchers, (value) => value.toMap()),
      'region': region,
      'selfLink': selfLink,
      'tests': pulumi.Input.encodeList<UrlMapTestResponse, Map<String, dynamic>>(tests, (value) => value.toMap()),
    };
  }

  factory GetUrlMapResult.fromMap(Map<String, dynamic> map) {
    return GetUrlMapResult(
      creationTimestamp: map['creationTimestamp'] as String,
      defaultCustomErrorResponsePolicy: CustomErrorResponsePolicyResponse.fromMap((map['defaultCustomErrorResponsePolicy']! as Map).cast<String, dynamic>()),
      defaultRouteAction: HttpRouteActionResponse.fromMap((map['defaultRouteAction']! as Map).cast<String, dynamic>()),
      defaultService: map['defaultService'] as String,
      defaultUrlRedirect: HttpRedirectActionResponse.fromMap((map['defaultUrlRedirect']! as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      fingerprint: map['fingerprint'] as String,
      headerAction: HttpHeaderActionResponse.fromMap((map['headerAction']! as Map).cast<String, dynamic>()),
      hostRules: pulumi.Input.decodeList<HostRuleResponse>(map['hostRules']!, (value) => HostRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
      kind: map['kind'] as String,
      name: map['name'] as String,
      pathMatchers: pulumi.Input.decodeList<PathMatcherResponse>(map['pathMatchers']!, (value) => PathMatcherResponse.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
      selfLink: map['selfLink'] as String,
      tests: pulumi.Input.decodeList<UrlMapTestResponse>(map['tests']!, (value) => UrlMapTestResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

