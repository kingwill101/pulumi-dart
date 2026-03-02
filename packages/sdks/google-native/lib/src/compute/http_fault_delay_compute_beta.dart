// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'duration_compute_beta.dart';

/// Specifies the delay introduced by the load balancer before forwarding the request to the backend service as part of fault injection.
class HttpFaultDelayComputeBeta {
  /// Specifies the value of the fixed delay interval.
  final pulumi.Input<DurationComputeBeta>? fixedDelay;
  /// The percentage of traffic for connections, operations, or requests for which a delay is introduced as part of fault injection. The value must be from 0.0 to 100.0 inclusive.
  final pulumi.Input<double>? percentage;

  /// Creates a new [HttpFaultDelayComputeBeta].
  /// [fixedDelay] Specifies the value of the fixed delay interval.
  /// [percentage] The percentage of traffic for connections, operations, or requests for which a delay is introduced as part of fault injection. The value must be from 0.0 to 100.0 inclusive.
  HttpFaultDelayComputeBeta({
    this.fixedDelay,
    this.percentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixedDelay': ?pulumi.Input.mapOptionalInputValue<DurationComputeBeta, Map<String, dynamic>>(fixedDelay, (value) => value.toMap()),
      'percentage': ?percentage,
    };
  }

  factory HttpFaultDelayComputeBeta.fromMap(Map<String, dynamic> map) {
    return HttpFaultDelayComputeBeta(
      fixedDelay: map['fixedDelay'] == null ? null : (DurationComputeBeta.fromMap((map['fixedDelay']! as Map).cast<String, dynamic>())).input(),
      percentage: map['percentage'] == null ? null : (map['percentage']! as double).input(),
    );
  }
}

