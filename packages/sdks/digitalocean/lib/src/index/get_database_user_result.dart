// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_user_setting.dart';

/// Result data returned by getDatabaseUser.
class GetDatabaseUserResult {
  /// Access certificate for TLS client authentication. (Kafka only)
  final String accessCert;
  /// Access key for TLS client authentication. (Kafka only)
  final String accessKey;
  final String clusterId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The authentication method of the MySQL user. The value will be `mysql_native_password` or `caching_sha2_password`.
  final String mysqlAuthPlugin;
  final String name;
  /// The password of the database user. This will not be set for MongoDB users.
  final String password;
  /// The role of the database user. The value will be either `primary` or `normal`.
  final String role;
  final List<GetDatabaseUserSetting> settings;

  /// Creates a new [GetDatabaseUserResult].
  /// [accessCert] Access certificate for TLS client authentication. (Kafka only)
  /// [accessKey] Access key for TLS client authentication. (Kafka only)
  /// [clusterId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [mysqlAuthPlugin] The authentication method of the MySQL user. The value will be `mysql_native_password` or `caching_sha2_password`.
  /// [name] Required.
  /// [password] The password of the database user. This will not be set for MongoDB users.
  /// [role] The role of the database user. The value will be either `primary` or `normal`.
  /// [settings] Required.
  GetDatabaseUserResult({
    required this.accessCert,
    required this.accessKey,
    required this.clusterId,
    required this.id,
    required this.mysqlAuthPlugin,
    required this.name,
    required this.password,
    required this.role,
    required this.settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessCert': accessCert,
      'accessKey': accessKey,
      'clusterId': clusterId,
      'id': id,
      'mysqlAuthPlugin': mysqlAuthPlugin,
      'name': name,
      'password': password,
      'role': role,
      'settings': pulumi.Input.encodeList<GetDatabaseUserSetting, Map<String, dynamic>>(settings, (value) => value.toMap()),
    };
  }

  factory GetDatabaseUserResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseUserResult(
      accessCert: map['accessCert'] as String,
      accessKey: map['accessKey'] as String,
      clusterId: map['clusterId'] as String,
      id: map['id'] as String,
      mysqlAuthPlugin: map['mysqlAuthPlugin'] as String,
      name: map['name'] as String,
      password: map['password'] as String,
      role: map['role'] as String,
      settings: pulumi.Input.decodeList<GetDatabaseUserSetting>(map['settings']!, (value) => GetDatabaseUserSetting.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

