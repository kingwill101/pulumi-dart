// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_config.dart';

/// Runtime using Virtual Machine for computing.
class VirtualMachine {
  /// Virtual Machine configuration settings.
  final pulumi.Input<VirtualMachineConfig>? virtualMachineConfig;

  /// Creates a new [VirtualMachine].
  /// [virtualMachineConfig] Virtual Machine configuration settings.
  const VirtualMachine({
    this.virtualMachineConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'virtualMachineConfig': ?pulumi.Input.mapOptionalInputValue<VirtualMachineConfig, Map<String, dynamic>>(virtualMachineConfig, (value) => value.toMap()),
    };
  }

  factory VirtualMachine.fromMap(Map<String, dynamic> map) {
    return VirtualMachine(
      virtualMachineConfig: (() { final guardedValue = map['virtualMachineConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachineConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

