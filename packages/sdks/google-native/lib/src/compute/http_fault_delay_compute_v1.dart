// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'duration_compute_v1.dart';

/// Specifies the delay introduced by the load balancer before forwarding the request to the backend service as part of fault injection.
class HttpFaultDelayComputeV1 {
  /// Specifies the value of the fixed delay interval.
  final pulumi.Input<DurationComputeV1>? fixedDelay;
  /// The percentage of traffic for connections, operations, or requests for which a delay is introduced as part of fault injection. The value must be from 0.0 to 100.0 inclusive.
  final pulumi.Input<double>? percentage;

  /// Creates a new [HttpFaultDelayComputeV1].
  /// [fixedDelay] Specifies the value of the fixed delay interval.
  /// [percentage] The percentage of traffic for connections, operations, or requests for which a delay is introduced as part of fault injection. The value must be from 0.0 to 100.0 inclusive.
  HttpFaultDelayComputeV1({
    this.fixedDelay,
    this.percentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixedDelay': ?pulumi.Input.mapOptionalInputValue<DurationComputeV1, Map<String, dynamic>>(fixedDelay, (value) => value.toMap()),
      'percentage': ?percentage,
    };
  }

  factory HttpFaultDelayComputeV1.fromMap(Map<String, dynamic> map) {
    return HttpFaultDelayComputeV1(
      fixedDelay: map['fixedDelay'] == null ? null : (DurationComputeV1.fromMap((map['fixedDelay']! as Map).cast<String, dynamic>())).input(),
      percentage: map['percentage'] == null ? null : (map['percentage']! as double).input(),
    );
  }
}

