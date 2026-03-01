// ignore_for_file: unused_element, unnecessary_cast


/// Server endpoint cloud tiering status object.
class CloudTieringCachePerformanceResponse {
  /// Count of bytes that were served from the local server
  final double cacheHitBytes;
  /// Percentage of total bytes (hit + miss) that were served from the local server
  final int cacheHitBytesPercent;
  /// Count of bytes that were served from the cloud
  final double cacheMissBytes;
  /// Last updated timestamp
  final String lastUpdatedTimestamp;

  /// Creates a new [CloudTieringCachePerformanceResponse].
  /// [cacheHitBytes] Count of bytes that were served from the local server
  /// [cacheHitBytesPercent] Percentage of total bytes (hit + miss) that were served from the local server
  /// [cacheMissBytes] Count of bytes that were served from the cloud
  /// [lastUpdatedTimestamp] Last updated timestamp
  CloudTieringCachePerformanceResponse({
    required this.cacheHitBytes,
    required this.cacheHitBytesPercent,
    required this.cacheMissBytes,
    required this.lastUpdatedTimestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheHitBytes': cacheHitBytes,
      'cacheHitBytesPercent': cacheHitBytesPercent,
      'cacheMissBytes': cacheMissBytes,
      'lastUpdatedTimestamp': lastUpdatedTimestamp,
    };
  }

  factory CloudTieringCachePerformanceResponse.fromMap(Map<String, dynamic> map) {
    return CloudTieringCachePerformanceResponse(
      cacheHitBytes: map['cacheHitBytes'] as double,
      cacheHitBytesPercent: map['cacheHitBytesPercent'] as int,
      cacheMissBytes: map['cacheMissBytes'] as double,
      lastUpdatedTimestamp: map['lastUpdatedTimestamp'] as String,
    );
  }
}

