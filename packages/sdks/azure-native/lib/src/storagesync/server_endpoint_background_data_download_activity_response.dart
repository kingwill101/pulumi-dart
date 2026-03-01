// ignore_for_file: unused_element, unnecessary_cast


/// Background data download activity object
class ServerEndpointBackgroundDataDownloadActivityResponse {
  /// Running count of bytes downloaded
  final double downloadedBytes;
  /// Progress percentage
  final int percentProgress;
  /// Timestamp when the operation started
  final String startedTimestamp;
  /// Timestamp when properties were updated
  final String timestamp;

  /// Creates a new [ServerEndpointBackgroundDataDownloadActivityResponse].
  /// [downloadedBytes] Running count of bytes downloaded
  /// [percentProgress] Progress percentage
  /// [startedTimestamp] Timestamp when the operation started
  /// [timestamp] Timestamp when properties were updated
  ServerEndpointBackgroundDataDownloadActivityResponse({
    required this.downloadedBytes,
    required this.percentProgress,
    required this.startedTimestamp,
    required this.timestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'downloadedBytes': downloadedBytes,
      'percentProgress': percentProgress,
      'startedTimestamp': startedTimestamp,
      'timestamp': timestamp,
    };
  }

  factory ServerEndpointBackgroundDataDownloadActivityResponse.fromMap(Map<String, dynamic> map) {
    return ServerEndpointBackgroundDataDownloadActivityResponse(
      downloadedBytes: map['downloadedBytes'] as double,
      percentProgress: map['percentProgress'] as int,
      startedTimestamp: map['startedTimestamp'] as String,
      timestamp: map['timestamp'] as String,
    );
  }
}

