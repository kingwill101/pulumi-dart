// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsVirtualMachineAdditionalCapabilities {
  /// Whether to enable the hibernation capability or not.
  final pulumi.Input<bool>? hibernationEnabled;
  /// Should the capacity to enable Data Disks of the `UltraSSD_LRS` storage account type be supported on this Virtual Machine? Defaults to `false`.
  final pulumi.Input<bool>? ultraSsdEnabled;

  /// Creates a new [WindowsVirtualMachineAdditionalCapabilities].
  /// [hibernationEnabled] Whether to enable the hibernation capability or not.
  /// [ultraSsdEnabled] Should the capacity to enable Data Disks of the `UltraSSD_LRS` storage account type be supported on this Virtual Machine? Defaults to `false`.
  WindowsVirtualMachineAdditionalCapabilities({
    this.hibernationEnabled,
    this.ultraSsdEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hibernationEnabled': ?hibernationEnabled,
      'ultraSsdEnabled': ?ultraSsdEnabled,
    };
  }

  factory WindowsVirtualMachineAdditionalCapabilities.fromMap(Map<String, dynamic> map) {
    return WindowsVirtualMachineAdditionalCapabilities(
      hibernationEnabled: map['hibernationEnabled'] == null ? null : (map['hibernationEnabled']! as bool).input(),
      ultraSsdEnabled: map['ultraSsdEnabled'] == null ? null : (map['ultraSsdEnabled']! as bool).input(),
    );
  }
}

