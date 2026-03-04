// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_storage_configuration_data_settings.dart';
import 'virtual_machine_storage_configuration_log_settings.dart';
import 'virtual_machine_storage_configuration_temp_db_settings.dart';

class VirtualMachineStorageConfiguration {
  /// A `storage_settings` block as defined below.
  final pulumi.Input<VirtualMachineStorageConfigurationDataSettings>?
  dataSettings;

  /// The type of disk configuration to apply to the SQL Server. Valid values include `NEW`, `EXTEND`, or `ADD`.
  final pulumi.Input<String> diskType;

  /// A `storage_settings` block as defined below.
  final pulumi.Input<VirtualMachineStorageConfigurationLogSettings>?
  logSettings;

  /// The type of storage workload. Valid values include `GENERAL`, `OLTP`, or `DW`.
  final pulumi.Input<String> storageWorkloadType;

  /// Specifies whether to set system databases (except tempDb) location to newly created data storage. Possible values are `true` and `false`. Defaults to `false`.
  final pulumi.Input<bool>? systemDbOnDataDiskEnabled;

  /// An `temp_db_settings` block as defined below.
  final pulumi.Input<VirtualMachineStorageConfigurationTempDbSettings>?
  tempDbSettings;

  /// Creates a new [VirtualMachineStorageConfiguration].
  /// [dataSettings] A `storage_settings` block as defined below.
  /// [diskType] The type of disk configuration to apply to the SQL Server. Valid values include `NEW`, `EXTEND`, or `ADD`.
  /// [logSettings] A `storage_settings` block as defined below.
  /// [storageWorkloadType] The type of storage workload. Valid values include `GENERAL`, `OLTP`, or `DW`.
  /// [systemDbOnDataDiskEnabled] Specifies whether to set system databases (except tempDb) location to newly created data storage. Possible values are `true` and `false`. Defaults to `false`.
  /// [tempDbSettings] An `temp_db_settings` block as defined below.
  VirtualMachineStorageConfiguration({
    this.dataSettings,
    required this.diskType,
    this.logSettings,
    required this.storageWorkloadType,
    this.systemDbOnDataDiskEnabled,
    this.tempDbSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSettings':
          ?pulumi.Input.mapOptionalInputValue<
            VirtualMachineStorageConfigurationDataSettings,
            Map<String, dynamic>
          >(dataSettings, (value) => value.toMap()),
      'diskType': diskType,
      'logSettings':
          ?pulumi.Input.mapOptionalInputValue<
            VirtualMachineStorageConfigurationLogSettings,
            Map<String, dynamic>
          >(logSettings, (value) => value.toMap()),
      'storageWorkloadType': storageWorkloadType,
      'systemDbOnDataDiskEnabled': ?systemDbOnDataDiskEnabled,
      'tempDbSettings':
          ?pulumi.Input.mapOptionalInputValue<
            VirtualMachineStorageConfigurationTempDbSettings,
            Map<String, dynamic>
          >(tempDbSettings, (value) => value.toMap()),
    };
  }

  factory VirtualMachineStorageConfiguration.fromMap(Map<String, dynamic> map) {
    return VirtualMachineStorageConfiguration(
      dataSettings: (() {
        final guardedValue = map['dataSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VirtualMachineStorageConfigurationDataSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      diskType: pulumi.Input.fromValue(map['diskType'] as String),
      logSettings: (() {
        final guardedValue = map['logSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VirtualMachineStorageConfigurationLogSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      storageWorkloadType: pulumi.Input.fromValue(
        map['storageWorkloadType'] as String,
      ),
      systemDbOnDataDiskEnabled: (() {
        final guardedValue = map['systemDbOnDataDiskEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      tempDbSettings: (() {
        final guardedValue = map['tempDbSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VirtualMachineStorageConfigurationTempDbSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
