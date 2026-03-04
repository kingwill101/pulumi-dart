// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ReplicatingStep contains specific step details.
class ReplicatingStepResponseVmmigrationV1alpha1 {
  /// The source disks replication rate for the last 30 minutes in bytes per second.
  final pulumi.Input<String> lastThirtyMinutesAverageBytesPerSecond;

  /// The source disks replication rate for the last 2 minutes in bytes per second.
  final pulumi.Input<String> lastTwoMinutesAverageBytesPerSecond;

  /// Replicated bytes in the step.
  final pulumi.Input<String> replicatedBytes;

  /// Total bytes to be handled in the step.
  final pulumi.Input<String> totalBytes;

  /// Creates a new [ReplicatingStepResponseVmmigrationV1alpha1].
  /// [lastThirtyMinutesAverageBytesPerSecond] The source disks replication rate for the last 30 minutes in bytes per second.
  /// [lastTwoMinutesAverageBytesPerSecond] The source disks replication rate for the last 2 minutes in bytes per second.
  /// [replicatedBytes] Replicated bytes in the step.
  /// [totalBytes] Total bytes to be handled in the step.
  ReplicatingStepResponseVmmigrationV1alpha1({
    required this.lastThirtyMinutesAverageBytesPerSecond,
    required this.lastTwoMinutesAverageBytesPerSecond,
    required this.replicatedBytes,
    required this.totalBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastThirtyMinutesAverageBytesPerSecond':
          lastThirtyMinutesAverageBytesPerSecond,
      'lastTwoMinutesAverageBytesPerSecond':
          lastTwoMinutesAverageBytesPerSecond,
      'replicatedBytes': replicatedBytes,
      'totalBytes': totalBytes,
    };
  }

  factory ReplicatingStepResponseVmmigrationV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return ReplicatingStepResponseVmmigrationV1alpha1(
      lastThirtyMinutesAverageBytesPerSecond: pulumi.Input.fromValue(
        map['lastThirtyMinutesAverageBytesPerSecond'] as String,
      ),
      lastTwoMinutesAverageBytesPerSecond: pulumi.Input.fromValue(
        map['lastTwoMinutesAverageBytesPerSecond'] as String,
      ),
      replicatedBytes: pulumi.Input.fromValue(map['replicatedBytes'] as String),
      totalBytes: pulumi.Input.fromValue(map['totalBytes'] as String),
    );
  }
}
