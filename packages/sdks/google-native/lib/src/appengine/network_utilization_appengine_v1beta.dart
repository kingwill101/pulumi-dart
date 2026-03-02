// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Target scaling by network usage. Only applicable in the App Engine flexible environment.
class NetworkUtilizationAppengineV1beta {
  /// Target bytes received per second.
  final pulumi.Input<int>? targetReceivedBytesPerSecond;
  /// Target packets received per second.
  final pulumi.Input<int>? targetReceivedPacketsPerSecond;
  /// Target bytes sent per second.
  final pulumi.Input<int>? targetSentBytesPerSecond;
  /// Target packets sent per second.
  final pulumi.Input<int>? targetSentPacketsPerSecond;

  /// Creates a new [NetworkUtilizationAppengineV1beta].
  /// [targetReceivedBytesPerSecond] Target bytes received per second.
  /// [targetReceivedPacketsPerSecond] Target packets received per second.
  /// [targetSentBytesPerSecond] Target bytes sent per second.
  /// [targetSentPacketsPerSecond] Target packets sent per second.
  NetworkUtilizationAppengineV1beta({
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

  factory NetworkUtilizationAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return NetworkUtilizationAppengineV1beta(
      targetReceivedBytesPerSecond: map['targetReceivedBytesPerSecond'] == null ? null : (map['targetReceivedBytesPerSecond']! as int).input(),
      targetReceivedPacketsPerSecond: map['targetReceivedPacketsPerSecond'] == null ? null : (map['targetReceivedPacketsPerSecond']! as int).input(),
      targetSentBytesPerSecond: map['targetSentBytesPerSecond'] == null ? null : (map['targetSentBytesPerSecond']! as int).input(),
      targetSentPacketsPerSecond: map['targetSentPacketsPerSecond'] == null ? null : (map['targetSentPacketsPerSecond']! as int).input(),
    );
  }
}

