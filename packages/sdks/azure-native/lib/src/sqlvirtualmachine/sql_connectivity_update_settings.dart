// ignore_for_file: unused_element, unnecessary_cast


/// Set the access level and network port settings for SQL Server.
class SqlConnectivityUpdateSettings {
  /// SQL Server connectivity option.
  final String? connectivityType;
  /// SQL Server port.
  final int? port;
  /// SQL Server sysadmin login password.
  final String? sqlAuthUpdatePassword;
  /// SQL Server sysadmin login to create.
  final String? sqlAuthUpdateUserName;

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
      connectivityType: map['connectivityType'] == null ? null : map['connectivityType'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      sqlAuthUpdatePassword: map['sqlAuthUpdatePassword'] == null ? null : map['sqlAuthUpdatePassword'] as String,
      sqlAuthUpdateUserName: map['sqlAuthUpdateUserName'] == null ? null : map['sqlAuthUpdateUserName'] as String,
    );
  }
}

