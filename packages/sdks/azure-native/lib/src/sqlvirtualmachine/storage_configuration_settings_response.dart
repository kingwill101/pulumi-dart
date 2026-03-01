// ignore_for_file: unused_element, unnecessary_cast

import 'sqlstorage_settings_response.dart';
import 'sqltemp_db_settings_response.dart';

/// Storage Configurations for SQL Data, Log and TempDb.
class StorageConfigurationSettingsResponse {
  /// Disk configuration to apply to SQL Server.
  final String? diskConfigurationType;
  /// SQL Server Data Storage Settings.
  final SQLStorageSettingsResponse? sqlDataSettings;
  /// SQL Server Log Storage Settings.
  final SQLStorageSettingsResponse? sqlLogSettings;
  /// SQL Server SystemDb Storage on DataPool if true.
  final bool? sqlSystemDbOnDataDisk;
  /// SQL Server TempDb Storage Settings.
  final SQLTempDbSettingsResponse? sqlTempDbSettings;
  /// Storage workload type.
  final String? storageWorkloadType;

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
      'sqlDataSettings': ?sqlDataSettings == null ? null : sqlDataSettings!.toMap(),
      'sqlLogSettings': ?sqlLogSettings == null ? null : sqlLogSettings!.toMap(),
      'sqlSystemDbOnDataDisk': ?sqlSystemDbOnDataDisk,
      'sqlTempDbSettings': ?sqlTempDbSettings == null ? null : sqlTempDbSettings!.toMap(),
      'storageWorkloadType': ?storageWorkloadType,
    };
  }

  factory StorageConfigurationSettingsResponse.fromMap(Map<String, dynamic> map) {
    return StorageConfigurationSettingsResponse(
      diskConfigurationType: map['diskConfigurationType'] == null ? null : map['diskConfigurationType'] as String,
      sqlDataSettings: map['sqlDataSettings'] == null ? null : SQLStorageSettingsResponse.fromMap((map['sqlDataSettings'] as Map).cast<String, dynamic>()),
      sqlLogSettings: map['sqlLogSettings'] == null ? null : SQLStorageSettingsResponse.fromMap((map['sqlLogSettings'] as Map).cast<String, dynamic>()),
      sqlSystemDbOnDataDisk: map['sqlSystemDbOnDataDisk'] == null ? null : map['sqlSystemDbOnDataDisk'] as bool,
      sqlTempDbSettings: map['sqlTempDbSettings'] == null ? null : SQLTempDbSettingsResponse.fromMap((map['sqlTempDbSettings'] as Map).cast<String, dynamic>()),
      storageWorkloadType: map['storageWorkloadType'] == null ? null : map['storageWorkloadType'] as String,
    );
  }
}

