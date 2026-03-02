// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsVirtualMachineScaleSetTerminationNotification {
  /// Should the termination notification be enabled on this Virtual Machine Scale Set?
  final pulumi.Input<bool> enabled;
  /// Length of time (in minutes, between 5 and 15) a notification to be sent to the VM on the instance metadata server till the VM gets deleted. The time duration should be specified in ISO 8601 format. Defaults to `PT5M`.
  ///
  /// > **Note:** For more information about the termination notification, please [refer to this doc](https://docs.microsoft.com/azure/virtual-machine-scale-sets/virtual-machine-scale-sets-terminate-notification).
  final pulumi.Input<String>? timeout;

  /// Creates a new [WindowsVirtualMachineScaleSetTerminationNotification].
  /// [enabled] Should the termination notification be enabled on this Virtual Machine Scale Set?
  /// [timeout] Length of time (in minutes, between 5 and 15) a notification to be sent to the VM on the instance metadata server till the VM gets deleted. The time duration should be specified in ISO 8601 format. Defaults to `PT5M`.
  WindowsVirtualMachineScaleSetTerminationNotification({
    required this.enabled,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'timeout': ?timeout,
    };
  }

  factory WindowsVirtualMachineScaleSetTerminationNotification.fromMap(Map<String, dynamic> map) {
    return WindowsVirtualMachineScaleSetTerminationNotification(
      enabled: (map['enabled'] as bool).input(),
      timeout: map['timeout'] == null ? null : (map['timeout']! as String).input(),
    );
  }
}

