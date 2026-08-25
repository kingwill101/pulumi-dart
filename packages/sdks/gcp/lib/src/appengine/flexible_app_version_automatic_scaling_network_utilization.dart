// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlexibleAppVersionAutomaticScalingNetworkUtilization {
  /// Target bytes received per second.
  final pulumi.Input<int?>? targetReceivedBytesPerSecond;
  /// Target packets received per second.
  final pulumi.Input<int?>? targetReceivedPacketsPerSecond;
  /// Target bytes sent per second.
  final pulumi.Input<int?>? targetSentBytesPerSecond;
  /// Target packets sent per second.
  final pulumi.Input<int?>? targetSentPacketsPerSecond;

  /// Creates a new [FlexibleAppVersionAutomaticScalingNetworkUtilization].
  /// [targetReceivedBytesPerSecond] Target bytes received per second.
  /// [targetReceivedPacketsPerSecond] Target packets received per second.
  /// [targetSentBytesPerSecond] Target bytes sent per second.
  /// [targetSentPacketsPerSecond] Target packets sent per second.
  const FlexibleAppVersionAutomaticScalingNetworkUtilization({
    this.targetReceivedBytesPerSecond,
    this.targetReceivedPacketsPerSecond,
    this.targetSentBytesPerSecond,
    this.targetSentPacketsPerSecond,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetReceivedBytesPerSecond': ?targetReceivedBytesPerSecond,
      'targetReceivedPacketsPerSecond': ?targetReceivedPacketsPerSecond,
      'targetSentBytesPerSecond': ?targetSentBytesPerSecond,
      'targetSentPacketsPerSecond': ?targetSentPacketsPerSecond,
    };
  }

  factory FlexibleAppVersionAutomaticScalingNetworkUtilization.fromMap(Map<String, dynamic> map) {
    return FlexibleAppVersionAutomaticScalingNetworkUtilization(
      targetReceivedBytesPerSecond: (() { final guardedValue = map['targetReceivedBytesPerSecond']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      targetReceivedPacketsPerSecond: (() { final guardedValue = map['targetReceivedPacketsPerSecond']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      targetSentBytesPerSecond: (() { final guardedValue = map['targetSentBytesPerSecond']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      targetSentPacketsPerSecond: (() { final guardedValue = map['targetSentPacketsPerSecond']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
