// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_hive_options.dart';

/// Input properties used for looking up and filtering Database resources.
class DatabaseState {
  /// The parent catalog.
  final pulumi.Input<String?>? catalog;
  /// Output only. The creation time of the database. A timestamp in RFC3339
  /// UTC "Zulu" format, with nanosecond resolution and up to nine fractional
  /// digits. Examples: "2014-10-02T15:01:23Z" and
  /// "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String?>? createTime;
  /// Output only. The deletion time of the database. Only set after the
  /// database is deleted. A timestamp in RFC3339 UTC "Zulu" format, with
  /// nanosecond resolution and up to nine fractional digits. Examples:
  /// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String?>? deleteTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Output only. The time when this database is considered expired. Only set
  /// after the database is deleted. A timestamp in RFC3339 UTC "Zulu" format,
  /// with nanosecond resolution and up to nine fractional digits. Examples:
  /// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String?>? expireTime;
  /// Options of a Hive database.
  /// Structure is documented below.
  final pulumi.Input<DatabaseHiveOptions?>? hiveOptions;
  /// The name of the database.
  final pulumi.Input<String?>? name;
  /// The database type.
  final pulumi.Input<String?>? type;
  /// Output only. The last modification time of the database. A timestamp in
  /// RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: "2014-10-02T15:01:23Z" and
  /// "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [DatabaseState].
  /// [catalog] The parent catalog.
  /// [createTime] Output only. The creation time of the database. A timestamp in RFC3339
  /// [deleteTime] Output only. The deletion time of the database. Only set after the
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [expireTime] Output only. The time when this database is considered expired. Only set
  /// [hiveOptions] Options of a Hive database.
  /// [name] The name of the database.
  /// [type] The database type.
  /// [updateTime] Output only. The last modification time of the database. A timestamp in
  const DatabaseState({
    this.catalog,
    this.createTime,
    this.deleteTime,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
      'expireTime': ?expireTime,
      'hiveOptions': ?pulumi.Input.mapOptionalInputValue<DatabaseHiveOptions, Map<String, dynamic>>(hiveOptions, (value) => value.toMap()),
      'name': ?name,
      'type': ?type,
      'updateTime': ?updateTime,
    };
  }

  factory DatabaseState.fromMap(Map<String, dynamic> map) {
    return DatabaseState(
      catalog: (() { final guardedValue = map['catalog']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deleteTime: (() { final guardedValue = map['deleteTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hiveOptions: (() { final guardedValue = map['hiveOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatabaseHiveOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
