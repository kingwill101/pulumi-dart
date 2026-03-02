// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sqlstorage_settings.dart';
import 'sqltemp_db_settings.dart';

/// Storage Configurations for SQL Data, Log and TempDb.
class StorageConfigurationSettings {
  /// Disk configuration to apply to SQL Server.
  final pulumi.Input<String>? diskConfigurationType;
  /// Enable SQL IaaS Agent storage configuration blade in Azure Portal.
  final pulumi.Input<bool>? enableStorageConfigBlade;
  /// SQL Server Data Storage Settings.
  final pulumi.Input<SQLStorageSettings>? sqlDataSettings;
  /// SQL Server Log Storage Settings.
  final pulumi.Input<SQLStorageSettings>? sqlLogSettings;
  /// SQL Server SystemDb Storage on DataPool if true.
  final pulumi.Input<bool>? sqlSystemDbOnDataDisk;
  /// SQL Server TempDb Storage Settings.
  final pulumi.Input<SQLTempDbSettings>? sqlTempDbSettings;
  /// Storage workload type.
  final pulumi.Input<String>? storageWorkloadType;

  /// Creates a new [StorageConfigurationSettings].
  /// [diskConfigurationType] Disk configuration to apply to SQL Server.
  /// [enableStorageConfigBlade] Enable SQL IaaS Agent storage configuration blade in Azure Portal.
  /// [sqlDataSettings] SQL Server Data Storage Settings.
  /// [sqlLogSettings] SQL Server Log Storage Settings.
  /// [sqlSystemDbOnDataDisk] SQL Server SystemDb Storage on DataPool if true.
  /// [sqlTempDbSettings] SQL Server TempDb Storage Settings.
  /// [storageWorkloadType] Storage workload type.
  StorageConfigurationSettings({
    this.diskConfigurationType,
    this.enableStorageConfigBlade,
    this.sqlDataSettings,
    this.sqlLogSettings,
    this.sqlSystemDbOnDataDisk,
    this.sqlTempDbSettings,
    this.storageWorkloadType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskConfigurationType': ?diskConfigurationType,
      'enableStorageConfigBlade': ?enableStorageConfigBlade,
      'sqlDataSettings': ?pulumi.Input.mapOptionalInputValue<SQLStorageSettings, Map<String, dynamic>>(sqlDataSettings, (value) => value.toMap()),
      'sqlLogSettings': ?pulumi.Input.mapOptionalInputValue<SQLStorageSettings, Map<String, dynamic>>(sqlLogSettings, (value) => value.toMap()),
      'sqlSystemDbOnDataDisk': ?sqlSystemDbOnDataDisk,
      'sqlTempDbSettings': ?pulumi.Input.mapOptionalInputValue<SQLTempDbSettings, Map<String, dynamic>>(sqlTempDbSettings, (value) => value.toMap()),
      'storageWorkloadType': ?storageWorkloadType,
    };
  }

  factory StorageConfigurationSettings.fromMap(Map<String, dynamic> map) {
    return StorageConfigurationSettings(
      diskConfigurationType: map['diskConfigurationType'] == null ? null : (map['diskConfigurationType']! as String).input(),
      enableStorageConfigBlade: map['enableStorageConfigBlade'] == null ? null : (map['enableStorageConfigBlade']! as bool).input(),
      sqlDataSettings: map['sqlDataSettings'] == null ? null : (SQLStorageSettings.fromMap((map['sqlDataSettings']! as Map).cast<String, dynamic>())).input(),
      sqlLogSettings: map['sqlLogSettings'] == null ? null : (SQLStorageSettings.fromMap((map['sqlLogSettings']! as Map).cast<String, dynamic>())).input(),
      sqlSystemDbOnDataDisk: map['sqlSystemDbOnDataDisk'] == null ? null : (map['sqlSystemDbOnDataDisk']! as bool).input(),
      sqlTempDbSettings: map['sqlTempDbSettings'] == null ? null : (SQLTempDbSettings.fromMap((map['sqlTempDbSettings']! as Map).cast<String, dynamic>())).input(),
      storageWorkloadType: map['storageWorkloadType'] == null ? null : (map['storageWorkloadType']! as String).input(),
    );
  }
}

