// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sqlstorage_settings_response.dart';
import 'sqltemp_db_settings_response.dart';

/// Storage Configurations for SQL Data, Log and TempDb.
class StorageConfigurationSettingsResponse {
  /// Disk configuration to apply to SQL Server.
  final pulumi.Input<String>? diskConfigurationType;
  /// SQL Server Data Storage Settings.
  final pulumi.Input<SQLStorageSettingsResponse>? sqlDataSettings;
  /// SQL Server Log Storage Settings.
  final pulumi.Input<SQLStorageSettingsResponse>? sqlLogSettings;
  /// SQL Server SystemDb Storage on DataPool if true.
  final pulumi.Input<bool>? sqlSystemDbOnDataDisk;
  /// SQL Server TempDb Storage Settings.
  final pulumi.Input<SQLTempDbSettingsResponse>? sqlTempDbSettings;
  /// Storage workload type.
  final pulumi.Input<String>? storageWorkloadType;

  /// Creates a new [StorageConfigurationSettingsResponse].
  /// [diskConfigurationType] Disk configuration to apply to SQL Server.
  /// [sqlDataSettings] SQL Server Data Storage Settings.
  /// [sqlLogSettings] SQL Server Log Storage Settings.
  /// [sqlSystemDbOnDataDisk] SQL Server SystemDb Storage on DataPool if true.
  /// [sqlTempDbSettings] SQL Server TempDb Storage Settings.
  /// [storageWorkloadType] Storage workload type.
  StorageConfigurationSettingsResponse({
    this.diskConfigurationType,
    this.sqlDataSettings,
    this.sqlLogSettings,
    this.sqlSystemDbOnDataDisk,
    this.sqlTempDbSettings,
    this.storageWorkloadType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskConfigurationType': ?diskConfigurationType,
      'sqlDataSettings': ?pulumi.Input.mapOptionalInputValue<SQLStorageSettingsResponse, Map<String, dynamic>>(sqlDataSettings, (value) => value.toMap()),
      'sqlLogSettings': ?pulumi.Input.mapOptionalInputValue<SQLStorageSettingsResponse, Map<String, dynamic>>(sqlLogSettings, (value) => value.toMap()),
      'sqlSystemDbOnDataDisk': ?sqlSystemDbOnDataDisk,
      'sqlTempDbSettings': ?pulumi.Input.mapOptionalInputValue<SQLTempDbSettingsResponse, Map<String, dynamic>>(sqlTempDbSettings, (value) => value.toMap()),
      'storageWorkloadType': ?storageWorkloadType,
    };
  }

  factory StorageConfigurationSettingsResponse.fromMap(Map<String, dynamic> map) {
    return StorageConfigurationSettingsResponse(
      diskConfigurationType: map['diskConfigurationType'] == null ? null : (map['diskConfigurationType'] as String).input(),
      sqlDataSettings: map['sqlDataSettings'] == null ? null : (SQLStorageSettingsResponse.fromMap((map['sqlDataSettings'] as Map).cast<String, dynamic>())).input(),
      sqlLogSettings: map['sqlLogSettings'] == null ? null : (SQLStorageSettingsResponse.fromMap((map['sqlLogSettings'] as Map).cast<String, dynamic>())).input(),
      sqlSystemDbOnDataDisk: map['sqlSystemDbOnDataDisk'] == null ? null : (map['sqlSystemDbOnDataDisk'] as bool).input(),
      sqlTempDbSettings: map['sqlTempDbSettings'] == null ? null : (SQLTempDbSettingsResponse.fromMap((map['sqlTempDbSettings'] as Map).cast<String, dynamic>())).input(),
      storageWorkloadType: map['storageWorkloadType'] == null ? null : (map['storageWorkloadType'] as String).input(),
    );
  }
}

