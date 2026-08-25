// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_url_map_path_matcher_path_rule_route_action.dart';
import 'region_url_map_path_matcher_path_rule_url_redirect.dart';

class RegionUrlMapPathMatcherPathRule {
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
  final pulumi.Input<RegionUrlMapPathMatcherPathRuleRouteAction?>? routeAction;
  /// The region backend service resource to which traffic is
  /// directed if this rule is matched. If routeAction is additionally specified,
  /// advanced routing actions like URL Rewrites, etc. take effect prior to sending
  /// the request to the backend. However, if service is specified, routeAction cannot
  /// contain any weightedBackendService s. Conversely, if routeAction specifies any
  /// weightedBackendServices, service must not be specified. Only one of urlRedirect,
  /// service or routeAction.weightedBackendService must be set.
  final pulumi.Input<String?>? service;
  /// When a path pattern is matched, the request is redirected to a URL specified
  /// by urlRedirect. If urlRedirect is specified, service or routeAction must not
  /// be set.
  /// Structure is documented below.
  final pulumi.Input<RegionUrlMapPathMatcherPathRuleUrlRedirect?>? urlRedirect;

  /// Creates a new [RegionUrlMapPathMatcherPathRule].
  /// [paths] The list of path patterns to match. Each must start with / and the only place a
  /// [routeAction] In response to a matching path, the load balancer performs advanced routing
  /// [service] The region backend service resource to which traffic is
  /// [urlRedirect] When a path pattern is matched, the request is redirected to a URL specified
  const RegionUrlMapPathMatcherPathRule({
    required this.paths,
    this.routeAction,
    this.service,
    this.urlRedirect,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'paths': paths,
      'routeAction': ?pulumi.Input.mapOptionalInputValue<RegionUrlMapPathMatcherPathRuleRouteAction, Map<String, dynamic>>(routeAction, (value) => value.toMap()),
      'service': ?service,
      'urlRedirect': ?pulumi.Input.mapOptionalInputValue<RegionUrlMapPathMatcherPathRuleUrlRedirect, Map<String, dynamic>>(urlRedirect, (value) => value.toMap()),
    };
  }

  factory RegionUrlMapPathMatcherPathRule.fromMap(Map<String, dynamic> map) {
    return RegionUrlMapPathMatcherPathRule(
      paths: pulumi.Input.fromValue((map['paths'] as List).cast<String>()),
      routeAction: (() { final guardedValue = map['routeAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionUrlMapPathMatcherPathRuleRouteAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      urlRedirect: (() { final guardedValue = map['urlRedirect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionUrlMapPathMatcherPathRuleUrlRedirect.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
