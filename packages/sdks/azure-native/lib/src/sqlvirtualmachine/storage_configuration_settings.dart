// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sqlstorage_settings.dart';
import 'sqltemp_db_settings.dart';

/// Storage Configurations for SQL Data, Log and TempDb.
class StorageConfigurationSettings {
  /// Disk configuration to apply to SQL Server.
  final pulumi.Input<dynamic>? diskConfigurationType;
  /// Enable SQL IaaS Agent storage configuration blade in Azure Portal.
  final pulumi.Input<bool?>? enableStorageConfigBlade;
  /// SQL Server Data Storage Settings.
  final pulumi.Input<SQLStorageSettings?>? sqlDataSettings;
  /// SQL Server Log Storage Settings.
  final pulumi.Input<SQLStorageSettings?>? sqlLogSettings;
  /// SQL Server SystemDb Storage on DataPool if true.
  final pulumi.Input<bool?>? sqlSystemDbOnDataDisk;
  /// SQL Server TempDb Storage Settings.
  final pulumi.Input<SQLTempDbSettings?>? sqlTempDbSettings;
  /// Storage workload type.
  final pulumi.Input<dynamic>? storageWorkloadType;

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
    pulumi.Input<bool?>? enableStorageConfigBlade,
    this.sqlDataSettings,
    this.sqlLogSettings,
    this.sqlSystemDbOnDataDisk,
    this.sqlTempDbSettings,
    this.storageWorkloadType,
  }) : enableStorageConfigBlade = enableStorageConfigBlade ?? pulumi.Input.fromValue(false);

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
      diskConfigurationType: (() { final guardedValue = map['diskConfigurationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      enableStorageConfigBlade: (() { final guardedValue = map['enableStorageConfigBlade']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sqlDataSettings: (() { final guardedValue = map['sqlDataSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SQLStorageSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sqlLogSettings: (() { final guardedValue = map['sqlLogSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SQLStorageSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sqlSystemDbOnDataDisk: (() { final guardedValue = map['sqlSystemDbOnDataDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sqlTempDbSettings: (() { final guardedValue = map['sqlTempDbSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SQLTempDbSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageWorkloadType: (() { final guardedValue = map['storageWorkloadType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
