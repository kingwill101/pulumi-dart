// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinuxVirtualMachineAdditionalCapabilities {
  /// Whether to enable the hibernation capability or not.
  final pulumi.Input<bool>? hibernationEnabled;
  /// Should the capacity to enable Data Disks of the `UltraSSD_LRS` storage account type be supported on this Virtual Machine? Defaults to `false`.
  final pulumi.Input<bool>? ultraSsdEnabled;

  /// Creates a new [LinuxVirtualMachineAdditionalCapabilities].
  /// [hibernationEnabled] Whether to enable the hibernation capability or not.
  /// [ultraSsdEnabled] Should the capacity to enable Data Disks of the `UltraSSD_LRS` storage account type be supported on this Virtual Machine? Defaults to `false`.
  const LinuxVirtualMachineAdditionalCapabilities({
    this.hibernationEnabled,
    this.ultraSsdEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hibernationEnabled': ?hibernationEnabled,
      'ultraSsdEnabled': ?ultraSsdEnabled,
    };
  }

  factory LinuxVirtualMachineAdditionalCapabilities.fromMap(Map<String, dynamic> map) {
    return LinuxVirtualMachineAdditionalCapabilities(
      hibernationEnabled: (() { final guardedValue = map['hibernationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ultraSsdEnabled: (() { final guardedValue = map['ultraSsdEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

