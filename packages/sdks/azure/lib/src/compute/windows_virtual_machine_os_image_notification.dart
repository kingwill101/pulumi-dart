// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsVirtualMachineOsImageNotification {
  /// Length of time a notification to be sent to the VM on the instance metadata server till the VM gets OS upgraded. The only possible value is `PT15M`. Defaults to `PT15M`.
  final pulumi.Input<String>? timeout;

  /// Creates a new [WindowsVirtualMachineOsImageNotification].
  /// [timeout] Length of time a notification to be sent to the VM on the instance metadata server till the VM gets OS upgraded. The only possible value is `PT15M`. Defaults to `PT15M`.
  const WindowsVirtualMachineOsImageNotification({
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'timeout': ?timeout,
    };
  }

  factory WindowsVirtualMachineOsImageNotification.fromMap(Map<String, dynamic> map) {
    return WindowsVirtualMachineOsImageNotification(
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
