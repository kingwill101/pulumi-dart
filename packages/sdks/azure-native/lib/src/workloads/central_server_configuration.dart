// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_configuration.dart';

/// Gets or sets the central server configuration.
class CentralServerConfiguration {
  /// The number of central server VMs.
  final pulumi.Input<double> instanceCount;
  /// The subnet id.
  final pulumi.Input<String> subnetId;
  /// Gets or sets the virtual machine configuration.
  final pulumi.Input<VirtualMachineConfiguration> virtualMachineConfiguration;

  /// Creates a new [CentralServerConfiguration].
  /// [instanceCount] The number of central server VMs.
  /// [subnetId] The subnet id.
  /// [virtualMachineConfiguration] Gets or sets the virtual machine configuration.
  const CentralServerConfiguration({
    required this.instanceCount,
    required this.subnetId,
    required this.virtualMachineConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceCount': instanceCount,
      'subnetId': subnetId,
      'virtualMachineConfiguration': pulumi.Input.mapInputValue<VirtualMachineConfiguration, Map<String, dynamic>>(virtualMachineConfiguration, (value) => value.toMap()),
    };
  }

  factory CentralServerConfiguration.fromMap(Map<String, dynamic> map) {
    return CentralServerConfiguration(
      instanceCount: pulumi.Input.fromValue(map['instanceCount'] as double),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
      virtualMachineConfiguration: pulumi.Input.fromValue(VirtualMachineConfiguration.fromMap((map['virtualMachineConfiguration']! as Map).cast<String, dynamic>())),
    );
  }
}
