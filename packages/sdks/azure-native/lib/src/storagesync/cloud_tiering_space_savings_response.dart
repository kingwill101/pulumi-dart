// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Server endpoint cloud tiering status object.
class CloudTieringSpaceSavingsResponse {
  /// Cached content size on the server
  final pulumi.Input<double> cachedSizeBytes;

  /// Last updated timestamp
  final pulumi.Input<String> lastUpdatedTimestamp;

  /// Count of bytes saved on the server
  final pulumi.Input<double> spaceSavingsBytes;

  /// Percentage of cached size over total size
  final pulumi.Input<int> spaceSavingsPercent;

  /// Total size of content in the azure file share
  final pulumi.Input<double> totalSizeCloudBytes;

  /// Volume size
  final pulumi.Input<double> volumeSizeBytes;

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
      cachedSizeBytes: pulumi.Input.fromValue(map['cachedSizeBytes'] as double),
      lastUpdatedTimestamp: pulumi.Input.fromValue(
        map['lastUpdatedTimestamp'] as String,
      ),
      spaceSavingsBytes: pulumi.Input.fromValue(
        map['spaceSavingsBytes'] as double,
      ),
      spaceSavingsPercent: pulumi.Input.fromValue(
        map['spaceSavingsPercent'] as int,
      ),
      totalSizeCloudBytes: pulumi.Input.fromValue(
        map['totalSizeCloudBytes'] as double,
      ),
      volumeSizeBytes: pulumi.Input.fromValue(map['volumeSizeBytes'] as double),
    );
  }
}
