// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Set workload type to optimize storage for SQL Server.
class SqlWorkloadTypeUpdateSettings {
  /// SQL Server workload type.
  final pulumi.Input<String>? sqlWorkloadType;

  /// Creates a new [SqlWorkloadTypeUpdateSettings].
  /// [sqlWorkloadType] SQL Server workload type.
  SqlWorkloadTypeUpdateSettings({this.sqlWorkloadType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'sqlWorkloadType': ?sqlWorkloadType};
  }

  factory SqlWorkloadTypeUpdateSettings.fromMap(Map<String, dynamic> map) {
    return SqlWorkloadTypeUpdateSettings(
      sqlWorkloadType: (() {
        final guardedValue = map['sqlWorkloadType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
