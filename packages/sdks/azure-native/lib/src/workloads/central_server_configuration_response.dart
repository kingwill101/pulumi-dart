// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_configuration_response.dart';

/// Gets or sets the central server configuration.
class CentralServerConfigurationResponse {
  /// The number of central server VMs.
  final pulumi.Input<double> instanceCount;
  /// The subnet id.
  final pulumi.Input<String> subnetId;
  /// Gets or sets the virtual machine configuration.
  final pulumi.Input<VirtualMachineConfigurationResponse> virtualMachineConfiguration;

  /// Creates a new [CentralServerConfigurationResponse].
  /// [instanceCount] The number of central server VMs.
  /// [subnetId] The subnet id.
  /// [virtualMachineConfiguration] Gets or sets the virtual machine configuration.
  const CentralServerConfigurationResponse({
    required this.instanceCount,
    required this.subnetId,
    required this.virtualMachineConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceCount': instanceCount,
      'subnetId': subnetId,
      'virtualMachineConfiguration': pulumi.Input.mapInputValue<VirtualMachineConfigurationResponse, Map<String, dynamic>>(virtualMachineConfiguration, (value) => value.toMap()),
    };
  }

  factory CentralServerConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return CentralServerConfigurationResponse(
      instanceCount: pulumi.Input.fromValue((map['instanceCount'] as num).toDouble()),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
      virtualMachineConfiguration: pulumi.Input.fromValue(VirtualMachineConfigurationResponse.fromMap((map['virtualMachineConfiguration']! as Map).cast<String, dynamic>())),
    );
  }
}
