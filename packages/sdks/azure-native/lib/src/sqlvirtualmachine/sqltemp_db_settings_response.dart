// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Set tempDb storage settings for SQL Server.
class SQLTempDbSettingsResponse {
  /// SQL Server tempdb data file count
  final pulumi.Input<int>? dataFileCount;
  /// SQL Server tempdb data file size
  final pulumi.Input<int>? dataFileSize;
  /// SQL Server tempdb data file autoGrowth size
  final pulumi.Input<int>? dataGrowth;
  /// SQL Server default file path
  final pulumi.Input<String>? defaultFilePath;
  /// SQL Server tempdb log file size
  final pulumi.Input<int>? logFileSize;
  /// SQL Server tempdb log file autoGrowth size
  final pulumi.Input<int>? logGrowth;
  /// Logical Unit Numbers for the disks.
  final pulumi.Input<List<int>>? luns;
  /// SQL Server tempdb persist folder choice
  final pulumi.Input<bool>? persistFolder;
  /// SQL Server tempdb persist folder location
  final pulumi.Input<String>? persistFolderPath;
  /// Use storage pool to build a drive if true or not provided
  final pulumi.Input<bool>? useStoragePool;

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
      dataFileCount: map['dataFileCount'] == null ? null : (map['dataFileCount'] as int).input(),
      dataFileSize: map['dataFileSize'] == null ? null : (map['dataFileSize'] as int).input(),
      dataGrowth: map['dataGrowth'] == null ? null : (map['dataGrowth'] as int).input(),
      defaultFilePath: map['defaultFilePath'] == null ? null : (map['defaultFilePath'] as String).input(),
      logFileSize: map['logFileSize'] == null ? null : (map['logFileSize'] as int).input(),
      logGrowth: map['logGrowth'] == null ? null : (map['logGrowth'] as int).input(),
      luns: map['luns'] == null ? null : ((map['luns'] as List).cast<int>()).input(),
      persistFolder: map['persistFolder'] == null ? null : (map['persistFolder'] as bool).input(),
      persistFolderPath: map['persistFolderPath'] == null ? null : (map['persistFolderPath'] as String).input(),
      useStoragePool: map['useStoragePool'] == null ? null : (map['useStoragePool'] as bool).input(),
    );
  }
}

