// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration options for the HTTP (L7) load balancing controller addon, which makes it easy to set up HTTP load balancers for services in a cluster.
class HttpLoadBalancingResponse {
  /// Whether the HTTP Load Balancing controller is enabled in the cluster. When enabled, it runs a small pod in the cluster that manages the load balancers.
  final pulumi.Input<bool> disabled;

  /// Creates a new [HttpLoadBalancingResponse].
  /// [disabled] Whether the HTTP Load Balancing controller is enabled in the cluster. When enabled, it runs a small pod in the cluster that manages the load balancers.
  HttpLoadBalancingResponse({required this.disabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'disabled': disabled};
  }

  factory HttpLoadBalancingResponse.fromMap(Map<String, dynamic> map) {
    return HttpLoadBalancingResponse(
      disabled: pulumi.Input.fromValue(map['disabled'] as bool),
    );
  }
}
