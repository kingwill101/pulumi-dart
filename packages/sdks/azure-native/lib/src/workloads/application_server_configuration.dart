// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_configuration.dart';

/// Gets or sets the application server configuration.
class ApplicationServerConfiguration {
  /// The number of app server instances.
  final pulumi.Input<double> instanceCount;
  /// The subnet id.
  final pulumi.Input<String> subnetId;
  /// Gets or sets the virtual machine configuration.
  final pulumi.Input<VirtualMachineConfiguration> virtualMachineConfiguration;

  /// Creates a new [ApplicationServerConfiguration].
  /// [instanceCount] The number of app server instances.
  /// [subnetId] The subnet id.
  /// [virtualMachineConfiguration] Gets or sets the virtual machine configuration.
  ApplicationServerConfiguration({
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

  factory ApplicationServerConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationServerConfiguration(
      instanceCount: (map['instanceCount'] as double).input(),
      subnetId: (map['subnetId'] as String).input(),
      virtualMachineConfiguration: (VirtualMachineConfiguration.fromMap((map['virtualMachineConfiguration'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

