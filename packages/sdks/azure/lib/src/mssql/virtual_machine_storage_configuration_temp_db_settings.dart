// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualMachineStorageConfigurationTempDbSettings {
  /// The SQL Server default file count. This value defaults to `8`
  final pulumi.Input<int>? dataFileCount;
  /// The SQL Server default file size - This value defaults to `512`
  final pulumi.Input<int>? dataFileGrowthInMb;
  /// The SQL Server default file size - This value defaults to `256`
  final pulumi.Input<int>? dataFileSizeMb;
  /// The SQL Server default path
  final pulumi.Input<String> defaultFilePath;
  /// The SQL Server default file size - This value defaults to `512`
  final pulumi.Input<int>? logFileGrowthMb;
  /// The SQL Server default file size - This value defaults to `256`
  final pulumi.Input<int>? logFileSizeMb;
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
  VirtualMachineStorageConfigurationTempDbSettings({
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
      dataFileCount: map['dataFileCount'] == null ? null : (map['dataFileCount'] as int).input(),
      dataFileGrowthInMb: map['dataFileGrowthInMb'] == null ? null : (map['dataFileGrowthInMb'] as int).input(),
      dataFileSizeMb: map['dataFileSizeMb'] == null ? null : (map['dataFileSizeMb'] as int).input(),
      defaultFilePath: (map['defaultFilePath'] as String).input(),
      logFileGrowthMb: map['logFileGrowthMb'] == null ? null : (map['logFileGrowthMb'] as int).input(),
      logFileSizeMb: map['logFileSizeMb'] == null ? null : (map['logFileSizeMb'] as int).input(),
      luns: ((map['luns'] as List).cast<int>()).input(),
    );
  }
}

