// ignore_for_file: unused_element, unnecessary_cast


class VirtualMachineManagerVirtualMachineInstanceOperatingSystem {
  /// The admin password of the Virtual Machine. Changing this forces a new resource to be created.
  final String? adminPassword;
  /// The computer name of the Virtual Machine. Changing this forces a new resource to be created.
  final String? computerName;

  /// Creates a new [VirtualMachineManagerVirtualMachineInstanceOperatingSystem].
  /// [adminPassword] The admin password of the Virtual Machine. Changing this forces a new resource to be created.
  /// [computerName] The computer name of the Virtual Machine. Changing this forces a new resource to be created.
  VirtualMachineManagerVirtualMachineInstanceOperatingSystem({
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
      adminPassword: map['adminPassword'] == null ? null : map['adminPassword'] as String,
      computerName: map['computerName'] == null ? null : map['computerName'] as String,
    );
  }
}

