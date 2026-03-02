// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_hive_options.dart';

/// Input properties used for looking up and filtering Database resources.
class DatabaseState {
  /// The parent catalog.
  final pulumi.Input<String>? catalog;
  /// Output only. The creation time of the database. A timestamp in RFC3339
  /// UTC "Zulu" format, with nanosecond resolution and up to nine fractional
  /// digits. Examples: "2014-10-02T15:01:23Z" and
  /// "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? createTime;
  /// Output only. The deletion time of the database. Only set after the
  /// database is deleted. A timestamp in RFC3339 UTC "Zulu" format, with
  /// nanosecond resolution and up to nine fractional digits. Examples:
  /// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? deleteTime;
  /// Output only. The time when this database is considered expired. Only set
  /// after the database is deleted. A timestamp in RFC3339 UTC "Zulu" format,
  /// with nanosecond resolution and up to nine fractional digits. Examples:
  /// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? expireTime;
  /// Options of a Hive database.
  /// Structure is documented below.
  final pulumi.Input<DatabaseHiveOptions>? hiveOptions;
  /// The name of the database.
  final pulumi.Input<String>? name;
  /// The database type.
  final pulumi.Input<String>? type;
  /// Output only. The last modification time of the database. A timestamp in
  /// RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: "2014-10-02T15:01:23Z" and
  /// "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? updateTime;

  /// Creates a new [DatabaseState].
  /// [catalog] The parent catalog.
  /// [createTime] Output only. The creation time of the database. A timestamp in RFC3339
  /// [deleteTime] Output only. The deletion time of the database. Only set after the
  /// [expireTime] Output only. The time when this database is considered expired. Only set
  /// [hiveOptions] Options of a Hive database.
  /// [name] The name of the database.
  /// [type] The database type.
  /// [updateTime] Output only. The last modification time of the database. A timestamp in
  DatabaseState({
    this.catalog,
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
      'catalog': ?catalog,
      'createTime': ?createTime,
      'deleteTime': ?deleteTime,
      'expireTime': ?expireTime,
      'hiveOptions': ?pulumi.Input.mapOptionalInputValue<DatabaseHiveOptions, Map<String, dynamic>>(hiveOptions, (value) => value.toMap()),
      'name': ?name,
      'type': ?type,
      'updateTime': ?updateTime,
    };
  }

  factory DatabaseState.fromMap(Map<String, dynamic> map) {
    return DatabaseState(
      catalog: map['catalog'] == null ? null : (map['catalog'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      deleteTime: map['deleteTime'] == null ? null : (map['deleteTime'] as String).input(),
      expireTime: map['expireTime'] == null ? null : (map['expireTime'] as String).input(),
      hiveOptions: map['hiveOptions'] == null ? null : (DatabaseHiveOptions.fromMap((map['hiveOptions'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

