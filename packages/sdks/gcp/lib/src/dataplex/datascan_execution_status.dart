// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatascanExecutionStatus {
  /// (Output)
  /// The time when the latest DataScanJob ended.
  final pulumi.Input<String>? latestJobEndTime;
  /// (Output)
  /// The time when the latest DataScanJob started.
  final pulumi.Input<String>? latestJobStartTime;

  /// Creates a new [DatascanExecutionStatus].
  /// [latestJobEndTime] (Output)
  /// [latestJobStartTime] (Output)
  const DatascanExecutionStatus({
    this.latestJobEndTime,
    this.latestJobStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'latestJobEndTime': ?latestJobEndTime,
      'latestJobStartTime': ?latestJobStartTime,
    };
  }

  factory DatascanExecutionStatus.fromMap(Map<String, dynamic> map) {
    return DatascanExecutionStatus(
      latestJobEndTime: (() { final guardedValue = map['latestJobEndTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      latestJobStartTime: (() { final guardedValue = map['latestJobStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
