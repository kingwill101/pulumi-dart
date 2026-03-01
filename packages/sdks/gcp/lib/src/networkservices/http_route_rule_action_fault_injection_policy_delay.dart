// ignore_for_file: unused_element, unnecessary_cast


class HttpRouteRuleActionFaultInjectionPolicyDelay {
  /// Specify a fixed delay before forwarding the request.
  final String? fixedDelay;
  /// The percentage of traffic on which delay will be injected.
  final int? percentage;

  /// Creates a new [HttpRouteRuleActionFaultInjectionPolicyDelay].
  /// [fixedDelay] Specify a fixed delay before forwarding the request.
  /// [percentage] The percentage of traffic on which delay will be injected.
  HttpRouteRuleActionFaultInjectionPolicyDelay({
    this.fixedDelay,
    this.percentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixedDelay': ?fixedDelay,
      'percentage': ?percentage,
    };
  }

  factory HttpRouteRuleActionFaultInjectionPolicyDelay.fromMap(Map<String, dynamic> map) {
    return HttpRouteRuleActionFaultInjectionPolicyDelay(
      fixedDelay: map['fixedDelay'] == null ? null : map['fixedDelay'] as String,
      percentage: map['percentage'] == null ? null : map['percentage'] as int,
    );
  }
}

