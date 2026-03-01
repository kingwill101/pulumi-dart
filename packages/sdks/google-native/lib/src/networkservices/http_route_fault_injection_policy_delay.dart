// ignore_for_file: unused_element, unnecessary_cast


/// Specification of how client requests are delayed as part of fault injection before being sent to a destination.
class HttpRouteFaultInjectionPolicyDelay {
  /// Specify a fixed delay before forwarding the request.
  final String? fixedDelay;
  /// The percentage of traffic on which delay will be injected. The value must be between [0, 100]
  final int? percentage;

  /// Creates a new [HttpRouteFaultInjectionPolicyDelay].
  /// [fixedDelay] Specify a fixed delay before forwarding the request.
  /// [percentage] The percentage of traffic on which delay will be injected. The value must be between [0, 100]
  HttpRouteFaultInjectionPolicyDelay({
    this.fixedDelay,
    this.percentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixedDelay': ?fixedDelay,
      'percentage': ?percentage,
    };
  }

  factory HttpRouteFaultInjectionPolicyDelay.fromMap(Map<String, dynamic> map) {
    return HttpRouteFaultInjectionPolicyDelay(
      fixedDelay: map['fixedDelay'] == null ? null : map['fixedDelay'] as String,
      percentage: map['percentage'] == null ? null : map['percentage'] as int,
    );
  }
}

