// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinuxVirtualMachineScaleSetSpotRestore {
  /// Should the Spot-Try-Restore feature be enabled? The Spot-Try-Restore feature will attempt to automatically restore the evicted Spot Virtual Machine Scale Set VM instances opportunistically based on capacity availability and pricing constraints. Possible values are `true` or `false`. Defaults to `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool?>? enabled;
  /// The length of time that the Virtual Machine Scale Set should attempt to restore the Spot VM instances which have been evicted. The time duration should be between `15` minutes and `120` minutes (inclusive). The time duration should be specified in the ISO 8601 format. Defaults to `PT1H`. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? timeout;

  /// Creates a new [LinuxVirtualMachineScaleSetSpotRestore].
  /// [enabled] Should the Spot-Try-Restore feature be enabled? The Spot-Try-Restore feature will attempt to automatically restore the evicted Spot Virtual Machine Scale Set VM instances opportunistically based on capacity availability and pricing constraints. Possible values are `true` or `false`. Defaults to `false`. Changing this forces a new resource to be created.
  /// [timeout] The length of time that the Virtual Machine Scale Set should attempt to restore the Spot VM instances which have been evicted. The time duration should be between `15` minutes and `120` minutes (inclusive). The time duration should be specified in the ISO 8601 format. Defaults to `PT1H`. Changing this forces a new resource to be created.
  const LinuxVirtualMachineScaleSetSpotRestore({
    this.enabled,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'timeout': ?timeout,
    };
  }

  factory LinuxVirtualMachineScaleSetSpotRestore.fromMap(Map<String, dynamic> map) {
    return LinuxVirtualMachineScaleSetSpotRestore(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
