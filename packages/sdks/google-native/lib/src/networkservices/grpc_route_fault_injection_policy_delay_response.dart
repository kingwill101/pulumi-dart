// ignore_for_file: unused_element, unnecessary_cast


/// Specification of how client requests are delayed as part of fault injection before being sent to a destination.
class GrpcRouteFaultInjectionPolicyDelayResponse {
  /// Specify a fixed delay before forwarding the request.
  final String fixedDelay;
  /// The percentage of traffic on which delay will be injected. The value must be between [0, 100]
  final int percentage;

  /// Creates a new [GrpcRouteFaultInjectionPolicyDelayResponse].
  /// [fixedDelay] Specify a fixed delay before forwarding the request.
  /// [percentage] The percentage of traffic on which delay will be injected. The value must be between [0, 100]
  GrpcRouteFaultInjectionPolicyDelayResponse({
    required this.fixedDelay,
    required this.percentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixedDelay': fixedDelay,
      'percentage': percentage,
    };
  }

  factory GrpcRouteFaultInjectionPolicyDelayResponse.fromMap(Map<String, dynamic> map) {
    return GrpcRouteFaultInjectionPolicyDelayResponse(
      fixedDelay: map['fixedDelay'] as String,
      percentage: map['percentage'] as int,
    );
  }
}

