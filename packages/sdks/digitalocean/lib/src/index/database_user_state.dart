// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_user_setting.dart';

/// Input properties used for looking up and filtering DatabaseUser resources.
class DatabaseUserState {
  /// Access certificate for TLS client authentication. (Kafka only)
  final pulumi.Input<String>? accessCert;
  /// Access key for TLS client authentication. (Kafka only)
  final pulumi.Input<String>? accessKey;
  /// The ID of the original source database cluster.
  final pulumi.Input<String>? clusterId;
  /// The authentication method to use for connections to the MySQL user account. The valid values are `mysql_native_password` or `caching_sha2_password` (this is the default).
  final pulumi.Input<String>? mysqlAuthPlugin;
  /// The name for the database user.
  final pulumi.Input<String>? name;
  /// Password for the database user.
  final pulumi.Input<String>? password;
  /// Role for the database user. The value will be either "primary" or "normal".
  final pulumi.Input<String>? role;
  /// Contains optional settings for the user.
  /// The `settings` block is documented below.
  final pulumi.Input<List<DatabaseUserSetting>>? settings;

  /// Creates a new [DatabaseUserState].
  /// [accessCert] Access certificate for TLS client authentication. (Kafka only)
  /// [accessKey] Access key for TLS client authentication. (Kafka only)
  /// [clusterId] The ID of the original source database cluster.
  /// [mysqlAuthPlugin] The authentication method to use for connections to the MySQL user account. The valid values are `mysql_native_password` or `caching_sha2_password` (this is the default).
  /// [name] The name for the database user.
  /// [password] Password for the database user.
  /// [role] Role for the database user. The value will be either "primary" or "normal".
  /// [settings] Contains optional settings for the user.
  DatabaseUserState({
    this.accessCert,
    this.accessKey,
    this.clusterId,
    this.mysqlAuthPlugin,
    this.name,
    this.password,
    this.role,
    this.settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessCert': ?accessCert,
      'accessKey': ?accessKey,
      'clusterId': ?clusterId,
      'mysqlAuthPlugin': ?mysqlAuthPlugin,
      'name': ?name,
      'password': ?password,
      'role': ?role,
      'settings': ?pulumi.Input.mapOptionalInputValue<List<DatabaseUserSetting>, List<Map<String, dynamic>>>(settings, (value) => pulumi.Input.encodeList<DatabaseUserSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DatabaseUserState.fromMap(Map<String, dynamic> map) {
    return DatabaseUserState(
      accessCert: map['accessCert'] == null ? null : (map['accessCert']! as String).input(),
      accessKey: map['accessKey'] == null ? null : (map['accessKey']! as String).input(),
      clusterId: map['clusterId'] == null ? null : (map['clusterId']! as String).input(),
      mysqlAuthPlugin: map['mysqlAuthPlugin'] == null ? null : (map['mysqlAuthPlugin']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      password: map['password'] == null ? null : (map['password']! as String).input(),
      role: map['role'] == null ? null : (map['role']! as String).input(),
      settings: map['settings'] == null ? null : (pulumi.Input.decodeList<DatabaseUserSetting>(map['settings']!, (value) => DatabaseUserSetting.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

