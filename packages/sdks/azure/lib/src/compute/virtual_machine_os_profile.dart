// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualMachineOsProfile {
  /// (Optional for Windows, Optional for Linux) The password associated with the local administrator account.
  ///
  /// &gt; **NOTE:** If using Linux, it may be preferable to use SSH Key authentication (available in the `os_profile_linux_config` block) instead of password authentication.
  final pulumi.Input<String>? adminPassword;
  /// Specifies the name of the local administrator account.
  final pulumi.Input<String> adminUsername;
  /// Specifies the name of the Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<String> computerName;
  /// Specifies custom data to supply to the machine. On Linux-based systems, this can be used as a cloud-init script. On other systems, this will be copied as a file on disk. Internally, this provider will base64 encode this value before sending it to the API. The maximum length of the binary array is 65535 bytes. Changing this forces a new resource to be created.
  final pulumi.Input<String>? customData;

  /// Creates a new [VirtualMachineOsProfile].
  /// [adminPassword] (Optional for Windows, Optional for Linux) The password associated with the local administrator account.
  /// [adminUsername] Specifies the name of the local administrator account.
  /// [computerName] Specifies the name of the Virtual Machine. Changing this forces a new resource to be created.
  /// [customData] Specifies custom data to supply to the machine. On Linux-based systems, this can be used as a cloud-init script. On other systems, this will be copied as a file on disk. Internally, this provider will base64 encode this value before sending it to the API. The maximum length of the binary array is 65535 bytes. Changing this forces a new resource to be created.
  VirtualMachineOsProfile({
    this.adminPassword,
    required this.adminUsername,
    required this.computerName,
    this.customData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminPassword': ?adminPassword,
      'adminUsername': adminUsername,
      'computerName': computerName,
      'customData': ?customData,
    };
  }

  factory VirtualMachineOsProfile.fromMap(Map<String, dynamic> map) {
    return VirtualMachineOsProfile(
      adminPassword: (() { final guardedValue = map['adminPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      adminUsername: pulumi.Input.fromValue(map['adminUsername'] as String),
      computerName: pulumi.Input.fromValue(map['computerName'] as String),
      customData: (() { final guardedValue = map['customData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

