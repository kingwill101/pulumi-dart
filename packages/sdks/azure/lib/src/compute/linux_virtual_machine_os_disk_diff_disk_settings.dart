// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinuxVirtualMachineOsDiskDiffDiskSettings {
  /// Specifies the Ephemeral Disk Settings for the OS Disk. At this time the only possible value is `Local`. Changing this forces a new resource to be created.
  final pulumi.Input<String> option;
  /// Specifies where to store the Ephemeral Disk. Possible values are `CacheDisk`, `ResourceDisk` and `NvmeDisk`. Defaults to `CacheDisk`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** `NvmeDisk` can only be used for v6 VMs in combination with a supported `source_image_reference`. More information can be found [here](https://learn.microsoft.com/en-us/azure/virtual-machines/ephemeral-os-disks)
  final pulumi.Input<String>? placement;

  /// Creates a new [LinuxVirtualMachineOsDiskDiffDiskSettings].
  /// [option] Specifies the Ephemeral Disk Settings for the OS Disk. At this time the only possible value is `Local`. Changing this forces a new resource to be created.
  /// [placement] Specifies where to store the Ephemeral Disk. Possible values are `CacheDisk`, `ResourceDisk` and `NvmeDisk`. Defaults to `CacheDisk`. Changing this forces a new resource to be created.
  const LinuxVirtualMachineOsDiskDiffDiskSettings({
    required this.option,
    this.placement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'option': option,
      'placement': ?placement,
    };
  }

  factory LinuxVirtualMachineOsDiskDiffDiskSettings.fromMap(Map<String, dynamic> map) {
    return LinuxVirtualMachineOsDiskDiffDiskSettings(
      option: pulumi.Input.fromValue(map['option'] as String),
      placement: (() { final guardedValue = map['placement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

