// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The SAP instance specific configuration data.
class ConfigurationDataResponse {
  /// Provide the CPU value of the server. For example, 16, 32 etc.
  final pulumi.Input<int> cpu;
  /// Provide the CPU clock speed of the server in MHz. This should be a non-zero value. For example, 2100.
  final pulumi.Input<int> cpuInMhz;
  /// Provide the CPU architecture type of the server. For example, Xeon Platinum 8171M, Xeon E5-2673 v3.
  final pulumi.Input<String> cpuType;
  /// The database of this is a server instance. Applicable only if SAP instance type for this server instance is 'DB'.
  final pulumi.Input<String> databaseType;
  /// Provide the HW manufacturer company of the server.  For example, Microsoft Corporation.
  final pulumi.Input<String> hardwareManufacturer;
  /// Specify if the Hardware is a physical server or virtual machine.
  final pulumi.Input<String> model;
  /// Provide the RAM of the server. This should be a non-zero value. For example, 256.
  final pulumi.Input<int> ram;
  /// Provide the SAPS for each server of the SAP system. This should be a non-zero value. For example, 1000.
  final pulumi.Input<int> saps;
  /// Provide the target HANA database size you need. Applicable only if SAP instance type for this server instance is 'DB' and you are migrating an AnyDb database to SAP S/4HANA.
  final pulumi.Input<int> targetHanaRamSizeGB;
  /// Provide the total disk IOPS capacity. Add the disk volume for each individual disk and provide the sum total in this field.
  final pulumi.Input<int> totalDiskIops;
  /// Provide the total disk volume capacity in GB. Add the disk volume for each individual disks and provide the total sum in this field.
  final pulumi.Input<int> totalDiskSizeGB;

  /// Creates a new [ConfigurationDataResponse].
  /// [cpu] Provide the CPU value of the server. For example, 16, 32 etc.
  /// [cpuInMhz] Provide the CPU clock speed of the server in MHz. This should be a non-zero value. For example, 2100.
  /// [cpuType] Provide the CPU architecture type of the server. For example, Xeon Platinum 8171M, Xeon E5-2673 v3.
  /// [databaseType] The database of this is a server instance. Applicable only if SAP instance type for this server instance is 'DB'.
  /// [hardwareManufacturer] Provide the HW manufacturer company of the server.  For example, Microsoft Corporation.
  /// [model] Specify if the Hardware is a physical server or virtual machine.
  /// [ram] Provide the RAM of the server. This should be a non-zero value. For example, 256.
  /// [saps] Provide the SAPS for each server of the SAP system. This should be a non-zero value. For example, 1000.
  /// [targetHanaRamSizeGB] Provide the target HANA database size you need. Applicable only if SAP instance type for this server instance is 'DB' and you are migrating an AnyDb database to SAP S/4HANA.
  /// [totalDiskIops] Provide the total disk IOPS capacity. Add the disk volume for each individual disk and provide the sum total in this field.
  /// [totalDiskSizeGB] Provide the total disk volume capacity in GB. Add the disk volume for each individual disks and provide the total sum in this field.
  const ConfigurationDataResponse({
    required this.cpu,
    required this.cpuInMhz,
    required this.cpuType,
    required this.databaseType,
    required this.hardwareManufacturer,
    required this.model,
    required this.ram,
    required this.saps,
    required this.targetHanaRamSizeGB,
    required this.totalDiskIops,
    required this.totalDiskSizeGB,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': cpu,
      'cpuInMhz': cpuInMhz,
      'cpuType': cpuType,
      'databaseType': databaseType,
      'hardwareManufacturer': hardwareManufacturer,
      'model': model,
      'ram': ram,
      'saps': saps,
      'targetHanaRamSizeGB': targetHanaRamSizeGB,
      'totalDiskIops': totalDiskIops,
      'totalDiskSizeGB': totalDiskSizeGB,
    };
  }

  factory ConfigurationDataResponse.fromMap(Map<String, dynamic> map) {
    return ConfigurationDataResponse(
      cpu: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['cpu'])),
      cpuInMhz: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['cpuInMhz'])),
      cpuType: pulumi.Input.fromValue(map['cpuType'] as String),
      databaseType: pulumi.Input.fromValue(map['databaseType'] as String),
      hardwareManufacturer: pulumi.Input.fromValue(map['hardwareManufacturer'] as String),
      model: pulumi.Input.fromValue(map['model'] as String),
      ram: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['ram'])),
      saps: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['saps'])),
      targetHanaRamSizeGB: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['targetHanaRamSizeGB'])),
      totalDiskIops: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['totalDiskIops'])),
      totalDiskSizeGB: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['totalDiskSizeGB'])),
    );
  }
}
