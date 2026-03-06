// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Target scaling by network usage. Only applicable in the App Engine flexible environment.
class NetworkUtilizationResponse {
  /// Target bytes received per second.
  final pulumi.Input<int> targetReceivedBytesPerSecond;
  /// Target packets received per second.
  final pulumi.Input<int> targetReceivedPacketsPerSecond;
  /// Target bytes sent per second.
  final pulumi.Input<int> targetSentBytesPerSecond;
  /// Target packets sent per second.
  final pulumi.Input<int> targetSentPacketsPerSecond;

  /// Creates a new [NetworkUtilizationResponse].
  /// [targetReceivedBytesPerSecond] Target bytes received per second.
  /// [targetReceivedPacketsPerSecond] Target packets received per second.
  /// [targetSentBytesPerSecond] Target bytes sent per second.
  /// [targetSentPacketsPerSecond] Target packets sent per second.
  const NetworkUtilizationResponse({
    required this.targetReceivedBytesPerSecond,
    required this.targetReceivedPacketsPerSecond,
    required this.targetSentBytesPerSecond,
    required this.targetSentPacketsPerSecond,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetReceivedBytesPerSecond': targetReceivedBytesPerSecond,
      'targetReceivedPacketsPerSecond': targetReceivedPacketsPerSecond,
      'targetSentBytesPerSecond': targetSentBytesPerSecond,
      'targetSentPacketsPerSecond': targetSentPacketsPerSecond,
    };
  }

  factory NetworkUtilizationResponse.fromMap(Map<String, dynamic> map) {
    return NetworkUtilizationResponse(
      targetReceivedBytesPerSecond: pulumi.Input.fromValue(map['targetReceivedBytesPerSecond'] as int),
      targetReceivedPacketsPerSecond: pulumi.Input.fromValue(map['targetReceivedPacketsPerSecond'] as int),
      targetSentBytesPerSecond: pulumi.Input.fromValue(map['targetSentBytesPerSecond'] as int),
      targetSentPacketsPerSecond: pulumi.Input.fromValue(map['targetSentPacketsPerSecond'] as int),
    );
  }
}

