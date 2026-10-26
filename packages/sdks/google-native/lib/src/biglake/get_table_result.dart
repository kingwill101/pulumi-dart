// ignore_for_file: unused_element, unnecessary_cast

import 'hive_table_options_response.dart';

/// Result data returned by getTable.
class GetTableResult {
  /// The creation time of the table.
  final String? createTime;
  /// The deletion time of the table. Only set after the table is deleted.
  final String? deleteTime;
  /// The checksum of a table object computed by the server based on the value of other fields. It may be sent on update requests to ensure the client has an up-to-date value before proceeding. It is only checked for update table operations.
  final String? etag;
  /// The time when this table is considered expired. Only set after the table is deleted.
  final String? expireTime;
  /// Options of a Hive table.
  final HiveTableOptionsResponse? hiveOptions;
  /// The resource name. Format: projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}/databases/{database_id}/tables/{table_id}
  final String? name;
  /// The table type.
  final String? type;
  /// The last modification time of the table.
  final String? updateTime;

  /// Creates a new [GetTableResult].
  /// [createTime] The creation time of the table.
  /// [deleteTime] The deletion time of the table. Only set after the table is deleted.
  /// [etag] The checksum of a table object computed by the server based on the value of other fields. It may be sent on update requests to ensure the client has an up-to-date value before proceeding. It is only checked for update table operations.
  /// [expireTime] The time when this table is considered expired. Only set after the table is deleted.
  /// [hiveOptions] Options of a Hive table.
  /// [name] The resource name. Format: projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}/databases/{database_id}/tables/{table_id}
  /// [type] The table type.
  /// [updateTime] The last modification time of the table.
  const GetTableResult({
    this.createTime,
    this.deleteTime,
    this.etag,
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
      'etag': ?etag,
      'expireTime': ?expireTime,
      'hiveOptions': ?hiveOptions?.toMap(),
      'name': ?name,
      'type': ?type,
      'updateTime': ?updateTime,
    };
  }

  factory GetTableResult.fromMap(Map<String, dynamic> map) {
    return GetTableResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deleteTime: (() { final guardedValue = map['deleteTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hiveOptions: (() { final guardedValue = map['hiveOptions']; if (guardedValue == null) return null; return HiveTableOptionsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
