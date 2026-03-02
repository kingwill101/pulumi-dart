// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterTrialMetadata {
  /// End time of the trial cluster.
  final pulumi.Input<String>? endTime;
  /// Grace end time of the trial cluster.
  final pulumi.Input<String>? graceEndTime;
  /// Start time of the trial cluster.
  final pulumi.Input<String>? startTime;
  /// Upgrade time of the trial cluster to standard cluster.
  final pulumi.Input<String>? upgradeTime;

  /// Creates a new [ClusterTrialMetadata].
  /// [endTime] End time of the trial cluster.
  /// [graceEndTime] Grace end time of the trial cluster.
  /// [startTime] Start time of the trial cluster.
  /// [upgradeTime] Upgrade time of the trial cluster to standard cluster.
  ClusterTrialMetadata({
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
      endTime: map['endTime'] == null ? null : (map['endTime']! as String).input(),
      graceEndTime: map['graceEndTime'] == null ? null : (map['graceEndTime']! as String).input(),
      startTime: map['startTime'] == null ? null : (map['startTime']! as String).input(),
      upgradeTime: map['upgradeTime'] == null ? null : (map['upgradeTime']! as String).input(),
    );
  }
}

