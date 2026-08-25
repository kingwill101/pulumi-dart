// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterTrialMetadata {
  /// End time of the trial cluster.
  final pulumi.Input<String?>? endTime;
  /// Grace end time of the trial cluster.
  final pulumi.Input<String?>? graceEndTime;
  /// Start time of the trial cluster.
  final pulumi.Input<String?>? startTime;
  /// Upgrade time of the trial cluster to standard cluster.
  final pulumi.Input<String?>? upgradeTime;

  /// Creates a new [ClusterTrialMetadata].
  /// [endTime] End time of the trial cluster.
  /// [graceEndTime] Grace end time of the trial cluster.
  /// [startTime] Start time of the trial cluster.
  /// [upgradeTime] Upgrade time of the trial cluster to standard cluster.
  const ClusterTrialMetadata({
    this.endTime,
    this.graceEndTime,
    this.startTime,
    this.upgradeTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'graceEndTime': ?graceEndTime,
      'startTime': ?startTime,
      'upgradeTime': ?upgradeTime,
    };
  }

  factory ClusterTrialMetadata.fromMap(Map<String, dynamic> map) {
    return ClusterTrialMetadata(
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      graceEndTime: (() { final guardedValue = map['graceEndTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      upgradeTime: (() { final guardedValue = map['upgradeTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
