// ignore_for_file: unused_element, unnecessary_cast


/// Restore parameters.
class RestoredLogsResponse {
  /// Search results table async operation id.
  final String azureAsyncOperationId;
  /// The timestamp to end the restore by (UTC).
  final String? endRestoreTime;
  /// The table to restore data from.
  final String? sourceTable;
  /// The timestamp to start the restore from (UTC).
  final String? startRestoreTime;

  /// Creates a new [RestoredLogsResponse].
  /// [azureAsyncOperationId] Search results table async operation id.
  /// [endRestoreTime] The timestamp to end the restore by (UTC).
  /// [sourceTable] The table to restore data from.
  /// [startRestoreTime] The timestamp to start the restore from (UTC).
  RestoredLogsResponse({
    required this.azureAsyncOperationId,
    this.endRestoreTime,
    this.sourceTable,
    this.startRestoreTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureAsyncOperationId': azureAsyncOperationId,
      'endRestoreTime': ?endRestoreTime,
      'sourceTable': ?sourceTable,
      'startRestoreTime': ?startRestoreTime,
    };
  }

  factory RestoredLogsResponse.fromMap(Map<String, dynamic> map) {
    return RestoredLogsResponse(
      azureAsyncOperationId: map['azureAsyncOperationId'] as String,
      endRestoreTime: map['endRestoreTime'] == null ? null : map['endRestoreTime'] as String,
      sourceTable: map['sourceTable'] == null ? null : map['sourceTable'] as String,
      startRestoreTime: map['startRestoreTime'] == null ? null : map['startRestoreTime'] as String,
    );
  }
}

