// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Server endpoint cloud tiering status object.
class CloudTieringCachePerformanceResponse {
  /// Count of bytes that were served from the local server
  final pulumi.Input<double> cacheHitBytes;
  /// Percentage of total bytes (hit + miss) that were served from the local server
  final pulumi.Input<int> cacheHitBytesPercent;
  /// Count of bytes that were served from the cloud
  final pulumi.Input<double> cacheMissBytes;
  /// Last updated timestamp
  final pulumi.Input<String> lastUpdatedTimestamp;

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
      cacheHitBytes: (map['cacheHitBytes'] as double).input(),
      cacheHitBytesPercent: (map['cacheHitBytesPercent'] as int).input(),
      cacheMissBytes: (map['cacheMissBytes'] as double).input(),
      lastUpdatedTimestamp: (map['lastUpdatedTimestamp'] as String).input(),
    );
  }
}

