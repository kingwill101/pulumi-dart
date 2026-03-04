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
      'sqlDataSettings':
          ?pulumi.Input.mapOptionalInputValue<
            SQLStorageSettingsResponse,
            Map<String, dynamic>
          >(sqlDataSettings, (value) => value.toMap()),
      'sqlLogSettings':
          ?pulumi.Input.mapOptionalInputValue<
            SQLStorageSettingsResponse,
            Map<String, dynamic>
          >(sqlLogSettings, (value) => value.toMap()),
      'sqlSystemDbOnDataDisk': ?sqlSystemDbOnDataDisk,
      'sqlTempDbSettings':
          ?pulumi.Input.mapOptionalInputValue<
            SQLTempDbSettingsResponse,
            Map<String, dynamic>
          >(sqlTempDbSettings, (value) => value.toMap()),
      'storageWorkloadType': ?storageWorkloadType,
    };
  }

  factory StorageConfigurationSettingsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return StorageConfigurationSettingsResponse(
      diskConfigurationType: (() {
        final guardedValue = map['diskConfigurationType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sqlDataSettings: (() {
        final guardedValue = map['sqlDataSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SQLStorageSettingsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sqlLogSettings: (() {
        final guardedValue = map['sqlLogSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SQLStorageSettingsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sqlSystemDbOnDataDisk: (() {
        final guardedValue = map['sqlSystemDbOnDataDisk'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      sqlTempDbSettings: (() {
        final guardedValue = map['sqlTempDbSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SQLTempDbSettingsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      storageWorkloadType: (() {
        final guardedValue = map['storageWorkloadType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
