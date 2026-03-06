// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScaleSetOsProfile {
  /// Specifies the administrator password to use for all the instances of virtual machines in a scale set.
  final pulumi.Input<String>? adminPassword;
  /// Specifies the administrator account name to use for all the instances of virtual machines in the scale set.
  final pulumi.Input<String> adminUsername;
  /// Specifies the computer name prefix for all of the virtual machines in the scale set. Computer name prefixes must be 1 to 9 characters long for windows images and 1 - 58 for Linux. Changing this forces a new resource to be created.
  final pulumi.Input<String> computerNamePrefix;
  /// Specifies custom data to supply to the machine. On Linux-based systems, this can be used as a cloud-init script. On other systems, this will be copied as a file on disk. Internally, this provider will base64 encode this value before sending it to the API. The maximum length of the binary array is 65535 bytes.
  final pulumi.Input<String>? customData;

  /// Creates a new [ScaleSetOsProfile].
  /// [adminPassword] Specifies the administrator password to use for all the instances of virtual machines in a scale set.
  /// [adminUsername] Specifies the administrator account name to use for all the instances of virtual machines in the scale set.
  /// [computerNamePrefix] Specifies the computer name prefix for all of the virtual machines in the scale set. Computer name prefixes must be 1 to 9 characters long for windows images and 1 - 58 for Linux. Changing this forces a new resource to be created.
  /// [customData] Specifies custom data to supply to the machine. On Linux-based systems, this can be used as a cloud-init script. On other systems, this will be copied as a file on disk. Internally, this provider will base64 encode this value before sending it to the API. The maximum length of the binary array is 65535 bytes.
  const ScaleSetOsProfile({
    this.adminPassword,
    required this.adminUsername,
    required this.computerNamePrefix,
    this.customData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminPassword': ?adminPassword,
      'adminUsername': adminUsername,
      'computerNamePrefix': computerNamePrefix,
      'customData': ?customData,
    };
  }

  factory ScaleSetOsProfile.fromMap(Map<String, dynamic> map) {
    return ScaleSetOsProfile(
      adminPassword: (() { final guardedValue = map['adminPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      adminUsername: pulumi.Input.fromValue(map['adminUsername'] as String),
      computerNamePrefix: pulumi.Input.fromValue(map['computerNamePrefix'] as String),
      customData: (() { final guardedValue = map['customData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

