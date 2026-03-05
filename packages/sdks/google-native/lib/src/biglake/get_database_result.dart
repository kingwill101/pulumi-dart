// ignore_for_file: unused_element, unnecessary_cast

import 'hive_database_options_response.dart';

/// Result data returned by getDatabase.
class GetDatabaseResult {
  /// The creation time of the database.
  final String createTime;
  /// The deletion time of the database. Only set after the database is deleted.
  final String deleteTime;
  /// The time when this database is considered expired. Only set after the database is deleted.
  final String expireTime;
  /// Options of a Hive database.
  final HiveDatabaseOptionsResponse hiveOptions;
  /// The resource name. Format: projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}/databases/{database_id}
  final String name;
  /// The database type.
  final String type;
  /// The last modification time of the database.
  final String updateTime;

  /// Creates a new [GetDatabaseResult].
  /// [createTime] The creation time of the database.
  /// [deleteTime] The deletion time of the database. Only set after the database is deleted.
  /// [expireTime] The time when this database is considered expired. Only set after the database is deleted.
  /// [hiveOptions] Options of a Hive database.
  /// [name] The resource name. Format: projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}/databases/{database_id}
  /// [type] The database type.
  /// [updateTime] The last modification time of the database.
  GetDatabaseResult({
    required this.createTime,
    required this.deleteTime,
    required this.expireTime,
    required this.hiveOptions,
    required this.name,
    required this.type,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'deleteTime': deleteTime,
      'expireTime': expireTime,
      'hiveOptions': hiveOptions.toMap(),
      'name': name,
      'type': type,
      'updateTime': updateTime,
    };
  }

  factory GetDatabaseResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseResult(
      createTime: map['createTime'] as String,
      deleteTime: map['deleteTime'] as String,
      expireTime: map['expireTime'] as String,
      hiveOptions: HiveDatabaseOptionsResponse.fromMap((map['hiveOptions']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      type: map['type'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

