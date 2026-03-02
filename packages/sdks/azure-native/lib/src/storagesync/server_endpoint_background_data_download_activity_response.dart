// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Background data download activity object
class ServerEndpointBackgroundDataDownloadActivityResponse {
  /// Running count of bytes downloaded
  final pulumi.Input<double> downloadedBytes;
  /// Progress percentage
  final pulumi.Input<int> percentProgress;
  /// Timestamp when the operation started
  final pulumi.Input<String> startedTimestamp;
  /// Timestamp when properties were updated
  final pulumi.Input<String> timestamp;

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
      downloadedBytes: (map['downloadedBytes'] as double).input(),
      percentProgress: (map['percentProgress'] as int).input(),
      startedTimestamp: (map['startedTimestamp'] as String).input(),
      timestamp: (map['timestamp'] as String).input(),
    );
  }
}

