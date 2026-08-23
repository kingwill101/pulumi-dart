// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'duration.dart';

/// Specifies the delay introduced by the load balancer before forwarding the request to the backend service as part of fault injection.
class HttpFaultDelay {
  /// Specifies the value of the fixed delay interval.
  final pulumi.Input<Duration>? fixedDelay;
  /// The percentage of traffic for connections, operations, or requests for which a delay is introduced as part of fault injection. The value must be from 0.0 to 100.0 inclusive.
  final pulumi.Input<double>? percentage;

  /// Creates a new [HttpFaultDelay].
  /// [fixedDelay] Specifies the value of the fixed delay interval.
  /// [percentage] The percentage of traffic for connections, operations, or requests for which a delay is introduced as part of fault injection. The value must be from 0.0 to 100.0 inclusive.
  const HttpFaultDelay({
    this.fixedDelay,
    this.percentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixedDelay': ?pulumi.Input.mapOptionalInputValue<Duration, Map<String, dynamic>>(fixedDelay, (value) => value.toMap()),
      'percentage': ?percentage,
    };
  }

  factory HttpFaultDelay.fromMap(Map<String, dynamic> map) {
    return HttpFaultDelay(
      fixedDelay: (() { final guardedValue = map['fixedDelay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Duration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      percentage: (() { final guardedValue = map['percentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
