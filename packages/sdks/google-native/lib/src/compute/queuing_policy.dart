// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'duration.dart';

/// Queuing parameters for the requested deferred capacity.
class QueuingPolicy {
  /// Relative deadline for waiting for capacity.
  final pulumi.Input<Duration>? validUntilDuration;
  /// Absolute deadline for waiting for capacity in RFC3339 text format.
  final pulumi.Input<String>? validUntilTime;

  /// Creates a new [QueuingPolicy].
  /// [validUntilDuration] Relative deadline for waiting for capacity.
  /// [validUntilTime] Absolute deadline for waiting for capacity in RFC3339 text format.
  const QueuingPolicy({
    this.validUntilDuration,
    this.validUntilTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'validUntilDuration': ?pulumi.Input.mapOptionalInputValue<Duration, Map<String, dynamic>>(validUntilDuration, (value) => value.toMap()),
      'validUntilTime': ?validUntilTime,
    };
  }

  factory QueuingPolicy.fromMap(Map<String, dynamic> map) {
    return QueuingPolicy(
      validUntilDuration: (() { final guardedValue = map['validUntilDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Duration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      validUntilTime: (() { final guardedValue = map['validUntilTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
