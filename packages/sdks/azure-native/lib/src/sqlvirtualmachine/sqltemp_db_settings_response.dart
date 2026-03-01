// ignore_for_file: unused_element, unnecessary_cast


/// Set tempDb storage settings for SQL Server.
class SQLTempDbSettingsResponse {
  /// SQL Server tempdb data file count
  final int? dataFileCount;
  /// SQL Server tempdb data file size
  final int? dataFileSize;
  /// SQL Server tempdb data file autoGrowth size
  final int? dataGrowth;
  /// SQL Server default file path
  final String? defaultFilePath;
  /// SQL Server tempdb log file size
  final int? logFileSize;
  /// SQL Server tempdb log file autoGrowth size
  final int? logGrowth;
  /// Logical Unit Numbers for the disks.
  final List<int>? luns;
  /// SQL Server tempdb persist folder choice
  final bool? persistFolder;
  /// SQL Server tempdb persist folder location
  final String? persistFolderPath;
  /// Use storage pool to build a drive if true or not provided
  final bool? useStoragePool;

  /// Creates a new [SQLTempDbSettingsResponse].
  /// [dataFileCount] SQL Server tempdb data file count
  /// [dataFileSize] SQL Server tempdb data file size
  /// [dataGrowth] SQL Server tempdb data file autoGrowth size
  /// [defaultFilePath] SQL Server default file path
  /// [logFileSize] SQL Server tempdb log file size
  /// [logGrowth] SQL Server tempdb log file autoGrowth size
  /// [luns] Logical Unit Numbers for the disks.
  /// [persistFolder] SQL Server tempdb persist folder choice
  /// [persistFolderPath] SQL Server tempdb persist folder location
  /// [useStoragePool] Use storage pool to build a drive if true or not provided
  SQLTempDbSettingsResponse({
    this.dataFileCount,
    this.dataFileSize,
    this.dataGrowth,
    this.defaultFilePath,
    this.logFileSize,
    this.logGrowth,
    this.luns,
    this.persistFolder,
    this.persistFolderPath,
    this.useStoragePool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataFileCount': ?dataFileCount,
      'dataFileSize': ?dataFileSize,
      'dataGrowth': ?dataGrowth,
      'defaultFilePath': ?defaultFilePath,
      'logFileSize': ?logFileSize,
      'logGrowth': ?logGrowth,
      'luns': ?luns,
      'persistFolder': ?persistFolder,
      'persistFolderPath': ?persistFolderPath,
      'useStoragePool': ?useStoragePool,
    };
  }

  factory SQLTempDbSettingsResponse.fromMap(Map<String, dynamic> map) {
    return SQLTempDbSettingsResponse(
      dataFileCount: map['dataFileCount'] == null ? null : map['dataFileCount'] as int,
      dataFileSize: map['dataFileSize'] == null ? null : map['dataFileSize'] as int,
      dataGrowth: map['dataGrowth'] == null ? null : map['dataGrowth'] as int,
      defaultFilePath: map['defaultFilePath'] == null ? null : map['defaultFilePath'] as String,
      logFileSize: map['logFileSize'] == null ? null : map['logFileSize'] as int,
      logGrowth: map['logGrowth'] == null ? null : map['logGrowth'] as int,
      luns: map['luns'] == null ? null : (map['luns'] as List).cast<int>(),
      persistFolder: map['persistFolder'] == null ? null : map['persistFolder'] as bool,
      persistFolderPath: map['persistFolderPath'] == null ? null : map['persistFolderPath'] as String,
      useStoragePool: map['useStoragePool'] == null ? null : map['useStoragePool'] as bool,
    );
  }
}

