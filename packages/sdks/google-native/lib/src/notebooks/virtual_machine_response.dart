// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_config_response.dart';

/// Runtime using Virtual Machine for computing.
class VirtualMachineResponse {
  /// The unique identifier of the Managed Compute Engine instance.
  final pulumi.Input<String> instanceId;
  /// The user-friendly name of the Managed Compute Engine instance.
  final pulumi.Input<String> instanceName;
  /// Virtual Machine configuration settings.
  final pulumi.Input<VirtualMachineConfigResponse> virtualMachineConfig;

  /// Creates a new [VirtualMachineResponse].
  /// [instanceId] The unique identifier of the Managed Compute Engine instance.
  /// [instanceName] The user-friendly name of the Managed Compute Engine instance.
  /// [virtualMachineConfig] Virtual Machine configuration settings.
  const VirtualMachineResponse({
    required this.instanceId,
    required this.instanceName,
    required this.virtualMachineConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'instanceName': instanceName,
      'virtualMachineConfig': pulumi.Input.mapInputValue<VirtualMachineConfigResponse, Map<String, dynamic>>(virtualMachineConfig, (value) => value.toMap()),
    };
  }

  factory VirtualMachineResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineResponse(
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      instanceName: pulumi.Input.fromValue(map['instanceName'] as String),
      virtualMachineConfig: pulumi.Input.fromValue(VirtualMachineConfigResponse.fromMap((map['virtualMachineConfig']! as Map).cast<String, dynamic>())),
    );
  }
}

