// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipelineSinkConfigRollingPolicy {
  /// Files will be rolled after reaching this number of bytes
  final pulumi.Input<int?>? fileSizeBytes;
  /// Number of seconds of inactivity to wait before rolling over to a new file
  final pulumi.Input<int?>? inactivitySeconds;
  /// Number of seconds to wait before rolling over to a new file
  final pulumi.Input<int?>? intervalSeconds;

  /// Creates a new [PipelineSinkConfigRollingPolicy].
  /// [fileSizeBytes] Files will be rolled after reaching this number of bytes
  /// [inactivitySeconds] Number of seconds of inactivity to wait before rolling over to a new file
  /// [intervalSeconds] Number of seconds to wait before rolling over to a new file
  const PipelineSinkConfigRollingPolicy({
    this.fileSizeBytes,
    this.inactivitySeconds,
    this.intervalSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSizeBytes': ?fileSizeBytes,
      'inactivitySeconds': ?inactivitySeconds,
      'intervalSeconds': ?intervalSeconds,
    };
  }

  factory PipelineSinkConfigRollingPolicy.fromMap(Map<String, dynamic> map) {
    return PipelineSinkConfigRollingPolicy(
      fileSizeBytes: (() { final guardedValue = map['fileSizeBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      inactivitySeconds: (() { final guardedValue = map['inactivitySeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      intervalSeconds: (() { final guardedValue = map['intervalSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
