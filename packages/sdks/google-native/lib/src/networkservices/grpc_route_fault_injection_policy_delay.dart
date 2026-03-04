// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specification of how client requests are delayed as part of fault injection before being sent to a destination.
class GrpcRouteFaultInjectionPolicyDelay {
  /// Specify a fixed delay before forwarding the request.
  final pulumi.Input<String>? fixedDelay;

  /// The percentage of traffic on which delay will be injected. The value must be between [0, 100]
  final pulumi.Input<int>? percentage;

  /// Creates a new [GrpcRouteFaultInjectionPolicyDelay].
  /// [fixedDelay] Specify a fixed delay before forwarding the request.
  /// [percentage] The percentage of traffic on which delay will be injected. The value must be between [0, 100]
  GrpcRouteFaultInjectionPolicyDelay({this.fixedDelay, this.percentage});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixedDelay': ?fixedDelay,
      'percentage': ?percentage,
    };
  }

  factory GrpcRouteFaultInjectionPolicyDelay.fromMap(Map<String, dynamic> map) {
    return GrpcRouteFaultInjectionPolicyDelay(
      fixedDelay: (() {
        final guardedValue = map['fixedDelay'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      percentage: (() {
        final guardedValue = map['percentage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
