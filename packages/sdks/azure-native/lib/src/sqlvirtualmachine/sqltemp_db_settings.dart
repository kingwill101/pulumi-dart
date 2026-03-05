// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Set tempDb storage settings for SQL Server.
class SQLTempDbSettings {
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

  /// Creates a new [SQLTempDbSettings].
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
  SQLTempDbSettings({
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

  factory SQLTempDbSettings.fromMap(Map<String, dynamic> map) {
    return SQLTempDbSettings(
      dataFileCount: (() { final guardedValue = map['dataFileCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      dataFileSize: (() { final guardedValue = map['dataFileSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      dataGrowth: (() { final guardedValue = map['dataGrowth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      defaultFilePath: (() { final guardedValue = map['defaultFilePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logFileSize: (() { final guardedValue = map['logFileSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      logGrowth: (() { final guardedValue = map['logGrowth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      luns: (() { final guardedValue = map['luns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      persistFolder: (() { final guardedValue = map['persistFolder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      persistFolderPath: (() { final guardedValue = map['persistFolderPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useStoragePool: (() { final guardedValue = map['useStoragePool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

