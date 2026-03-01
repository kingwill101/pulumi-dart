// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_header_action_response_compute_v1.dart';
import 'http_redirect_action_response_compute_v1.dart';
import 'http_route_action_response_compute_v1.dart';
import 'http_route_rule_match_response_compute_v1.dart';

/// The HttpRouteRule setting specifies how to match an HTTP request and the corresponding routing action that load balancing proxies perform.
class HttpRouteRuleResponseComputeV1 {
  /// The short description conveying the intent of this routeRule. The description can have a maximum length of 1024 characters.
  final String description;
  /// Specifies changes to request and response headers that need to take effect for the selected backendService. The headerAction value specified here is applied before the matching pathMatchers[].headerAction and after pathMatchers[].routeRules[].routeAction.weightedBackendService.backendServiceWeightAction[].headerAction HeaderAction is not supported for load balancers that have their loadBalancingScheme set to EXTERNAL. Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  final HttpHeaderActionResponseComputeV1 headerAction;
  /// The list of criteria for matching attributes of a request to this routeRule. This list has OR semantics: the request matches this routeRule when any of the matchRules are satisfied. However predicates within a given matchRule have AND semantics. All predicates within a matchRule must match for the request to match the rule.
  final List<HttpRouteRuleMatchResponseComputeV1> matchRules;
  /// For routeRules within a given pathMatcher, priority determines the order in which a load balancer interprets routeRules. RouteRules are evaluated in order of priority, from the lowest to highest number. The priority of a rule decreases as its number increases (1, 2, 3, N+1). The first rule that matches the request is applied. You cannot configure two or more routeRules with the same priority. Priority for each rule must be set to a number from 0 to 2147483647 inclusive. Priority numbers can have gaps, which enable you to add or remove rules in the future without affecting the rest of the rules. For example, 1, 2, 3, 4, 5, 9, 12, 16 is a valid series of priority numbers to which you could add rules numbered from 6 to 8, 10 to 11, and 13 to 15 in the future without any impact on existing rules.
  final int priority;
  /// In response to a matching matchRule, the load balancer performs advanced routing actions, such as URL rewrites and header transformations, before forwarding the request to the selected backend. If routeAction specifies any weightedBackendServices, service must not be set. Conversely if service is set, routeAction cannot contain any weightedBackendServices. Only one of urlRedirect, service or routeAction.weightedBackendService must be set. URL maps for classic Application Load Balancers only support the urlRewrite action within a route rule's routeAction.
  final HttpRouteActionResponseComputeV1 routeAction;
  /// The full or partial URL of the backend service resource to which traffic is directed if this rule is matched. If routeAction is also specified, advanced routing actions, such as URL rewrites, take effect before sending the request to the backend. However, if service is specified, routeAction cannot contain any weightedBackendServices. Conversely, if routeAction specifies any weightedBackendServices, service must not be specified. Only one of urlRedirect, service or routeAction.weightedBackendService must be set.
  final String service;
  /// When this rule is matched, the request is redirected to a URL specified by urlRedirect. If urlRedirect is specified, service or routeAction must not be set. Not supported when the URL map is bound to a target gRPC proxy.
  final HttpRedirectActionResponseComputeV1 urlRedirect;

  /// Creates a new [HttpRouteRuleResponseComputeV1].
  /// [description] The short description conveying the intent of this routeRule. The description can have a maximum length of 1024 characters.
  /// [headerAction] Specifies changes to request and response headers that need to take effect for the selected backendService. The headerAction value specified here is applied before the matching pathMatchers[].headerAction and after pathMatchers[].routeRules[].routeAction.weightedBackendService.backendServiceWeightAction[].headerAction HeaderAction is not supported for load balancers that have their loadBalancingScheme set to EXTERNAL. Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  /// [matchRules] The list of criteria for matching attributes of a request to this routeRule. This list has OR semantics: the request matches this routeRule when any of the matchRules are satisfied. However predicates within a given matchRule have AND semantics. All predicates within a matchRule must match for the request to match the rule.
  /// [priority] For routeRules within a given pathMatcher, priority determines the order in which a load balancer interprets routeRules. RouteRules are evaluated in order of priority, from the lowest to highest number. The priority of a rule decreases as its number increases (1, 2, 3, N+1). The first rule that matches the request is applied. You cannot configure two or more routeRules with the same priority. Priority for each rule must be set to a number from 0 to 2147483647 inclusive. Priority numbers can have gaps, which enable you to add or remove rules in the future without affecting the rest of the rules. For example, 1, 2, 3, 4, 5, 9, 12, 16 is a valid series of priority numbers to which you could add rules numbered from 6 to 8, 10 to 11, and 13 to 15 in the future without any impact on existing rules.
  /// [routeAction] In response to a matching matchRule, the load balancer performs advanced routing actions, such as URL rewrites and header transformations, before forwarding the request to the selected backend. If routeAction specifies any weightedBackendServices, service must not be set. Conversely if service is set, routeAction cannot contain any weightedBackendServices. Only one of urlRedirect, service or routeAction.weightedBackendService must be set. URL maps for classic Application Load Balancers only support the urlRewrite action within a route rule's routeAction.
  /// [service] The full or partial URL of the backend service resource to which traffic is directed if this rule is matched. If routeAction is also specified, advanced routing actions, such as URL rewrites, take effect before sending the request to the backend. However, if service is specified, routeAction cannot contain any weightedBackendServices. Conversely, if routeAction specifies any weightedBackendServices, service must not be specified. Only one of urlRedirect, service or routeAction.weightedBackendService must be set.
  /// [urlRedirect] When this rule is matched, the request is redirected to a URL specified by urlRedirect. If urlRedirect is specified, service or routeAction must not be set. Not supported when the URL map is bound to a target gRPC proxy.
  HttpRouteRuleResponseComputeV1({
    required this.description,
    required this.headerAction,
    required this.matchRules,
    required this.priority,
    required this.routeAction,
    required this.service,
    required this.urlRedirect,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'headerAction': headerAction.toMap(),
      'matchRules': pulumi.Input.encodeList<HttpRouteRuleMatchResponseComputeV1, Map<String, dynamic>>(matchRules, (value) => value.toMap()),
      'priority': priority,
      'routeAction': routeAction.toMap(),
      'service': service,
      'urlRedirect': urlRedirect.toMap(),
    };
  }

  factory HttpRouteRuleResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return HttpRouteRuleResponseComputeV1(
      description: map['description'] as String,
      headerAction: HttpHeaderActionResponseComputeV1.fromMap((map['headerAction'] as Map).cast<String, dynamic>()),
      matchRules: pulumi.Input.decodeList<HttpRouteRuleMatchResponseComputeV1>(map['matchRules'], (value) => HttpRouteRuleMatchResponseComputeV1.fromMap((value as Map).cast<String, dynamic>())),
      priority: map['priority'] as int,
      routeAction: HttpRouteActionResponseComputeV1.fromMap((map['routeAction'] as Map).cast<String, dynamic>()),
      service: map['service'] as String,
      urlRedirect: HttpRedirectActionResponseComputeV1.fromMap((map['urlRedirect'] as Map).cast<String, dynamic>()),
    );
  }
}

