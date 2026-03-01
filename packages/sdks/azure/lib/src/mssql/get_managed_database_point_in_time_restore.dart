// ignore_for_file: unused_element, unnecessary_cast


class GetManagedDatabasePointInTimeRestore {
  /// The point in time for the restore from `source_database_id`.
  final String restorePointInTime;
  /// The source database ID that is used to restore from.
  final String sourceDatabaseId;

  /// Creates a new [GetManagedDatabasePointInTimeRestore].
  /// [restorePointInTime] The point in time for the restore from `source_database_id`.
  /// [sourceDatabaseId] The source database ID that is used to restore from.
  GetManagedDatabasePointInTimeRestore({
    required this.restorePointInTime,
    required this.sourceDatabaseId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'restorePointInTime': restorePointInTime,
      'sourceDatabaseId': sourceDatabaseId,
    };
  }

  factory GetManagedDatabasePointInTimeRestore.fromMap(Map<String, dynamic> map) {
    return GetManagedDatabasePointInTimeRestore(
      restorePointInTime: map['restorePointInTime'] as String,
      sourceDatabaseId: map['sourceDatabaseId'] as String,
    );
  }
}

