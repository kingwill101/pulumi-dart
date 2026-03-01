// ignore_for_file: unused_element, unnecessary_cast

import 'disk_configuration_response.dart';
import 'virtual_machine_configuration_response.dart';

/// Gets or sets the database configuration.
class DatabaseConfigurationResponse {
  /// The database type.
  final String? databaseType;
  /// Gets or sets the disk configuration.
  final DiskConfigurationResponse? diskConfiguration;
  /// The number of database VMs.
  final double instanceCount;
  /// The subnet id.
  final String subnetId;
  /// Gets or sets the virtual machine configuration.
  final VirtualMachineConfigurationResponse virtualMachineConfiguration;

  /// Creates a new [DatabaseConfigurationResponse].
  /// [databaseType] The database type.
  /// [diskConfiguration] Gets or sets the disk configuration.
  /// [instanceCount] The number of database VMs.
  /// [subnetId] The subnet id.
  /// [virtualMachineConfiguration] Gets or sets the virtual machine configuration.
  DatabaseConfigurationResponse({
    this.databaseType,
    this.diskConfiguration,
    required this.instanceCount,
    required this.subnetId,
    required this.virtualMachineConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseType': ?databaseType,
      'diskConfiguration': ?diskConfiguration == null ? null : diskConfiguration!.toMap(),
      'instanceCount': instanceCount,
      'subnetId': subnetId,
      'virtualMachineConfiguration': virtualMachineConfiguration.toMap(),
    };
  }

  factory DatabaseConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return DatabaseConfigurationResponse(
      databaseType: map['databaseType'] == null ? null : map['databaseType'] as String,
      diskConfiguration: map['diskConfiguration'] == null ? null : DiskConfigurationResponse.fromMap((map['diskConfiguration'] as Map).cast<String, dynamic>()),
      instanceCount: map['instanceCount'] as double,
      subnetId: map['subnetId'] as String,
      virtualMachineConfiguration: VirtualMachineConfigurationResponse.fromMap((map['virtualMachineConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

