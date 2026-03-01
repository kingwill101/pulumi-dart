// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_hive_options.dart';

/// Input properties used for looking up and filtering Table resources.
class TableState {
  /// Output only. The creation time of the table. A timestamp in RFC3339 UTC
  /// "Zulu" format, with nanosecond resolution and up to nine fractional
  /// digits. Examples: "2014-10-02T15:01:23Z" and
  /// "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? createTime;
  /// The id of the parent database.
  final pulumi.Input<String>? database;
  /// Output only. The deletion time of the table. Only set after the
  /// table is deleted. A timestamp in RFC3339 UTC "Zulu" format, with
  /// nanosecond resolution and up to nine fractional digits. Examples:
  /// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? deleteTime;
  /// The checksum of a table object computed by the server based on the value
  /// of other fields. It may be sent on update requests to ensure the client
  /// has an up-to-date value before proceeding. It is only checked for update
  /// table operations.
  final pulumi.Input<String>? etag;
  /// Output only. The time when this table is considered expired. Only set
  /// after the table is deleted. A timestamp in RFC3339 UTC "Zulu" format,
  /// with nanosecond resolution and up to nine fractional digits. Examples:
  /// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? expireTime;
  /// Options of a Hive table.
  /// Structure is documented below.
  final pulumi.Input<TableHiveOptions>? hiveOptions;
  /// Output only. The name of the Table. Format:
  /// projects/{project_id_or_number}/locations/{locationId}/catalogs/{catalogId}/databases/{databaseId}/tables/{tableId}
  final pulumi.Input<String>? name;
  /// The database type.
  /// Possible values are: `HIVE`.
  final pulumi.Input<String>? type;
  /// Output only. The last modification time of the table. A timestamp in
  /// RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: "2014-10-02T15:01:23Z" and
  /// "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? updateTime;

  /// Creates a new [TableState].
  /// [createTime] Output only. The creation time of the table. A timestamp in RFC3339 UTC
  /// [database] The id of the parent database.
  /// [deleteTime] Output only. The deletion time of the table. Only set after the
  /// [etag] The checksum of a table object computed by the server based on the value
  /// [expireTime] Output only. The time when this table is considered expired. Only set
  /// [hiveOptions] Options of a Hive table.
  /// [name] Output only. The name of the Table. Format:
  /// [type] The database type.
  /// [updateTime] Output only. The last modification time of the table. A timestamp in
  TableState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? database,
    pulumi.Output<String>? deleteTime,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? expireTime,
    pulumi.Output<TableHiveOptions>? hiveOptions,
    pulumi.Output<String>? name,
    pulumi.Output<String>? type,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      database = pulumi.Input.asOptionalInput<String>(database),
      deleteTime = pulumi.Input.asOptionalInput<String>(deleteTime),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      expireTime = pulumi.Input.asOptionalInput<String>(expireTime),
      hiveOptions = pulumi.Input.asOptionalInput<TableHiveOptions>(hiveOptions),
      name = pulumi.Input.asOptionalInput<String>(name),
      type = pulumi.Input.asOptionalInput<String>(type),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'database': ?database,
      'deleteTime': ?deleteTime,
      'etag': ?etag,
      'expireTime': ?expireTime,
      'hiveOptions': ?pulumi.Input.mapOptionalInputValue<TableHiveOptions, Map<String, dynamic>>(hiveOptions, (value) => value.toMap()),
      'name': ?name,
      'type': ?type,
      'updateTime': ?updateTime,
    };
  }

  factory TableState.fromMap(Map<String, dynamic> map) {
    return TableState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      database: map['database'] == null ? null : pulumi.Output.create<String>(map['database'] as String),
      deleteTime: map['deleteTime'] == null ? null : pulumi.Output.create<String>(map['deleteTime'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      expireTime: map['expireTime'] == null ? null : pulumi.Output.create<String>(map['expireTime'] as String),
      hiveOptions: map['hiveOptions'] == null ? null : pulumi.Output.create<TableHiveOptions>(TableHiveOptions.fromMap((map['hiveOptions'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

