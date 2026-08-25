// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlexibleAppVersionAutomaticScalingDiskUtilization {
  /// Target bytes read per second.
  final pulumi.Input<int?>? targetReadBytesPerSecond;
  /// Target ops read per seconds.
  final pulumi.Input<int?>? targetReadOpsPerSecond;
  /// Target bytes written per second.
  final pulumi.Input<int?>? targetWriteBytesPerSecond;
  /// Target ops written per second.
  final pulumi.Input<int?>? targetWriteOpsPerSecond;

  /// Creates a new [FlexibleAppVersionAutomaticScalingDiskUtilization].
  /// [targetReadBytesPerSecond] Target bytes read per second.
  /// [targetReadOpsPerSecond] Target ops read per seconds.
  /// [targetWriteBytesPerSecond] Target bytes written per second.
  /// [targetWriteOpsPerSecond] Target ops written per second.
  const FlexibleAppVersionAutomaticScalingDiskUtilization({
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
      targetReadBytesPerSecond: (() { final guardedValue = map['targetReadBytesPerSecond']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      targetReadOpsPerSecond: (() { final guardedValue = map['targetReadOpsPerSecond']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      targetWriteBytesPerSecond: (() { final guardedValue = map['targetWriteBytesPerSecond']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      targetWriteOpsPerSecond: (() { final guardedValue = map['targetWriteOpsPerSecond']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
