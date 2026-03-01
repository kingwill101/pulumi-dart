// ignore_for_file: unused_element, unnecessary_cast


/// Describe the destination for traffic to be routed to.
class TlsRouteRouteDestination {
  /// The URL of a BackendService to route traffic to.
  final String serviceName;
  /// Optional. Specifies the proportion of requests forwareded to the backend referenced by the service_name field. This is computed as: - weight/Sum(weights in destinations) Weights in all destinations does not need to sum up to 100.
  final int? weight;

  /// Creates a new [TlsRouteRouteDestination].
  /// [serviceName] The URL of a BackendService to route traffic to.
  /// [weight] Optional. Specifies the proportion of requests forwareded to the backend referenced by the service_name field. This is computed as: - weight/Sum(weights in destinations) Weights in all destinations does not need to sum up to 100.
  TlsRouteRouteDestination({
    required this.serviceName,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceName': serviceName,
      'weight': ?weight,
    };
  }

  factory TlsRouteRouteDestination.fromMap(Map<String, dynamic> map) {
    return TlsRouteRouteDestination(
      serviceName: map['serviceName'] as String,
      weight: map['weight'] == null ? null : map['weight'] as int,
    );
  }
}

