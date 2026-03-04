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
      'settings':
          ?pulumi.Input.mapOptionalInputValue<
            List<DatabaseUserSetting>,
            List<Map<String, dynamic>>
          >(
            settings,
            (value) =>
                pulumi.Input.encodeList<
                  DatabaseUserSetting,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory DatabaseUserState.fromMap(Map<String, dynamic> map) {
    return DatabaseUserState(
      accessCert: (() {
        final guardedValue = map['accessCert'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      accessKey: (() {
        final guardedValue = map['accessKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterId: (() {
        final guardedValue = map['clusterId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mysqlAuthPlugin: (() {
        final guardedValue = map['mysqlAuthPlugin'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      password: (() {
        final guardedValue = map['password'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      role: (() {
        final guardedValue = map['role'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      settings: (() {
        final guardedValue = map['settings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DatabaseUserSetting>(
            guardedValue,
            (value) => DatabaseUserSetting.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
