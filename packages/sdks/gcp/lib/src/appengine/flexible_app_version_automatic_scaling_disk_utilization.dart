// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlexibleAppVersionAutomaticScalingDiskUtilization {
  /// Target bytes read per second.
  final pulumi.Input<int>? targetReadBytesPerSecond;
  /// Target ops read per seconds.
  final pulumi.Input<int>? targetReadOpsPerSecond;
  /// Target bytes written per second.
  final pulumi.Input<int>? targetWriteBytesPerSecond;
  /// Target ops written per second.
  final pulumi.Input<int>? targetWriteOpsPerSecond;

  /// Creates a new [FlexibleAppVersionAutomaticScalingDiskUtilization].
  /// [targetReadBytesPerSecond] Target bytes read per second.
  /// [targetReadOpsPerSecond] Target ops read per seconds.
  /// [targetWriteBytesPerSecond] Target bytes written per second.
  /// [targetWriteOpsPerSecond] Target ops written per second.
  FlexibleAppVersionAutomaticScalingDiskUtilization({
    this.targetReadBytesPerSecond,
    this.targetReadOpsPerSecond,
    this.targetWriteBytesPerSecond,
    this.targetWriteOpsPerSecond,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetReadBytesPerSecond': ?targetReadBytesPerSecond,
      'targetReadOpsPerSecond': ?targetReadOpsPerSecond,
      'targetWriteBytesPerSecond': ?targetWriteBytesPerSecond,
      'targetWriteOpsPerSecond': ?targetWriteOpsPerSecond,
    };
  }

  factory FlexibleAppVersionAutomaticScalingDiskUtilization.fromMap(Map<String, dynamic> map) {
    return FlexibleAppVersionAutomaticScalingDiskUtilization(
      targetReadBytesPerSecond: map['targetReadBytesPerSecond'] == null ? null : (map['targetReadBytesPerSecond']! as int).input(),
      targetReadOpsPerSecond: map['targetReadOpsPerSecond'] == null ? null : (map['targetReadOpsPerSecond']! as int).input(),
      targetWriteBytesPerSecond: map['targetWriteBytesPerSecond'] == null ? null : (map['targetWriteBytesPerSecond']! as int).input(),
      targetWriteOpsPerSecond: map['targetWriteOpsPerSecond'] == null ? null : (map['targetWriteOpsPerSecond']! as int).input(),
    );
  }
}

