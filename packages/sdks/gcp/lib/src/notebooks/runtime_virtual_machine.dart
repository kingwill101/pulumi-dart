// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'runtime_virtual_machine_virtual_machine_config.dart';

class RuntimeVirtualMachine {
  /// (Output)
  /// The unique identifier of the Managed Compute Engine instance.
  final pulumi.Input<String>? instanceId;
  /// (Output)
  /// The user-friendly name of the Managed Compute Engine instance.
  final pulumi.Input<String>? instanceName;
  /// Virtual Machine configuration settings.
  /// Structure is documented below.
  final pulumi.Input<RuntimeVirtualMachineVirtualMachineConfig>? virtualMachineConfig;

  /// Creates a new [RuntimeVirtualMachine].
  /// [instanceId] (Output)
  /// [instanceName] (Output)
  /// [virtualMachineConfig] Virtual Machine configuration settings.
  RuntimeVirtualMachine({
    this.instanceId,
    this.instanceName,
    this.virtualMachineConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': ?instanceId,
      'instanceName': ?instanceName,
      'virtualMachineConfig': ?pulumi.Input.mapOptionalInputValue<RuntimeVirtualMachineVirtualMachineConfig, Map<String, dynamic>>(virtualMachineConfig, (value) => value.toMap()),
    };
  }

  factory RuntimeVirtualMachine.fromMap(Map<String, dynamic> map) {
    return RuntimeVirtualMachine(
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as String).input(),
      instanceName: map['instanceName'] == null ? null : (map['instanceName'] as String).input(),
      virtualMachineConfig: map['virtualMachineConfig'] == null ? null : (RuntimeVirtualMachineVirtualMachineConfig.fromMap((map['virtualMachineConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

