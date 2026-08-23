// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_url_map_default_route_action_weighted_backend_service_header_action.dart';

class RegionUrlMapDefaultRouteActionWeightedBackendService {
  /// The full or partial URL to the default BackendService resource. Before forwarding the request to backendService, the load balancer applies any relevant headerActions specified as part of this backendServiceWeight.
  final pulumi.Input<String>? backendService;
  /// Specifies changes to request and response headers that need to take effect for the selected backendService.
  /// headerAction specified here take effect before headerAction in the enclosing HttpRouteRule, PathMatcher and UrlMap.
  /// headerAction is not supported for load balancers that have their loadBalancingScheme set to EXTERNAL.
  /// Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  /// Structure is documented below.
  final pulumi.Input<RegionUrlMapDefaultRouteActionWeightedBackendServiceHeaderAction>? headerAction;
  /// Specifies the fraction of traffic sent to a backend service, computed as weight / (sum of all weightedBackendService weights in routeAction) .
  /// The selection of a backend service is determined only for new traffic. Once a user's request has been directed to a backend service, subsequent requests are sent to the same backend service as determined by the backend service's session affinity policy.
  /// The value must be from 0 to 1000.
  final pulumi.Input<int>? weight;

  /// Creates a new [RegionUrlMapDefaultRouteActionWeightedBackendService].
  /// [backendService] The full or partial URL to the default BackendService resource. Before forwarding the request to backendService, the load balancer applies any relevant headerActions specified as part of this backendServiceWeight.
  /// [headerAction] Specifies changes to request and response headers that need to take effect for the selected backendService.
  /// [weight] Specifies the fraction of traffic sent to a backend service, computed as weight / (sum of all weightedBackendService weights in routeAction) .
  const RegionUrlMapDefaultRouteActionWeightedBackendService({
    this.backendService,
    this.headerAction,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendService': ?backendService,
      'headerAction': ?pulumi.Input.mapOptionalInputValue<RegionUrlMapDefaultRouteActionWeightedBackendServiceHeaderAction, Map<String, dynamic>>(headerAction, (value) => value.toMap()),
      'weight': ?weight,
    };
  }

  factory RegionUrlMapDefaultRouteActionWeightedBackendService.fromMap(Map<String, dynamic> map) {
    return RegionUrlMapDefaultRouteActionWeightedBackendService(
      backendService: (() { final guardedValue = map['backendService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      headerAction: (() { final guardedValue = map['headerAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionUrlMapDefaultRouteActionWeightedBackendServiceHeaderAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      weight: (() { final guardedValue = map['weight']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
