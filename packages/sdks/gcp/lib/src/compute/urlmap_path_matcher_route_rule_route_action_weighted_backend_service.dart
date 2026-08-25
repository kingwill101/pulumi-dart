// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'urlmap_path_matcher_route_rule_route_action_weighted_backend_service_header_action.dart';

class URLMapPathMatcherRouteRuleRouteActionWeightedBackendService {
  /// The full or partial URL to the default BackendService resource. Before forwarding the
  /// request to backendService, the loadbalancer applies any relevant headerActions
  /// specified as part of this backendServiceWeight.
  final pulumi.Input<String> backendService;
  /// Specifies changes to request and response headers that need to take effect for
  /// the selected backendService.
  /// headerAction specified here take effect before headerAction in the enclosing
  /// HttpRouteRule, PathMatcher and UrlMap.
  /// Structure is documented below.
  final pulumi.Input<URLMapPathMatcherRouteRuleRouteActionWeightedBackendServiceHeaderAction?>? headerAction;
  /// Specifies the fraction of traffic sent to backendService, computed as
  /// weight / (sum of all weightedBackendService weights in routeAction) .
  /// The selection of a backend service is determined only for new traffic. Once a user's request
  /// has been directed to a backendService, subsequent requests will be sent to the same backendService
  /// as determined by the BackendService's session affinity policy.
  /// The value must be between 0 and 1000
  final pulumi.Input<int> weight;

  /// Creates a new [URLMapPathMatcherRouteRuleRouteActionWeightedBackendService].
  /// [backendService] The full or partial URL to the default BackendService resource. Before forwarding the
  /// [headerAction] Specifies changes to request and response headers that need to take effect for
  /// [weight] Specifies the fraction of traffic sent to backendService, computed as
  const URLMapPathMatcherRouteRuleRouteActionWeightedBackendService({
    required this.backendService,
    this.headerAction,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendService': backendService,
      'headerAction': ?pulumi.Input.mapOptionalInputValue<URLMapPathMatcherRouteRuleRouteActionWeightedBackendServiceHeaderAction, Map<String, dynamic>>(headerAction, (value) => value.toMap()),
      'weight': weight,
    };
  }

  factory URLMapPathMatcherRouteRuleRouteActionWeightedBackendService.fromMap(Map<String, dynamic> map) {
    return URLMapPathMatcherRouteRuleRouteActionWeightedBackendService(
      backendService: pulumi.Input.fromValue(map['backendService'] as String),
      headerAction: (() { final guardedValue = map['headerAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(URLMapPathMatcherRouteRuleRouteActionWeightedBackendServiceHeaderAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      weight: pulumi.Input.fromValue((map['weight'] as num).toInt()),
    );
  }
}
