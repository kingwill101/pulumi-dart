// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RestoreWorkloadComputeInstanceRestorePropertiesSchedulingMaxRunDuration {
  /// (Optional)
  final pulumi.Input<int?>? nanos;
  /// (Optional)
  final pulumi.Input<int?>? seconds;

  /// Creates a new [RestoreWorkloadComputeInstanceRestorePropertiesSchedulingMaxRunDuration].
  /// [nanos] (Optional)
  /// [seconds] (Optional)
  const RestoreWorkloadComputeInstanceRestorePropertiesSchedulingMaxRunDuration({
    this.nanos,
    this.seconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nanos': ?nanos,
      'seconds': ?seconds,
    };
  }

  factory RestoreWorkloadComputeInstanceRestorePropertiesSchedulingMaxRunDuration.fromMap(Map<String, dynamic> map) {
    return RestoreWorkloadComputeInstanceRestorePropertiesSchedulingMaxRunDuration(
      nanos: (() { final guardedValue = map['nanos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      seconds: (() { final guardedValue = map['seconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
