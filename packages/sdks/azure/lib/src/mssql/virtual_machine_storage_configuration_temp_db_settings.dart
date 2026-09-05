// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualMachineStorageConfigurationTempDbSettings {
  /// The SQL Server default file count. This value defaults to `8`
  final pulumi.Input<int?>? dataFileCount;
  /// The SQL Server default file size - This value defaults to `512`
  final pulumi.Input<int?>? dataFileGrowthInMb;
  /// The SQL Server default file size - This value defaults to `256`
  final pulumi.Input<int?>? dataFileSizeMb;
  /// The SQL Server default path
  final pulumi.Input<String> defaultFilePath;
  /// The SQL Server default file size - This value defaults to `512`
  final pulumi.Input<int?>? logFileGrowthMb;
  /// The SQL Server default file size - This value defaults to `256`
  final pulumi.Input<int?>? logFileSizeMb;
  /// A list of Logical Unit Numbers for the disks.
  final pulumi.Input<List<int>> luns;

  /// Creates a new [VirtualMachineStorageConfigurationTempDbSettings].
  /// [dataFileCount] The SQL Server default file count. This value defaults to `8`
  /// [dataFileGrowthInMb] The SQL Server default file size - This value defaults to `512`
  /// [dataFileSizeMb] The SQL Server default file size - This value defaults to `256`
  /// [defaultFilePath] The SQL Server default path
  /// [logFileGrowthMb] The SQL Server default file size - This value defaults to `512`
  /// [logFileSizeMb] The SQL Server default file size - This value defaults to `256`
  /// [luns] A list of Logical Unit Numbers for the disks.
  const VirtualMachineStorageConfigurationTempDbSettings({
    this.dataFileCount,
    this.dataFileGrowthInMb,
    this.dataFileSizeMb,
    required this.defaultFilePath,
    this.logFileGrowthMb,
    this.logFileSizeMb,
    required this.luns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataFileCount': ?dataFileCount,
      'dataFileGrowthInMb': ?dataFileGrowthInMb,
      'dataFileSizeMb': ?dataFileSizeMb,
      'defaultFilePath': defaultFilePath,
      'logFileGrowthMb': ?logFileGrowthMb,
      'logFileSizeMb': ?logFileSizeMb,
      'luns': luns,
    };
  }

  factory VirtualMachineStorageConfigurationTempDbSettings.fromMap(Map<String, dynamic> map) {
    return VirtualMachineStorageConfigurationTempDbSettings(
      dataFileCount: (() { final guardedValue = map['dataFileCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      dataFileGrowthInMb: (() { final guardedValue = map['dataFileGrowthInMb']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      dataFileSizeMb: (() { final guardedValue = map['dataFileSizeMb']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      defaultFilePath: pulumi.Input.fromValue(map['defaultFilePath'] as String),
      logFileGrowthMb: (() { final guardedValue = map['logFileGrowthMb']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      logFileSizeMb: (() { final guardedValue = map['logFileSizeMb']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      luns: pulumi.Input.fromValue((map['luns'] as List).cast<int>()),
    );
  }
}
