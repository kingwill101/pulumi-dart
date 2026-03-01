// ignore_for_file: unused_element, unnecessary_cast


/// Server endpoint cloud tiering status object.
class CloudTieringSpaceSavingsResponse {
  /// Cached content size on the server
  final double cachedSizeBytes;
  /// Last updated timestamp
  final String lastUpdatedTimestamp;
  /// Count of bytes saved on the server
  final double spaceSavingsBytes;
  /// Percentage of cached size over total size
  final int spaceSavingsPercent;
  /// Total size of content in the azure file share
  final double totalSizeCloudBytes;
  /// Volume size
  final double volumeSizeBytes;

  /// Creates a new [CloudTieringSpaceSavingsResponse].
  /// [cachedSizeBytes] Cached content size on the server
  /// [lastUpdatedTimestamp] Last updated timestamp
  /// [spaceSavingsBytes] Count of bytes saved on the server
  /// [spaceSavingsPercent] Percentage of cached size over total size
  /// [totalSizeCloudBytes] Total size of content in the azure file share
  /// [volumeSizeBytes] Volume size
  CloudTieringSpaceSavingsResponse({
    required this.cachedSizeBytes,
    required this.lastUpdatedTimestamp,
    required this.spaceSavingsBytes,
    required this.spaceSavingsPercent,
    required this.totalSizeCloudBytes,
    required this.volumeSizeBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cachedSizeBytes': cachedSizeBytes,
      'lastUpdatedTimestamp': lastUpdatedTimestamp,
      'spaceSavingsBytes': spaceSavingsBytes,
      'spaceSavingsPercent': spaceSavingsPercent,
      'totalSizeCloudBytes': totalSizeCloudBytes,
      'volumeSizeBytes': volumeSizeBytes,
    };
  }

  factory CloudTieringSpaceSavingsResponse.fromMap(Map<String, dynamic> map) {
    return CloudTieringSpaceSavingsResponse(
      cachedSizeBytes: map['cachedSizeBytes'] as double,
      lastUpdatedTimestamp: map['lastUpdatedTimestamp'] as String,
      spaceSavingsBytes: map['spaceSavingsBytes'] as double,
      spaceSavingsPercent: map['spaceSavingsPercent'] as int,
      totalSizeCloudBytes: map['totalSizeCloudBytes'] as double,
      volumeSizeBytes: map['volumeSizeBytes'] as double,
    );
  }
}

