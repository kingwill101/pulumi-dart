// ignore_for_file: unused_element, unnecessary_cast

import 'hive_database_options_response.dart';

/// Result data returned by getDatabase.
class GetDatabaseResult {
  /// The creation time of the database.
  final String? createTime;
  /// The deletion time of the database. Only set after the database is deleted.
  final String? deleteTime;
  /// The time when this database is considered expired. Only set after the database is deleted.
  final String? expireTime;
  /// Options of a Hive database.
  final HiveDatabaseOptionsResponse? hiveOptions;
  /// The resource name. Format: projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}/databases/{database_id}
  final String? name;
  /// The database type.
  final String? type;
  /// The last modification time of the database.
  final String? updateTime;

  /// Creates a new [GetDatabaseResult].
  /// [createTime] The creation time of the database.
  /// [deleteTime] The deletion time of the database. Only set after the database is deleted.
  /// [expireTime] The time when this database is considered expired. Only set after the database is deleted.
  /// [hiveOptions] Options of a Hive database.
  /// [name] The resource name. Format: projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}/databases/{database_id}
  /// [type] The database type.
  /// [updateTime] The last modification time of the database.
  const GetDatabaseResult({
    this.createTime,
    this.deleteTime,
    this.expireTime,
    this.hiveOptions,
    this.name,
    this.type,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deleteTime': ?deleteTime,
      'expireTime': ?expireTime,
      'hiveOptions': ?hiveOptions?.toMap(),
      'name': ?name,
      'type': ?type,
      'updateTime': ?updateTime,
    };
  }

  factory GetDatabaseResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deleteTime: (() { final guardedValue = map['deleteTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hiveOptions: (() { final guardedValue = map['hiveOptions']; if (guardedValue == null) return null; return HiveDatabaseOptionsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
