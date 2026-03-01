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
    pulumi.Output<String>? catalog,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? deleteTime,
    pulumi.Output<String>? expireTime,
    pulumi.Output<DatabaseHiveOptions>? hiveOptions,
    pulumi.Output<String>? name,
    pulumi.Output<String>? type,
    pulumi.Output<String>? updateTime,
  }) :
      catalog = pulumi.Input.asOptionalInput<String>(catalog),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      deleteTime = pulumi.Input.asOptionalInput<String>(deleteTime),
      expireTime = pulumi.Input.asOptionalInput<String>(expireTime),
      hiveOptions = pulumi.Input.asOptionalInput<DatabaseHiveOptions>(hiveOptions),
      name = pulumi.Input.asOptionalInput<String>(name),
      type = pulumi.Input.asOptionalInput<String>(type),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      catalog: map['catalog'] == null ? null : pulumi.Output.create<String>(map['catalog'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      deleteTime: map['deleteTime'] == null ? null : pulumi.Output.create<String>(map['deleteTime'] as String),
      expireTime: map['expireTime'] == null ? null : pulumi.Output.create<String>(map['expireTime'] as String),
      hiveOptions: map['hiveOptions'] == null ? null : pulumi.Output.create<DatabaseHiveOptions>(DatabaseHiveOptions.fromMap((map['hiveOptions'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

