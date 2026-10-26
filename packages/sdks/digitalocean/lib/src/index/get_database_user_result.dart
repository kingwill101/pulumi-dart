// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_user_setting.dart';

/// Result data returned by getDatabaseUser.
class GetDatabaseUserResult {
  /// Access certificate for TLS client authentication. (Kafka only)
  final String? accessCert;
  /// Access key for TLS client authentication. (Kafka only)
  final String? accessKey;
  final String? clusterId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The authentication method of the MySQL user. The value will be `mysqlNativePassword` or `cachingSha2Password`.
  final String? mysqlAuthPlugin;
  final String? name;
  /// The password of the database user. This will not be set for MongoDB users.
  final String? password;
  /// The role of the database user. The value will be either `primary` or `normal`.
  final String? role;
  final List<GetDatabaseUserSetting>? settings;

  /// Creates a new [GetDatabaseUserResult].
  /// [accessCert] Access certificate for TLS client authentication. (Kafka only)
  /// [accessKey] Access key for TLS client authentication. (Kafka only)
  /// [clusterId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [mysqlAuthPlugin] The authentication method of the MySQL user. The value will be `mysqlNativePassword` or `cachingSha2Password`.
  /// [name] Optional.
  /// [password] The password of the database user. This will not be set for MongoDB users.
  /// [role] The role of the database user. The value will be either `primary` or `normal`.
  /// [settings] Optional.
  const GetDatabaseUserResult({
    this.accessCert,
    this.accessKey,
    this.clusterId,
    this.id,
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
      'id': ?id,
      'mysqlAuthPlugin': ?mysqlAuthPlugin,
      'name': ?name,
      'password': ?password,
      'role': ?role,
      'settings': ?(() { final guardedValue = settings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDatabaseUserSetting, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetDatabaseUserResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseUserResult(
      accessCert: (() { final guardedValue = map['accessCert']; if (guardedValue == null) return null; return guardedValue as String; })(),
      accessKey: (() { final guardedValue = map['accessKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mysqlAuthPlugin: (() { final guardedValue = map['mysqlAuthPlugin']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return guardedValue as String; })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return guardedValue as String; })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDatabaseUserSetting>(guardedValue, (value) => GetDatabaseUserSetting.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
