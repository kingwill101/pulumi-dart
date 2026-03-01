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
    pulumi.Output<String>? accessCert,
    pulumi.Output<String>? accessKey,
    pulumi.Output<String>? clusterId,
    pulumi.Output<String>? mysqlAuthPlugin,
    pulumi.Output<String>? name,
    pulumi.Output<String>? password,
    pulumi.Output<String>? role,
    pulumi.Output<List<DatabaseUserSetting>>? settings,
  }) :
      accessCert = pulumi.Input.asOptionalInput<String>(accessCert),
      accessKey = pulumi.Input.asOptionalInput<String>(accessKey),
      clusterId = pulumi.Input.asOptionalInput<String>(clusterId),
      mysqlAuthPlugin = pulumi.Input.asOptionalInput<String>(mysqlAuthPlugin),
      name = pulumi.Input.asOptionalInput<String>(name),
      password = pulumi.Input.asOptionalInput<String>(password),
      role = pulumi.Input.asOptionalInput<String>(role),
      settings = pulumi.Input.asOptionalInput<List<DatabaseUserSetting>>(settings);

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
      accessCert: map['accessCert'] == null ? null : pulumi.Output.create<String>(map['accessCert'] as String),
      accessKey: map['accessKey'] == null ? null : pulumi.Output.create<String>(map['accessKey'] as String),
      clusterId: map['clusterId'] == null ? null : pulumi.Output.create<String>(map['clusterId'] as String),
      mysqlAuthPlugin: map['mysqlAuthPlugin'] == null ? null : pulumi.Output.create<String>(map['mysqlAuthPlugin'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
      settings: map['settings'] == null ? null : pulumi.Output.create<List<DatabaseUserSetting>>(pulumi.Input.decodeList<DatabaseUserSetting>(map['settings'], (value) => DatabaseUserSetting.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

