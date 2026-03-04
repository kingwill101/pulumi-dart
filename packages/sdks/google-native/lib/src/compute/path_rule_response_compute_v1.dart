// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_redirect_action_response_compute_v1.dart';
import 'http_route_action_response_compute_v1.dart';

/// A path-matching rule for a URL. If matched, will use the specified BackendService to handle the traffic arriving at this URL.
class PathRuleResponseComputeV1 {
  /// The list of path patterns to match. Each must start with / and the only place a * is allowed is at the end following a /. The string fed to the path matcher does not include any text after the first ? or #, and those chars are not allowed here.
  final pulumi.Input<List<String>> paths;

  /// In response to a matching path, the load balancer performs advanced routing actions, such as URL rewrites and header transformations, before forwarding the request to the selected backend. If routeAction specifies any weightedBackendServices, service must not be set. Conversely if service is set, routeAction cannot contain any weightedBackendServices. Only one of routeAction or urlRedirect must be set. URL maps for classic Application Load Balancers only support the urlRewrite action within a path rule's routeAction.
  final pulumi.Input<HttpRouteActionResponseComputeV1> routeAction;

  /// The full or partial URL of the backend service resource to which traffic is directed if this rule is matched. If routeAction is also specified, advanced routing actions, such as URL rewrites, take effect before sending the request to the backend. However, if service is specified, routeAction cannot contain any weightedBackendServices. Conversely, if routeAction specifies any weightedBackendServices, service must not be specified. Only one of urlRedirect, service or routeAction.weightedBackendService must be set.
  final pulumi.Input<String> service;

  /// When a path pattern is matched, the request is redirected to a URL specified by urlRedirect. If urlRedirect is specified, service or routeAction must not be set. Not supported when the URL map is bound to a target gRPC proxy.
  final pulumi.Input<HttpRedirectActionResponseComputeV1> urlRedirect;

  /// Creates a new [PathRuleResponseComputeV1].
  /// [paths] The list of path patterns to match. Each must start with / and the only place a * is allowed is at the end following a /. The string fed to the path matcher does not include any text after the first ? or #, and those chars are not allowed here.
  /// [routeAction] In response to a matching path, the load balancer performs advanced routing actions, such as URL rewrites and header transformations, before forwarding the request to the selected backend. If routeAction specifies any weightedBackendServices, service must not be set. Conversely if service is set, routeAction cannot contain any weightedBackendServices. Only one of routeAction or urlRedirect must be set. URL maps for classic Application Load Balancers only support the urlRewrite action within a path rule's routeAction.
  /// [service] The full or partial URL of the backend service resource to which traffic is directed if this rule is matched. If routeAction is also specified, advanced routing actions, such as URL rewrites, take effect before sending the request to the backend. However, if service is specified, routeAction cannot contain any weightedBackendServices. Conversely, if routeAction specifies any weightedBackendServices, service must not be specified. Only one of urlRedirect, service or routeAction.weightedBackendService must be set.
  /// [urlRedirect] When a path pattern is matched, the request is redirected to a URL specified by urlRedirect. If urlRedirect is specified, service or routeAction must not be set. Not supported when the URL map is bound to a target gRPC proxy.
  PathRuleResponseComputeV1({
    required this.paths,
    required this.routeAction,
    required this.service,
    required this.urlRedirect,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'paths': paths,
      'routeAction':
          pulumi.Input.mapInputValue<
            HttpRouteActionResponseComputeV1,
            Map<String, dynamic>
          >(routeAction, (value) => value.toMap()),
      'service': service,
      'urlRedirect':
          pulumi.Input.mapInputValue<
            HttpRedirectActionResponseComputeV1,
            Map<String, dynamic>
          >(urlRedirect, (value) => value.toMap()),
    };
  }

  factory PathRuleResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return PathRuleResponseComputeV1(
      paths: pulumi.Input.fromValue((map['paths'] as List).cast<String>()),
      routeAction: pulumi.Input.fromValue(
        HttpRouteActionResponseComputeV1.fromMap(
          (map['routeAction']! as Map).cast<String, dynamic>(),
        ),
      ),
      service: pulumi.Input.fromValue(map['service'] as String),
      urlRedirect: pulumi.Input.fromValue(
        HttpRedirectActionResponseComputeV1.fromMap(
          (map['urlRedirect']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
