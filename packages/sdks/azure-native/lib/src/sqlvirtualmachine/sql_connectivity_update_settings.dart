// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Set the access level and network port settings for SQL Server.
class SqlConnectivityUpdateSettings {
  /// SQL Server connectivity option.
  final pulumi.Input<String>? connectivityType;
  /// SQL Server port.
  final pulumi.Input<int>? port;
  /// SQL Server sysadmin login password.
  final pulumi.Input<String>? sqlAuthUpdatePassword;
  /// SQL Server sysadmin login to create.
  final pulumi.Input<String>? sqlAuthUpdateUserName;

  /// Creates a new [SqlConnectivityUpdateSettings].
  /// [connectivityType] SQL Server connectivity option.
  /// [port] SQL Server port.
  /// [sqlAuthUpdatePassword] SQL Server sysadmin login password.
  /// [sqlAuthUpdateUserName] SQL Server sysadmin login to create.
  SqlConnectivityUpdateSettings({
    this.connectivityType,
    this.port,
    this.sqlAuthUpdatePassword,
    this.sqlAuthUpdateUserName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectivityType': ?connectivityType,
      'port': ?port,
      'sqlAuthUpdatePassword': ?sqlAuthUpdatePassword,
      'sqlAuthUpdateUserName': ?sqlAuthUpdateUserName,
    };
  }

  factory SqlConnectivityUpdateSettings.fromMap(Map<String, dynamic> map) {
    return SqlConnectivityUpdateSettings(
      connectivityType: map['connectivityType'] == null ? null : (map['connectivityType'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
      sqlAuthUpdatePassword: map['sqlAuthUpdatePassword'] == null ? null : (map['sqlAuthUpdatePassword'] as String).input(),
      sqlAuthUpdateUserName: map['sqlAuthUpdateUserName'] == null ? null : (map['sqlAuthUpdateUserName'] as String).input(),
    );
  }
}

