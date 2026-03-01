// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_machine_config_response.dart';

/// Runtime using Virtual Machine for computing.
class VirtualMachineResponse {
  /// The unique identifier of the Managed Compute Engine instance.
  final String instanceId;
  /// The user-friendly name of the Managed Compute Engine instance.
  final String instanceName;
  /// Virtual Machine configuration settings.
  final VirtualMachineConfigResponse virtualMachineConfig;

  /// Creates a new [VirtualMachineResponse].
  /// [instanceId] The unique identifier of the Managed Compute Engine instance.
  /// [instanceName] The user-friendly name of the Managed Compute Engine instance.
  /// [virtualMachineConfig] Virtual Machine configuration settings.
  VirtualMachineResponse({
    required this.instanceId,
    required this.instanceName,
    required this.virtualMachineConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'instanceName': instanceName,
      'virtualMachineConfig': virtualMachineConfig.toMap(),
    };
  }

  factory VirtualMachineResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineResponse(
      instanceId: map['instanceId'] as String,
      instanceName: map['instanceName'] as String,
      virtualMachineConfig: VirtualMachineConfigResponse.fromMap((map['virtualMachineConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

