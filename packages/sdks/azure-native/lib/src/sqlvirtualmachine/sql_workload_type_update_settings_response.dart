// ignore_for_file: unused_element, unnecessary_cast


/// Set workload type to optimize storage for SQL Server.
class SqlWorkloadTypeUpdateSettingsResponse {
  /// SQL Server workload type.
  final String? sqlWorkloadType;

  /// Creates a new [SqlWorkloadTypeUpdateSettingsResponse].
  /// [sqlWorkloadType] SQL Server workload type.
  SqlWorkloadTypeUpdateSettingsResponse({
    this.sqlWorkloadType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sqlWorkloadType': ?sqlWorkloadType,
    };
  }

  factory SqlWorkloadTypeUpdateSettingsResponse.fromMap(Map<String, dynamic> map) {
    return SqlWorkloadTypeUpdateSettingsResponse(
      sqlWorkloadType: map['sqlWorkloadType'] == null ? null : map['sqlWorkloadType'] as String,
    );
  }
}

