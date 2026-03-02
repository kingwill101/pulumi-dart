// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'duration_response_compute_beta.dart';

/// Specifies the delay introduced by the load balancer before forwarding the request to the backend service as part of fault injection.
class HttpFaultDelayResponseComputeBeta {
  /// Specifies the value of the fixed delay interval.
  final pulumi.Input<DurationResponseComputeBeta> fixedDelay;
  /// The percentage of traffic for connections, operations, or requests for which a delay is introduced as part of fault injection. The value must be from 0.0 to 100.0 inclusive.
  final pulumi.Input<double> percentage;

  /// Creates a new [HttpFaultDelayResponseComputeBeta].
  /// [fixedDelay] Specifies the value of the fixed delay interval.
  /// [percentage] The percentage of traffic for connections, operations, or requests for which a delay is introduced as part of fault injection. The value must be from 0.0 to 100.0 inclusive.
  HttpFaultDelayResponseComputeBeta({
    required this.fixedDelay,
    required this.percentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixedDelay': pulumi.Input.mapInputValue<DurationResponseComputeBeta, Map<String, dynamic>>(fixedDelay, (value) => value.toMap()),
      'percentage': percentage,
    };
  }

  factory HttpFaultDelayResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return HttpFaultDelayResponseComputeBeta(
      fixedDelay: (DurationResponseComputeBeta.fromMap((map['fixedDelay'] as Map).cast<String, dynamic>())).input(),
      percentage: (map['percentage'] as double).input(),
    );
  }
}

