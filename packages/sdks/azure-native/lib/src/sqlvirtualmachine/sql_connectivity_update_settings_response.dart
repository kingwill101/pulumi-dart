// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Set the access level and network port settings for SQL Server.
class SqlConnectivityUpdateSettingsResponse {
  /// SQL Server connectivity option.
  final pulumi.Input<String>? connectivityType;
  /// SQL Server port.
  final pulumi.Input<int>? port;

  /// Creates a new [SqlConnectivityUpdateSettingsResponse].
  /// [connectivityType] SQL Server connectivity option.
  /// [port] SQL Server port.
  SqlConnectivityUpdateSettingsResponse({
    this.connectivityType,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectivityType': ?connectivityType,
      'port': ?port,
    };
  }

  factory SqlConnectivityUpdateSettingsResponse.fromMap(Map<String, dynamic> map) {
    return SqlConnectivityUpdateSettingsResponse(
      connectivityType: map['connectivityType'] == null ? null : (map['connectivityType']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as int).input(),
    );
  }
}

