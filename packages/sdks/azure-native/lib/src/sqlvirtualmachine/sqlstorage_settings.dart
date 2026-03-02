// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Set disk storage settings for SQL Server.
class SQLStorageSettings {
  /// SQL Server default file path
  final pulumi.Input<String>? defaultFilePath;
  /// Logical Unit Numbers for the disks.
  final pulumi.Input<List<int>>? luns;
  /// Use storage pool to build a drive if true or not provided
  final pulumi.Input<bool>? useStoragePool;

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
      defaultFilePath: map['defaultFilePath'] == null ? null : (map['defaultFilePath']! as String).input(),
      luns: map['luns'] == null ? null : ((map['luns']! as List).cast<int>()).input(),
      useStoragePool: map['useStoragePool'] == null ? null : (map['useStoragePool']! as bool).input(),
    );
  }
}

