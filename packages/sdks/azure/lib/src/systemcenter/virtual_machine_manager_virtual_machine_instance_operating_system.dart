// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualMachineManagerVirtualMachineInstanceOperatingSystem {
  /// The admin password of the Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<String>? adminPassword;
  /// The computer name of the Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<String>? computerName;

  /// Creates a new [VirtualMachineManagerVirtualMachineInstanceOperatingSystem].
  /// [adminPassword] The admin password of the Virtual Machine. Changing this forces a new resource to be created.
  /// [computerName] The computer name of the Virtual Machine. Changing this forces a new resource to be created.
  const VirtualMachineManagerVirtualMachineInstanceOperatingSystem({
    this.adminPassword,
    this.computerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminPassword': ?adminPassword,
      'computerName': ?computerName,
    };
  }

  factory VirtualMachineManagerVirtualMachineInstanceOperatingSystem.fromMap(Map<String, dynamic> map) {
    return VirtualMachineManagerVirtualMachineInstanceOperatingSystem(
      adminPassword: (() { final guardedValue = map['adminPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      computerName: (() { final guardedValue = map['computerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

