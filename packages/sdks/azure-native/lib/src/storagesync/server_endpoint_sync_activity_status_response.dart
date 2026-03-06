// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Sync Session status object.
class ServerEndpointSyncActivityStatusResponse {
  /// Applied bytes
  final pulumi.Input<double> appliedBytes;
  /// Applied item count.
  final pulumi.Input<double> appliedItemCount;
  /// Per item error count
  final pulumi.Input<double> perItemErrorCount;
  /// Session minutes remaining (if available)
  final pulumi.Input<int> sessionMinutesRemaining;
  /// Sync mode
  final pulumi.Input<String> syncMode;
  /// Timestamp when properties were updated
  final pulumi.Input<String> timestamp;
  /// Total bytes (if available)
  final pulumi.Input<double> totalBytes;
  /// Total item count (if available)
  final pulumi.Input<double> totalItemCount;

  /// Creates a new [ServerEndpointSyncActivityStatusResponse].
  /// [appliedBytes] Applied bytes
  /// [appliedItemCount] Applied item count.
  /// [perItemErrorCount] Per item error count
  /// [sessionMinutesRemaining] Session minutes remaining (if available)
  /// [syncMode] Sync mode
  /// [timestamp] Timestamp when properties were updated
  /// [totalBytes] Total bytes (if available)
  /// [totalItemCount] Total item count (if available)
  const ServerEndpointSyncActivityStatusResponse({
    required this.appliedBytes,
    required this.appliedItemCount,
    required this.perItemErrorCount,
    required this.sessionMinutesRemaining,
    required this.syncMode,
    required this.timestamp,
    required this.totalBytes,
    required this.totalItemCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appliedBytes': appliedBytes,
      'appliedItemCount': appliedItemCount,
      'perItemErrorCount': perItemErrorCount,
      'sessionMinutesRemaining': sessionMinutesRemaining,
      'syncMode': syncMode,
      'timestamp': timestamp,
      'totalBytes': totalBytes,
      'totalItemCount': totalItemCount,
    };
  }

  factory ServerEndpointSyncActivityStatusResponse.fromMap(Map<String, dynamic> map) {
    return ServerEndpointSyncActivityStatusResponse(
      appliedBytes: pulumi.Input.fromValue(map['appliedBytes'] as double),
      appliedItemCount: pulumi.Input.fromValue(map['appliedItemCount'] as double),
      perItemErrorCount: pulumi.Input.fromValue(map['perItemErrorCount'] as double),
      sessionMinutesRemaining: pulumi.Input.fromValue(map['sessionMinutesRemaining'] as int),
      syncMode: pulumi.Input.fromValue(map['syncMode'] as String),
      timestamp: pulumi.Input.fromValue(map['timestamp'] as String),
      totalBytes: pulumi.Input.fromValue(map['totalBytes'] as double),
      totalItemCount: pulumi.Input.fromValue(map['totalItemCount'] as double),
    );
  }
}

