// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_configuration.dart';
import 'virtual_machine_configuration.dart';

/// Gets or sets the database configuration.
class DatabaseConfiguration {
  /// The database type.
  final pulumi.Input<String>? databaseType;
  /// Gets or sets the disk configuration.
  final pulumi.Input<DiskConfiguration>? diskConfiguration;
  /// The number of database VMs.
  final pulumi.Input<double> instanceCount;
  /// The subnet id.
  final pulumi.Input<String> subnetId;
  /// Gets or sets the virtual machine configuration.
  final pulumi.Input<VirtualMachineConfiguration> virtualMachineConfiguration;

  /// Creates a new [DatabaseConfiguration].
  /// [databaseType] The database type.
  /// [diskConfiguration] Gets or sets the disk configuration.
  /// [instanceCount] The number of database VMs.
  /// [subnetId] The subnet id.
  /// [virtualMachineConfiguration] Gets or sets the virtual machine configuration.
  const DatabaseConfiguration({
    this.databaseType,
    this.diskConfiguration,
    required this.instanceCount,
    required this.subnetId,
    required this.virtualMachineConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseType': ?databaseType,
      'diskConfiguration': ?pulumi.Input.mapOptionalInputValue<DiskConfiguration, Map<String, dynamic>>(diskConfiguration, (value) => value.toMap()),
      'instanceCount': instanceCount,
      'subnetId': subnetId,
      'virtualMachineConfiguration': pulumi.Input.mapInputValue<VirtualMachineConfiguration, Map<String, dynamic>>(virtualMachineConfiguration, (value) => value.toMap()),
    };
  }

  factory DatabaseConfiguration.fromMap(Map<String, dynamic> map) {
    return DatabaseConfiguration(
      databaseType: (() { final guardedValue = map['databaseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskConfiguration: (() { final guardedValue = map['diskConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiskConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceCount: pulumi.Input.fromValue(map['instanceCount'] as double),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
      virtualMachineConfiguration: pulumi.Input.fromValue(VirtualMachineConfiguration.fromMap((map['virtualMachineConfiguration']! as Map).cast<String, dynamic>())),
    );
  }
}

