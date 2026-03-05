// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsVirtualMachineScaleSetOsDiskDiffDiskSettings {
  /// Specifies the Ephemeral Disk Settings for the OS Disk. At this time the only possible value is `Local`. Changing this forces a new resource to be created.
  final pulumi.Input<String> option;
  /// Specifies where to store the Ephemeral Disk. Possible values are `CacheDisk` and `ResourceDisk`. Defaults to `CacheDisk`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? placement;

  /// Creates a new [WindowsVirtualMachineScaleSetOsDiskDiffDiskSettings].
  /// [option] Specifies the Ephemeral Disk Settings for the OS Disk. At this time the only possible value is `Local`. Changing this forces a new resource to be created.
  /// [placement] Specifies where to store the Ephemeral Disk. Possible values are `CacheDisk` and `ResourceDisk`. Defaults to `CacheDisk`. Changing this forces a new resource to be created.
  WindowsVirtualMachineScaleSetOsDiskDiffDiskSettings({
    required this.option,
    this.placement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'option': option,
      'placement': ?placement,
    };
  }

  factory WindowsVirtualMachineScaleSetOsDiskDiffDiskSettings.fromMap(Map<String, dynamic> map) {
    return WindowsVirtualMachineScaleSetOsDiskDiffDiskSettings(
      option: pulumi.Input.fromValue(map['option'] as String),
      placement: (() { final guardedValue = map['placement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

