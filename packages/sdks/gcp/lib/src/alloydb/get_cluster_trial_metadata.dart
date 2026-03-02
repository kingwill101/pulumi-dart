// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterTrialMetadata {
  /// End time of the trial cluster.
  final pulumi.Input<String> endTime;
  /// Grace end time of the trial cluster.
  final pulumi.Input<String> graceEndTime;
  /// Start time of the trial cluster.
  final pulumi.Input<String> startTime;
  /// Upgrade time of the trial cluster to standard cluster.
  final pulumi.Input<String> upgradeTime;

  /// Creates a new [GetClusterTrialMetadata].
  /// [endTime] End time of the trial cluster.
  /// [graceEndTime] Grace end time of the trial cluster.
  /// [startTime] Start time of the trial cluster.
  /// [upgradeTime] Upgrade time of the trial cluster to standard cluster.
  GetClusterTrialMetadata({
    required this.endTime,
    required this.graceEndTime,
    required this.startTime,
    required this.upgradeTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'graceEndTime': graceEndTime,
      'startTime': startTime,
      'upgradeTime': upgradeTime,
    };
  }

  factory GetClusterTrialMetadata.fromMap(Map<String, dynamic> map) {
    return GetClusterTrialMetadata(
      endTime: (map['endTime'] as String).input(),
      graceEndTime: (map['graceEndTime'] as String).input(),
      startTime: (map['startTime'] as String).input(),
      upgradeTime: (map['upgradeTime'] as String).input(),
    );
  }
}

