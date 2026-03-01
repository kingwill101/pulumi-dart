// ignore_for_file: unused_element, unnecessary_cast


/// Set disk storage settings for SQL Server.
class SQLStorageSettingsResponse {
  /// SQL Server default file path
  final String? defaultFilePath;
  /// Logical Unit Numbers for the disks.
  final List<int>? luns;
  /// Use storage pool to build a drive if true or not provided
  final bool? useStoragePool;

  /// Creates a new [SQLStorageSettingsResponse].
  /// [defaultFilePath] SQL Server default file path
  /// [luns] Logical Unit Numbers for the disks.
  /// [useStoragePool] Use storage pool to build a drive if true or not provided
  SQLStorageSettingsResponse({
    this.defaultFilePath,
    this.luns,
    this.useStoragePool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultFilePath': ?defaultFilePath,
      'luns': ?luns,
      'useStoragePool': ?useStoragePool,
    };
  }

  factory SQLStorageSettingsResponse.fromMap(Map<String, dynamic> map) {
    return SQLStorageSettingsResponse(
      defaultFilePath: map['defaultFilePath'] == null ? null : map['defaultFilePath'] as String,
      luns: map['luns'] == null ? null : (map['luns'] as List).cast<int>(),
      useStoragePool: map['useStoragePool'] == null ? null : map['useStoragePool'] as bool,
    );
  }
}

