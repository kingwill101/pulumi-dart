// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Set disk storage settings for SQL Server.
class SQLStorageSettingsResponse {
  /// SQL Server default file path
  final pulumi.Input<String>? defaultFilePath;
  /// Logical Unit Numbers for the disks.
  final pulumi.Input<List<int>>? luns;
  /// Use storage pool to build a drive if true or not provided
  final pulumi.Input<bool>? useStoragePool;

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
      defaultFilePath: (() { final guardedValue = map['defaultFilePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      luns: (() { final guardedValue = map['luns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      useStoragePool: (() { final guardedValue = map['useStoragePool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

