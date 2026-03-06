// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedDatabasePointInTimeRestore {
  /// The point in time for the restore from `source_database_id`. Changing this forces a new resource to be created.
  final pulumi.Input<String> restorePointInTime;
  /// The source database id that will be used to restore from. Changing this forces a new resource to be created.
  final pulumi.Input<String> sourceDatabaseId;

  /// Creates a new [ManagedDatabasePointInTimeRestore].
  /// [restorePointInTime] The point in time for the restore from `source_database_id`. Changing this forces a new resource to be created.
  /// [sourceDatabaseId] The source database id that will be used to restore from. Changing this forces a new resource to be created.
  const ManagedDatabasePointInTimeRestore({
    required this.restorePointInTime,
    required this.sourceDatabaseId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'restorePointInTime': restorePointInTime,
      'sourceDatabaseId': sourceDatabaseId,
    };
  }

  factory ManagedDatabasePointInTimeRestore.fromMap(Map<String, dynamic> map) {
    return ManagedDatabasePointInTimeRestore(
      restorePointInTime: pulumi.Input.fromValue(map['restorePointInTime'] as String),
      sourceDatabaseId: pulumi.Input.fromValue(map['sourceDatabaseId'] as String),
    );
  }
}

