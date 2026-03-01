// ignore_for_file: unused_element, unnecessary_cast


class LinuxVirtualMachineScaleSetAdditionalCapabilities {
  /// Should the capacity to enable Data Disks of the `UltraSSD_LRS` storage account type be supported on this Virtual Machine Scale Set? Possible values are `true` or `false`. Defaults to `false`. Changing this forces a new resource to be created.
  final bool? ultraSsdEnabled;

  /// Creates a new [LinuxVirtualMachineScaleSetAdditionalCapabilities].
  /// [ultraSsdEnabled] Should the capacity to enable Data Disks of the `UltraSSD_LRS` storage account type be supported on this Virtual Machine Scale Set? Possible values are `true` or `false`. Defaults to `false`. Changing this forces a new resource to be created.
  LinuxVirtualMachineScaleSetAdditionalCapabilities({
    this.ultraSsdEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ultraSsdEnabled': ?ultraSsdEnabled,
    };
  }

  factory LinuxVirtualMachineScaleSetAdditionalCapabilities.fromMap(Map<String, dynamic> map) {
    return LinuxVirtualMachineScaleSetAdditionalCapabilities(
      ultraSsdEnabled: map['ultraSsdEnabled'] == null ? null : map['ultraSsdEnabled'] as bool,
    );
  }
}

