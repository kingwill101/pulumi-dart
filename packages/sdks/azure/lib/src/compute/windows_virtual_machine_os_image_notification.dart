// ignore_for_file: unused_element, unnecessary_cast


class WindowsVirtualMachineOsImageNotification {
  /// Length of time a notification to be sent to the VM on the instance metadata server till the VM gets OS upgraded. The only possible value is `PT15M`. Defaults to `PT15M`.
  final String? timeout;

  /// Creates a new [WindowsVirtualMachineOsImageNotification].
  /// [timeout] Length of time a notification to be sent to the VM on the instance metadata server till the VM gets OS upgraded. The only possible value is `PT15M`. Defaults to `PT15M`.
  WindowsVirtualMachineOsImageNotification({
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'timeout': ?timeout,
    };
  }

  factory WindowsVirtualMachineOsImageNotification.fromMap(Map<String, dynamic> map) {
    return WindowsVirtualMachineOsImageNotification(
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
    );
  }
}

