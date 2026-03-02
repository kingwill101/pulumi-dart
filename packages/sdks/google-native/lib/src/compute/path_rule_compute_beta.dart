// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_error_response_policy_compute_beta.dart';
import 'http_redirect_action_compute_beta.dart';
import 'http_route_action_compute_beta.dart';

/// A path-matching rule for a URL. If matched, will use the specified BackendService to handle the traffic arriving at this URL.
class PathRuleComputeBeta {
  /// customErrorResponsePolicy specifies how the Load Balancer returns error responses when BackendServiceor BackendBucket responds with an error. If a policy for an error code is not configured for the PathRule, a policy for the error code configured in pathMatcher.defaultCustomErrorResponsePolicy is applied. If one is not specified in pathMatcher.defaultCustomErrorResponsePolicy, the policy configured in UrlMap.defaultCustomErrorResponsePolicy takes effect. For example, consider a UrlMap with the following configuration: - UrlMap.defaultCustomErrorResponsePolicy are configured with policies for 5xx and 4xx errors - A PathRule for /coming_soon/ is configured for the error code 404. If the request is for www.myotherdomain.com and a 404 is encountered, the policy under UrlMap.defaultCustomErrorResponsePolicy takes effect. If a 404 response is encountered for the request www.example.com/current_events/, the pathMatcher's policy takes effect. If however, the request for www.example.com/coming_soon/ encounters a 404, the policy in PathRule.customErrorResponsePolicy takes effect. If any of the requests in this example encounter a 500 error code, the policy at UrlMap.defaultCustomErrorResponsePolicy takes effect. customErrorResponsePolicy is supported only for global external Application Load Balancers.
  final pulumi.Input<CustomErrorResponsePolicyComputeBeta>? customErrorResponsePolicy;
  /// The list of path patterns to match. Each must start with / and the only place a * is allowed is at the end following a /. The string fed to the path matcher does not include any text after the first ? or #, and those chars are not allowed here.
  final pulumi.Input<List<String>>? paths;
  /// In response to a matching path, the load balancer performs advanced routing actions, such as URL rewrites and header transformations, before forwarding the request to the selected backend. If routeAction specifies any weightedBackendServices, service must not be set. Conversely if service is set, routeAction cannot contain any weightedBackendServices. Only one of routeAction or urlRedirect must be set. URL maps for classic Application Load Balancers only support the urlRewrite action within a path rule's routeAction.
  final pulumi.Input<HttpRouteActionComputeBeta>? routeAction;
  /// The full or partial URL of the backend service resource to which traffic is directed if this rule is matched. If routeAction is also specified, advanced routing actions, such as URL rewrites, take effect before sending the request to the backend. However, if service is specified, routeAction cannot contain any weightedBackendServices. Conversely, if routeAction specifies any weightedBackendServices, service must not be specified. Only one of urlRedirect, service or routeAction.weightedBackendService must be set.
  final pulumi.Input<String>? service;
  /// When a path pattern is matched, the request is redirected to a URL specified by urlRedirect. If urlRedirect is specified, service or routeAction must not be set. Not supported when the URL map is bound to a target gRPC proxy.
  final pulumi.Input<HttpRedirectActionComputeBeta>? urlRedirect;

  /// Creates a new [PathRuleComputeBeta].
  /// [customErrorResponsePolicy] customErrorResponsePolicy specifies how the Load Balancer returns error responses when BackendServiceor BackendBucket responds with an error. If a policy for an error code is not configured for the PathRule, a policy for the error code configured in pathMatcher.defaultCustomErrorResponsePolicy is applied. If one is not specified in pathMatcher.defaultCustomErrorResponsePolicy, the policy configured in UrlMap.defaultCustomErrorResponsePolicy takes effect. For example, consider a UrlMap with the following configuration: - UrlMap.defaultCustomErrorResponsePolicy are configured with policies for 5xx and 4xx errors - A PathRule for /coming_soon/ is configured for the error code 404. If the request is for www.myotherdomain.com and a 404 is encountered, the policy under UrlMap.defaultCustomErrorResponsePolicy takes effect. If a 404 response is encountered for the request www.example.com/current_events/, the pathMatcher's policy takes effect. If however, the request for www.example.com/coming_soon/ encounters a 404, the policy in PathRule.customErrorResponsePolicy takes effect. If any of the requests in this example encounter a 500 error code, the policy at UrlMap.defaultCustomErrorResponsePolicy takes effect. customErrorResponsePolicy is supported only for global external Application Load Balancers.
  /// [paths] The list of path patterns to match. Each must start with / and the only place a * is allowed is at the end following a /. The string fed to the path matcher does not include any text after the first ? or #, and those chars are not allowed here.
  /// [routeAction] In response to a matching path, the load balancer performs advanced routing actions, such as URL rewrites and header transformations, before forwarding the request to the selected backend. If routeAction specifies any weightedBackendServices, service must not be set. Conversely if service is set, routeAction cannot contain any weightedBackendServices. Only one of routeAction or urlRedirect must be set. URL maps for classic Application Load Balancers only support the urlRewrite action within a path rule's routeAction.
  /// [service] The full or partial URL of the backend service resource to which traffic is directed if this rule is matched. If routeAction is also specified, advanced routing actions, such as URL rewrites, take effect before sending the request to the backend. However, if service is specified, routeAction cannot contain any weightedBackendServices. Conversely, if routeAction specifies any weightedBackendServices, service must not be specified. Only one of urlRedirect, service or routeAction.weightedBackendService must be set.
  /// [urlRedirect] When a path pattern is matched, the request is redirected to a URL specified by urlRedirect. If urlRedirect is specified, service or routeAction must not be set. Not supported when the URL map is bound to a target gRPC proxy.
  PathRuleComputeBeta({
    this.customErrorResponsePolicy,
    this.paths,
    this.routeAction,
    this.service,
    this.urlRedirect,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customErrorResponsePolicy': ?pulumi.Input.mapOptionalInputValue<CustomErrorResponsePolicyComputeBeta, Map<String, dynamic>>(customErrorResponsePolicy, (value) => value.toMap()),
      'paths': ?paths,
      'routeAction': ?pulumi.Input.mapOptionalInputValue<HttpRouteActionComputeBeta, Map<String, dynamic>>(routeAction, (value) => value.toMap()),
      'service': ?service,
      'urlRedirect': ?pulumi.Input.mapOptionalInputValue<HttpRedirectActionComputeBeta, Map<String, dynamic>>(urlRedirect, (value) => value.toMap()),
    };
  }

  factory PathRuleComputeBeta.fromMap(Map<String, dynamic> map) {
    return PathRuleComputeBeta(
      customErrorResponsePolicy: map['customErrorResponsePolicy'] == null ? null : (CustomErrorResponsePolicyComputeBeta.fromMap((map['customErrorResponsePolicy']! as Map).cast<String, dynamic>())).input(),
      paths: map['paths'] == null ? null : ((map['paths']! as List).cast<String>()).input(),
      routeAction: map['routeAction'] == null ? null : (HttpRouteActionComputeBeta.fromMap((map['routeAction']! as Map).cast<String, dynamic>())).input(),
      service: map['service'] == null ? null : (map['service']! as String).input(),
      urlRedirect: map['urlRedirect'] == null ? null : (HttpRedirectActionComputeBeta.fromMap((map['urlRedirect']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

