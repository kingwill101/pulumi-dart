// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Set workload type to optimize storage for SQL Server.
class SqlWorkloadTypeUpdateSettingsResponse {
  /// SQL Server workload type.
  final pulumi.Input<String>? sqlWorkloadType;

  /// Creates a new [SqlWorkloadTypeUpdateSettingsResponse].
  /// [sqlWorkloadType] SQL Server workload type.
  const SqlWorkloadTypeUpdateSettingsResponse({
    this.sqlWorkloadType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sqlWorkloadType': ?sqlWorkloadType,
    };
  }

  factory SqlWorkloadTypeUpdateSettingsResponse.fromMap(Map<String, dynamic> map) {
    return SqlWorkloadTypeUpdateSettingsResponse(
      sqlWorkloadType: (() { final guardedValue = map['sqlWorkloadType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
