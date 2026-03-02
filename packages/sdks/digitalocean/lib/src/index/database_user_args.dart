// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_user_setting.dart';

/// {@template pulumi_index_database_user_database_user_args_doc}
/// The set of arguments for DatabaseUser.
/// {@endtemplate}
/// {@macro pulumi_index_database_user_database_user_args_doc}
class DatabaseUserArgs {
  /// The ID of the original source database cluster.
  final pulumi.Input<String> clusterId;
  /// The authentication method to use for connections to the MySQL user account. The valid values are `mysql_native_password` or `caching_sha2_password` (this is the default).
  final pulumi.Input<String>? mysqlAuthPlugin;
  /// The name for the database user.
  final pulumi.Input<String>? name;
  /// Contains optional settings for the user.
  /// The `settings` block is documented below.
  final pulumi.Input<List<DatabaseUserSetting>>? settings;

  /// Creates a new [DatabaseUserArgs].
  /// [clusterId] The ID of the original source database cluster.
  /// [mysqlAuthPlugin] The authentication method to use for connections to the MySQL user account. The valid values are `mysql_native_password` or `caching_sha2_password` (this is the default).
  /// [name] The name for the database user.
  /// [settings] Contains optional settings for the user.
  DatabaseUserArgs({
    required this.clusterId,
    this.mysqlAuthPlugin,
    this.name,
    this.settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'mysqlAuthPlugin': ?mysqlAuthPlugin,
      'name': ?name,
      'settings': ?pulumi.Input.mapOptionalInputValue<List<DatabaseUserSetting>, List<Map<String, dynamic>>>(settings, (value) => pulumi.Input.encodeList<DatabaseUserSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DatabaseUserArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseUserArgs(
      clusterId: (map['clusterId'] as String).input(),
      mysqlAuthPlugin: map['mysqlAuthPlugin'] == null ? null : (map['mysqlAuthPlugin']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      settings: map['settings'] == null ? null : (pulumi.Input.decodeList<DatabaseUserSetting>(map['settings']!, (value) => DatabaseUserSetting.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

