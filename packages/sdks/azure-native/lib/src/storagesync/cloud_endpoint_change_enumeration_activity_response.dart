// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cloud endpoint change enumeration activity object
class CloudEndpointChangeEnumerationActivityResponse {
  /// Progress percentage for processing deletes. This is done separately from the rest of the enumeration run
  final pulumi.Input<int> deletesProgressPercent;

  /// Last updated timestamp
  final pulumi.Input<String> lastUpdatedTimestamp;

  /// Estimate of time remaining for the enumeration run
  final pulumi.Input<int> minutesRemaining;

  /// Change enumeration operation state
  final pulumi.Input<String> operationState;

  /// Count of directories processed
  final pulumi.Input<double> processedDirectoriesCount;

  /// Count of files processed
  final pulumi.Input<double> processedFilesCount;

  /// Progress percentage for change enumeration run, excluding processing of deletes
  final pulumi.Input<int> progressPercent;

  /// Timestamp when change enumeration started
  final pulumi.Input<String> startedTimestamp;

  /// When non-zero, indicates an issue that is delaying change enumeration
  final pulumi.Input<int> statusCode;

  /// Change enumeration total counts state
  final pulumi.Input<String> totalCountsState;

  /// Total count of directories enumerated
  final pulumi.Input<double> totalDirectoriesCount;

  /// Total count of files enumerated
  final pulumi.Input<double> totalFilesCount;

  /// Total enumerated size in bytes
  final pulumi.Input<double> totalSizeBytes;

  /// Creates a new [CloudEndpointChangeEnumerationActivityResponse].
  /// [deletesProgressPercent] Progress percentage for processing deletes. This is done separately from the rest of the enumeration run
  /// [lastUpdatedTimestamp] Last updated timestamp
  /// [minutesRemaining] Estimate of time remaining for the enumeration run
  /// [operationState] Change enumeration operation state
  /// [processedDirectoriesCount] Count of directories processed
  /// [processedFilesCount] Count of files processed
  /// [progressPercent] Progress percentage for change enumeration run, excluding processing of deletes
  /// [startedTimestamp] Timestamp when change enumeration started
  /// [statusCode] When non-zero, indicates an issue that is delaying change enumeration
  /// [totalCountsState] Change enumeration total counts state
  /// [totalDirectoriesCount] Total count of directories enumerated
  /// [totalFilesCount] Total count of files enumerated
  /// [totalSizeBytes] Total enumerated size in bytes
  CloudEndpointChangeEnumerationActivityResponse({
    required this.deletesProgressPercent,
    required this.lastUpdatedTimestamp,
    required this.minutesRemaining,
    required this.operationState,
    required this.processedDirectoriesCount,
    required this.processedFilesCount,
    required this.progressPercent,
    required this.startedTimestamp,
    required this.statusCode,
    required this.totalCountsState,
    required this.totalDirectoriesCount,
    required this.totalFilesCount,
    required this.totalSizeBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletesProgressPercent': deletesProgressPercent,
      'lastUpdatedTimestamp': lastUpdatedTimestamp,
      'minutesRemaining': minutesRemaining,
      'operationState': operationState,
      'processedDirectoriesCount': processedDirectoriesCount,
      'processedFilesCount': processedFilesCount,
      'progressPercent': progressPercent,
      'startedTimestamp': startedTimestamp,
      'statusCode': statusCode,
      'totalCountsState': totalCountsState,
      'totalDirectoriesCount': totalDirectoriesCount,
      'totalFilesCount': totalFilesCount,
      'totalSizeBytes': totalSizeBytes,
    };
  }

  factory CloudEndpointChangeEnumerationActivityResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return CloudEndpointChangeEnumerationActivityResponse(
      deletesProgressPercent: pulumi.Input.fromValue(
        map['deletesProgressPercent'] as int,
      ),
      lastUpdatedTimestamp: pulumi.Input.fromValue(
        map['lastUpdatedTimestamp'] as String,
      ),
      minutesRemaining: pulumi.Input.fromValue(map['minutesRemaining'] as int),
      operationState: pulumi.Input.fromValue(map['operationState'] as String),
      processedDirectoriesCount: pulumi.Input.fromValue(
        map['processedDirectoriesCount'] as double,
      ),
      processedFilesCount: pulumi.Input.fromValue(
        map['processedFilesCount'] as double,
      ),
      progressPercent: pulumi.Input.fromValue(map['progressPercent'] as int),
      startedTimestamp: pulumi.Input.fromValue(
        map['startedTimestamp'] as String,
      ),
      statusCode: pulumi.Input.fromValue(map['statusCode'] as int),
      totalCountsState: pulumi.Input.fromValue(
        map['totalCountsState'] as String,
      ),
      totalDirectoriesCount: pulumi.Input.fromValue(
        map['totalDirectoriesCount'] as double,
      ),
      totalFilesCount: pulumi.Input.fromValue(map['totalFilesCount'] as double),
      totalSizeBytes: pulumi.Input.fromValue(map['totalSizeBytes'] as double),
    );
  }
}
