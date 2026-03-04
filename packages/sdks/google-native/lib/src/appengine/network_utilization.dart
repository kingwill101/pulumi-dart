// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Target scaling by network usage. Only applicable in the App Engine flexible environment.
class NetworkUtilization {
  /// Target bytes received per second.
  final pulumi.Input<int>? targetReceivedBytesPerSecond;

  /// Target packets received per second.
  final pulumi.Input<int>? targetReceivedPacketsPerSecond;

  /// Target bytes sent per second.
  final pulumi.Input<int>? targetSentBytesPerSecond;

  /// Target packets sent per second.
  final pulumi.Input<int>? targetSentPacketsPerSecond;

  /// Creates a new [NetworkUtilization].
  /// [targetReceivedBytesPerSecond] Target bytes received per second.
  /// [targetReceivedPacketsPerSecond] Target packets received per second.
  /// [targetSentBytesPerSecond] Target bytes sent per second.
  /// [targetSentPacketsPerSecond] Target packets sent per second.
  NetworkUtilization({
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

  factory NetworkUtilization.fromMap(Map<String, dynamic> map) {
    return NetworkUtilization(
      targetReceivedBytesPerSecond: (() {
        final guardedValue = map['targetReceivedBytesPerSecond'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      targetReceivedPacketsPerSecond: (() {
        final guardedValue = map['targetReceivedPacketsPerSecond'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      targetSentBytesPerSecond: (() {
        final guardedValue = map['targetSentBytesPerSecond'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      targetSentPacketsPerSecond: (() {
        final guardedValue = map['targetSentPacketsPerSecond'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
