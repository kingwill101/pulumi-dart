// ignore_for_file: unused_element, unnecessary_cast


/// Sync Session status object.
class ServerEndpointSyncActivityStatusResponse {
  /// Applied bytes
  final double appliedBytes;
  /// Applied item count.
  final double appliedItemCount;
  /// Per item error count
  final double perItemErrorCount;
  /// Session minutes remaining (if available)
  final int sessionMinutesRemaining;
  /// Sync mode
  final String syncMode;
  /// Timestamp when properties were updated
  final String timestamp;
  /// Total bytes (if available)
  final double totalBytes;
  /// Total item count (if available)
  final double totalItemCount;

  /// Creates a new [ServerEndpointSyncActivityStatusResponse].
  /// [appliedBytes] Applied bytes
  /// [appliedItemCount] Applied item count.
  /// [perItemErrorCount] Per item error count
  /// [sessionMinutesRemaining] Session minutes remaining (if available)
  /// [syncMode] Sync mode
  /// [timestamp] Timestamp when properties were updated
  /// [totalBytes] Total bytes (if available)
  /// [totalItemCount] Total item count (if available)
  ServerEndpointSyncActivityStatusResponse({
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
      appliedBytes: map['appliedBytes'] as double,
      appliedItemCount: map['appliedItemCount'] as double,
      perItemErrorCount: map['perItemErrorCount'] as double,
      sessionMinutesRemaining: map['sessionMinutesRemaining'] as int,
      syncMode: map['syncMode'] as String,
      timestamp: map['timestamp'] as String,
      totalBytes: map['totalBytes'] as double,
      totalItemCount: map['totalItemCount'] as double,
    );
  }
}

