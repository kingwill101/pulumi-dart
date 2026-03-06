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
  const SqlConnectivityUpdateSettings({
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
      connectivityType: (() { final guardedValue = map['connectivityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sqlAuthUpdatePassword: (() { final guardedValue = map['sqlAuthUpdatePassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sqlAuthUpdateUserName: (() { final guardedValue = map['sqlAuthUpdateUserName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

