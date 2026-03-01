// ignore_for_file: unused_element, unnecessary_cast


/// Set disk storage settings for SQL Server.
class SQLStorageSettings {
  /// SQL Server default file path
  final String? defaultFilePath;
  /// Logical Unit Numbers for the disks.
  final List<int>? luns;
  /// Use storage pool to build a drive if true or not provided
  final bool? useStoragePool;

  /// Creates a new [SQLStorageSettings].
  /// [defaultFilePath] SQL Server default file path
  /// [luns] Logical Unit Numbers for the disks.
  /// [useStoragePool] Use storage pool to build a drive if true or not provided
  SQLStorageSettings({
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

  factory SQLStorageSettings.fromMap(Map<String, dynamic> map) {
    return SQLStorageSettings(
      defaultFilePath: map['defaultFilePath'] == null ? null : map['defaultFilePath'] as String,
      luns: map['luns'] == null ? null : (map['luns'] as List).cast<int>(),
      useStoragePool: map['useStoragePool'] == null ? null : map['useStoragePool'] as bool,
    );
  }
}

