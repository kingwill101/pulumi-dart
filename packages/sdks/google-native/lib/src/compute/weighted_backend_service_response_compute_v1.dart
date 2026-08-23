// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_header_action_response_compute_v1.dart';

/// In contrast to a single BackendService in HttpRouteAction to which all matching traffic is directed to, WeightedBackendService allows traffic to be split across multiple backend services. The volume of traffic for each backend service is proportional to the weight specified in each WeightedBackendService
class WeightedBackendServiceResponseComputeV1 {
  /// The full or partial URL to the default BackendService resource. Before forwarding the request to backendService, the load balancer applies any relevant headerActions specified as part of this backendServiceWeight.
  final pulumi.Input<String> backendService;
  /// Specifies changes to request and response headers that need to take effect for the selected backendService. headerAction specified here take effect before headerAction in the enclosing HttpRouteRule, PathMatcher and UrlMap. headerAction is not supported for load balancers that have their loadBalancingScheme set to EXTERNAL. Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  final pulumi.Input<HttpHeaderActionResponseComputeV1> headerAction;
  /// Specifies the fraction of traffic sent to a backend service, computed as weight / (sum of all weightedBackendService weights in routeAction) . The selection of a backend service is determined only for new traffic. Once a user's request has been directed to a backend service, subsequent requests are sent to the same backend service as determined by the backend service's session affinity policy. The value must be from 0 to 1000.
  final pulumi.Input<int> weight;

  /// Creates a new [WeightedBackendServiceResponseComputeV1].
  /// [backendService] The full or partial URL to the default BackendService resource. Before forwarding the request to backendService, the load balancer applies any relevant headerActions specified as part of this backendServiceWeight.
  /// [headerAction] Specifies changes to request and response headers that need to take effect for the selected backendService. headerAction specified here take effect before headerAction in the enclosing HttpRouteRule, PathMatcher and UrlMap. headerAction is not supported for load balancers that have their loadBalancingScheme set to EXTERNAL. Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  /// [weight] Specifies the fraction of traffic sent to a backend service, computed as weight / (sum of all weightedBackendService weights in routeAction) . The selection of a backend service is determined only for new traffic. Once a user's request has been directed to a backend service, subsequent requests are sent to the same backend service as determined by the backend service's session affinity policy. The value must be from 0 to 1000.
  const WeightedBackendServiceResponseComputeV1({
    required this.backendService,
    required this.headerAction,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendService': backendService,
      'headerAction': pulumi.Input.mapInputValue<HttpHeaderActionResponseComputeV1, Map<String, dynamic>>(headerAction, (value) => value.toMap()),
      'weight': weight,
    };
  }

  factory WeightedBackendServiceResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return WeightedBackendServiceResponseComputeV1(
      backendService: pulumi.Input.fromValue(map['backendService'] as String),
      headerAction: pulumi.Input.fromValue(HttpHeaderActionResponseComputeV1.fromMap((map['headerAction']! as Map).cast<String, dynamic>())),
      weight: pulumi.Input.fromValue(map['weight'] as int),
    );
  }
}
