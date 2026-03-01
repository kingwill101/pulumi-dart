// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_machine_storage_configuration_data_settings.dart';
import 'virtual_machine_storage_configuration_log_settings.dart';
import 'virtual_machine_storage_configuration_temp_db_settings.dart';

class VirtualMachineStorageConfiguration {
  /// A `storage_settings` block as defined below.
  final VirtualMachineStorageConfigurationDataSettings? dataSettings;
  /// The type of disk configuration to apply to the SQL Server. Valid values include `NEW`, `EXTEND`, or `ADD`.
  final String diskType;
  /// A `storage_settings` block as defined below.
  final VirtualMachineStorageConfigurationLogSettings? logSettings;
  /// The type of storage workload. Valid values include `GENERAL`, `OLTP`, or `DW`.
  final String storageWorkloadType;
  /// Specifies whether to set system databases (except tempDb) location to newly created data storage. Possible values are `true` and `false`. Defaults to `false`.
  final bool? systemDbOnDataDiskEnabled;
  /// An `temp_db_settings` block as defined below.
  final VirtualMachineStorageConfigurationTempDbSettings? tempDbSettings;

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
      'dataSettings': ?dataSettings == null ? null : dataSettings!.toMap(),
      'diskType': diskType,
      'logSettings': ?logSettings == null ? null : logSettings!.toMap(),
      'storageWorkloadType': storageWorkloadType,
      'systemDbOnDataDiskEnabled': ?systemDbOnDataDiskEnabled,
      'tempDbSettings': ?tempDbSettings == null ? null : tempDbSettings!.toMap(),
    };
  }

  factory VirtualMachineStorageConfiguration.fromMap(Map<String, dynamic> map) {
    return VirtualMachineStorageConfiguration(
      dataSettings: map['dataSettings'] == null ? null : VirtualMachineStorageConfigurationDataSettings.fromMap((map['dataSettings'] as Map).cast<String, dynamic>()),
      diskType: map['diskType'] as String,
      logSettings: map['logSettings'] == null ? null : VirtualMachineStorageConfigurationLogSettings.fromMap((map['logSettings'] as Map).cast<String, dynamic>()),
      storageWorkloadType: map['storageWorkloadType'] as String,
      systemDbOnDataDiskEnabled: map['systemDbOnDataDiskEnabled'] == null ? null : map['systemDbOnDataDiskEnabled'] as bool,
      tempDbSettings: map['tempDbSettings'] == null ? null : VirtualMachineStorageConfigurationTempDbSettings.fromMap((map['tempDbSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

