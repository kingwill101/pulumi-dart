// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_error_response_policy_compute_beta.dart';
import 'host_rule_compute_beta.dart';
import 'http_header_action_compute_beta.dart';
import 'http_redirect_action_compute_beta.dart';
import 'http_route_action_compute_beta.dart';
import 'path_matcher_compute_beta.dart';
import 'url_map_test_compute_beta.dart';

/// {@template pulumi_compute_beta_region_url_map_compute_beta_args_doc}
/// The set of arguments for RegionUrlMap.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_region_url_map_compute_beta_args_doc}
class RegionUrlMapComputeBetaArgs {
  /// defaultCustomErrorResponsePolicy specifies how the Load Balancer returns error responses when BackendServiceor BackendBucket responds with an error. This policy takes effect at the load balancer level and applies only when no policy has been defined for the error code at lower levels like PathMatcher, RouteRule and PathRule within this UrlMap. For example, consider a UrlMap with the following configuration: - defaultCustomErrorResponsePolicy containing policies for responding to 5xx and 4xx errors - A PathMatcher configured for *.example.com has defaultCustomErrorResponsePolicy for 4xx. If a request for http://www.example.com/ encounters a 404, the policy in pathMatcher.defaultCustomErrorResponsePolicy will be enforced. When the request for http://www.example.com/ encounters a 502, the policy in UrlMap.defaultCustomErrorResponsePolicy will be enforced. When a request that does not match any host in *.example.com such as http://www.myotherexample.com/, encounters a 404, UrlMap.defaultCustomErrorResponsePolicy takes effect. When used in conjunction with defaultRouteAction.retryPolicy, retries take precedence. Only once all retries are exhausted, the defaultCustomErrorResponsePolicy is applied. While attempting a retry, if load balancer is successful in reaching the service, the defaultCustomErrorResponsePolicy is ignored and the response from the service is returned to the client. defaultCustomErrorResponsePolicy is supported only for global external Application Load Balancers.
  final pulumi.Input<CustomErrorResponsePolicyComputeBeta>? defaultCustomErrorResponsePolicy;
  /// defaultRouteAction takes effect when none of the hostRules match. The load balancer performs advanced routing actions, such as URL rewrites and header transformations, before forwarding the request to the selected backend. If defaultRouteAction specifies any weightedBackendServices, defaultService must not be set. Conversely if defaultService is set, defaultRouteAction cannot contain any weightedBackendServices. Only one of defaultRouteAction or defaultUrlRedirect must be set. URL maps for classic Application Load Balancers only support the urlRewrite action within defaultRouteAction. defaultRouteAction has no effect when the URL map is bound to a target gRPC proxy that has the validateForProxyless field set to true.
  final pulumi.Input<HttpRouteActionComputeBeta>? defaultRouteAction;
  /// The full or partial URL of the defaultService resource to which traffic is directed if none of the hostRules match. If defaultRouteAction is also specified, advanced routing actions, such as URL rewrites, take effect before sending the request to the backend. However, if defaultService is specified, defaultRouteAction cannot contain any weightedBackendServices. Conversely, if routeAction specifies any weightedBackendServices, service must not be specified. Only one of defaultService, defaultUrlRedirect , or defaultRouteAction.weightedBackendService must be set. defaultService has no effect when the URL map is bound to a target gRPC proxy that has the validateForProxyless field set to true.
  final pulumi.Input<String>? defaultService;
  /// When none of the specified hostRules match, the request is redirected to a URL specified by defaultUrlRedirect. If defaultUrlRedirect is specified, defaultService or defaultRouteAction must not be set. Not supported when the URL map is bound to a target gRPC proxy.
  final pulumi.Input<HttpRedirectActionComputeBeta>? defaultUrlRedirect;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// Specifies changes to request and response headers that need to take effect for the selected backendService. The headerAction specified here take effect after headerAction specified under pathMatcher. headerAction is not supported for load balancers that have their loadBalancingScheme set to EXTERNAL. Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  final pulumi.Input<HttpHeaderActionComputeBeta>? headerAction;
  /// The list of host rules to use against the URL.
  final pulumi.Input<List<HostRuleComputeBeta>>? hostRules;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// The list of named PathMatchers to use against the URL.
  final pulumi.Input<List<PathMatcherComputeBeta>>? pathMatchers;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  /// begin_interface: MixerMutationRequestBuilder Request ID to support idempotency.
  final pulumi.Input<String>? requestId;
  /// The list of expected URL mapping tests. Request to update the UrlMap succeeds only if all test cases pass. You can specify a maximum of 100 tests per UrlMap. Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  final pulumi.Input<List<UrlMapTestComputeBeta>>? tests;

  /// Creates a new [RegionUrlMapComputeBetaArgs].
  /// [defaultCustomErrorResponsePolicy] defaultCustomErrorResponsePolicy specifies how the Load Balancer returns error responses when BackendServiceor BackendBucket responds with an error. This policy takes effect at the load balancer level and applies only when no policy has been defined for the error code at lower levels like PathMatcher, RouteRule and PathRule within this UrlMap. For example, consider a UrlMap with the following configuration: - defaultCustomErrorResponsePolicy containing policies for responding to 5xx and 4xx errors - A PathMatcher configured for *.example.com has defaultCustomErrorResponsePolicy for 4xx. If a request for http://www.example.com/ encounters a 404, the policy in pathMatcher.defaultCustomErrorResponsePolicy will be enforced. When the request for http://www.example.com/ encounters a 502, the policy in UrlMap.defaultCustomErrorResponsePolicy will be enforced. When a request that does not match any host in *.example.com such as http://www.myotherexample.com/, encounters a 404, UrlMap.defaultCustomErrorResponsePolicy takes effect. When used in conjunction with defaultRouteAction.retryPolicy, retries take precedence. Only once all retries are exhausted, the defaultCustomErrorResponsePolicy is applied. While attempting a retry, if load balancer is successful in reaching the service, the defaultCustomErrorResponsePolicy is ignored and the response from the service is returned to the client. defaultCustomErrorResponsePolicy is supported only for global external Application Load Balancers.
  /// [defaultRouteAction] defaultRouteAction takes effect when none of the hostRules match. The load balancer performs advanced routing actions, such as URL rewrites and header transformations, before forwarding the request to the selected backend. If defaultRouteAction specifies any weightedBackendServices, defaultService must not be set. Conversely if defaultService is set, defaultRouteAction cannot contain any weightedBackendServices. Only one of defaultRouteAction or defaultUrlRedirect must be set. URL maps for classic Application Load Balancers only support the urlRewrite action within defaultRouteAction. defaultRouteAction has no effect when the URL map is bound to a target gRPC proxy that has the validateForProxyless field set to true.
  /// [defaultService] The full or partial URL of the defaultService resource to which traffic is directed if none of the hostRules match. If defaultRouteAction is also specified, advanced routing actions, such as URL rewrites, take effect before sending the request to the backend. However, if defaultService is specified, defaultRouteAction cannot contain any weightedBackendServices. Conversely, if routeAction specifies any weightedBackendServices, service must not be specified. Only one of defaultService, defaultUrlRedirect , or defaultRouteAction.weightedBackendService must be set. defaultService has no effect when the URL map is bound to a target gRPC proxy that has the validateForProxyless field set to true.
  /// [defaultUrlRedirect] When none of the specified hostRules match, the request is redirected to a URL specified by defaultUrlRedirect. If defaultUrlRedirect is specified, defaultService or defaultRouteAction must not be set. Not supported when the URL map is bound to a target gRPC proxy.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [headerAction] Specifies changes to request and response headers that need to take effect for the selected backendService. The headerAction specified here take effect after headerAction specified under pathMatcher. headerAction is not supported for load balancers that have their loadBalancingScheme set to EXTERNAL. Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  /// [hostRules] The list of host rules to use against the URL.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [pathMatchers] The list of named PathMatchers to use against the URL.
  /// [project] Optional.
  /// [region] Required.
  /// [requestId] begin_interface: MixerMutationRequestBuilder Request ID to support idempotency.
  /// [tests] The list of expected URL mapping tests. Request to update the UrlMap succeeds only if all test cases pass. You can specify a maximum of 100 tests per UrlMap. Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  const RegionUrlMapComputeBetaArgs({
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
    required this.region,
    this.requestId,
    this.tests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultCustomErrorResponsePolicy': ?pulumi.Input.mapOptionalInputValue<CustomErrorResponsePolicyComputeBeta, Map<String, dynamic>>(defaultCustomErrorResponsePolicy, (value) => value.toMap()),
      'defaultRouteAction': ?pulumi.Input.mapOptionalInputValue<HttpRouteActionComputeBeta, Map<String, dynamic>>(defaultRouteAction, (value) => value.toMap()),
      'defaultService': ?defaultService,
      'defaultUrlRedirect': ?pulumi.Input.mapOptionalInputValue<HttpRedirectActionComputeBeta, Map<String, dynamic>>(defaultUrlRedirect, (value) => value.toMap()),
      'description': ?description,
      'headerAction': ?pulumi.Input.mapOptionalInputValue<HttpHeaderActionComputeBeta, Map<String, dynamic>>(headerAction, (value) => value.toMap()),
      'hostRules': ?pulumi.Input.mapOptionalInputValue<List<HostRuleComputeBeta>, List<Map<String, dynamic>>>(hostRules, (value) => pulumi.Input.encodeList<HostRuleComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'pathMatchers': ?pulumi.Input.mapOptionalInputValue<List<PathMatcherComputeBeta>, List<Map<String, dynamic>>>(pathMatchers, (value) => pulumi.Input.encodeList<PathMatcherComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'region': region,
      'requestId': ?requestId,
      'tests': ?pulumi.Input.mapOptionalInputValue<List<UrlMapTestComputeBeta>, List<Map<String, dynamic>>>(tests, (value) => pulumi.Input.encodeList<UrlMapTestComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RegionUrlMapComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return RegionUrlMapComputeBetaArgs(
      defaultCustomErrorResponsePolicy: (() { final guardedValue = map['defaultCustomErrorResponsePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomErrorResponsePolicyComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defaultRouteAction: (() { final guardedValue = map['defaultRouteAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HttpRouteActionComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defaultService: (() { final guardedValue = map['defaultService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultUrlRedirect: (() { final guardedValue = map['defaultUrlRedirect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HttpRedirectActionComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      headerAction: (() { final guardedValue = map['headerAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HttpHeaderActionComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostRules: (() { final guardedValue = map['hostRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HostRuleComputeBeta>(guardedValue, (value) => HostRuleComputeBeta.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pathMatchers: (() { final guardedValue = map['pathMatchers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PathMatcherComputeBeta>(guardedValue, (value) => PathMatcherComputeBeta.fromMap((value as Map).cast<String, dynamic>()))); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tests: (() { final guardedValue = map['tests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UrlMapTestComputeBeta>(guardedValue, (value) => UrlMapTestComputeBeta.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
