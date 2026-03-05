// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the resource properties.
class OsProfileForVMInstance {
  /// Admin password of the virtual machine.
  final pulumi.Input<String>? adminPassword;
  /// Gets or sets computer name.
  final pulumi.Input<String>? computerName;

  /// Creates a new [OsProfileForVMInstance].
  /// [adminPassword] Admin password of the virtual machine.
  /// [computerName] Gets or sets computer name.
  OsProfileForVMInstance({
    this.adminPassword,
    this.computerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminPassword': ?adminPassword,
      'computerName': ?computerName,
    };
  }

  factory OsProfileForVMInstance.fromMap(Map<String, dynamic> map) {
    return OsProfileForVMInstance(
      adminPassword: (() { final guardedValue = map['adminPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      computerName: (() { final guardedValue = map['computerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

