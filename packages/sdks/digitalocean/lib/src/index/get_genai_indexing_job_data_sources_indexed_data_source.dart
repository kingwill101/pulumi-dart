// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGenaiIndexingJobDataSourcesIndexedDataSource {
  /// Timestamp when data source completed indexing
  final pulumi.Input<String> completedAt;
  /// UUID of the indexed data source
  final pulumi.Input<String> dataSourceUuid;
  /// Detailed error description
  final pulumi.Input<String> errorDetails;
  /// Error message if indexing failed
  final pulumi.Input<String> errorMsg;
  /// Total count of items that have failed
  final pulumi.Input<String> failedItemCount;
  /// Total count of files that have been indexed
  final pulumi.Input<String> indexedFileCount;
  /// Total count of items that have been indexed
  final pulumi.Input<String> indexedItemCount;
  /// Total count of items that have been removed
  final pulumi.Input<String> removedItemCount;
  /// Total count of items that have been skipped
  final pulumi.Input<String> skippedItemCount;
  /// Timestamp when data source started indexing
  final pulumi.Input<String> startedAt;
  /// Status of the indexed data source
  final pulumi.Input<String> status;
  /// Total size of files in data source in bytes
  final pulumi.Input<String> totalBytes;
  /// Total size of indexed files in bytes
  final pulumi.Input<String> totalBytesIndexed;
  /// Total file count in the data source
  final pulumi.Input<String> totalFileCount;

  /// Creates a new [GetGenaiIndexingJobDataSourcesIndexedDataSource].
  /// [completedAt] Timestamp when data source completed indexing
  /// [dataSourceUuid] UUID of the indexed data source
  /// [errorDetails] Detailed error description
  /// [errorMsg] Error message if indexing failed
  /// [failedItemCount] Total count of items that have failed
  /// [indexedFileCount] Total count of files that have been indexed
  /// [indexedItemCount] Total count of items that have been indexed
  /// [removedItemCount] Total count of items that have been removed
  /// [skippedItemCount] Total count of items that have been skipped
  /// [startedAt] Timestamp when data source started indexing
  /// [status] Status of the indexed data source
  /// [totalBytes] Total size of files in data source in bytes
  /// [totalBytesIndexed] Total size of indexed files in bytes
  /// [totalFileCount] Total file count in the data source
  const GetGenaiIndexingJobDataSourcesIndexedDataSource({
    required this.completedAt,
    required this.dataSourceUuid,
    required this.errorDetails,
    required this.errorMsg,
    required this.failedItemCount,
    required this.indexedFileCount,
    required this.indexedItemCount,
    required this.removedItemCount,
    required this.skippedItemCount,
    required this.startedAt,
    required this.status,
    required this.totalBytes,
    required this.totalBytesIndexed,
    required this.totalFileCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'completedAt': completedAt,
      'dataSourceUuid': dataSourceUuid,
      'errorDetails': errorDetails,
      'errorMsg': errorMsg,
      'failedItemCount': failedItemCount,
      'indexedFileCount': indexedFileCount,
      'indexedItemCount': indexedItemCount,
      'removedItemCount': removedItemCount,
      'skippedItemCount': skippedItemCount,
      'startedAt': startedAt,
      'status': status,
      'totalBytes': totalBytes,
      'totalBytesIndexed': totalBytesIndexed,
      'totalFileCount': totalFileCount,
    };
  }

  factory GetGenaiIndexingJobDataSourcesIndexedDataSource.fromMap(Map<String, dynamic> map) {
    return GetGenaiIndexingJobDataSourcesIndexedDataSource(
      completedAt: pulumi.Input.fromValue(map['completedAt'] as String),
      dataSourceUuid: pulumi.Input.fromValue(map['dataSourceUuid'] as String),
      errorDetails: pulumi.Input.fromValue(map['errorDetails'] as String),
      errorMsg: pulumi.Input.fromValue(map['errorMsg'] as String),
      failedItemCount: pulumi.Input.fromValue(map['failedItemCount'] as String),
      indexedFileCount: pulumi.Input.fromValue(map['indexedFileCount'] as String),
      indexedItemCount: pulumi.Input.fromValue(map['indexedItemCount'] as String),
      removedItemCount: pulumi.Input.fromValue(map['removedItemCount'] as String),
      skippedItemCount: pulumi.Input.fromValue(map['skippedItemCount'] as String),
      startedAt: pulumi.Input.fromValue(map['startedAt'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      totalBytes: pulumi.Input.fromValue(map['totalBytes'] as String),
      totalBytesIndexed: pulumi.Input.fromValue(map['totalBytesIndexed'] as String),
      totalFileCount: pulumi.Input.fromValue(map['totalFileCount'] as String),
    );
  }
}

