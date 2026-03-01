// ignore_for_file: unused_element, unnecessary_cast


/// Configuration options for the HTTP (L7) load balancing controller addon, which makes it easy to set up HTTP load balancers for services in a cluster.
class HttpLoadBalancing {
  /// Whether the HTTP Load Balancing controller is enabled in the cluster. When enabled, it runs a small pod in the cluster that manages the load balancers.
  final bool? disabled;

  /// Creates a new [HttpLoadBalancing].
  /// [disabled] Whether the HTTP Load Balancing controller is enabled in the cluster. When enabled, it runs a small pod in the cluster that manages the load balancers.
  HttpLoadBalancing({
    this.disabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
    };
  }

  factory HttpLoadBalancing.fromMap(Map<String, dynamic> map) {
    return HttpLoadBalancing(
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
    );
  }
}

