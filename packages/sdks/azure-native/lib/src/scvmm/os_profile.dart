// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the resource properties.
class OsProfile {
  /// Admin password of the virtual machine.
  final pulumi.Input<String?>? adminPassword;
  /// Gets or sets computer name.
  final pulumi.Input<String?>? computerName;

  /// Creates a new [OsProfile].
  /// [adminPassword] Admin password of the virtual machine.
  /// [computerName] Gets or sets computer name.
  const OsProfile({
    this.adminPassword,
    this.computerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminPassword': ?adminPassword,
      'computerName': ?computerName,
    };
  }

  factory OsProfile.fromMap(Map<String, dynamic> map) {
    return OsProfile(
      adminPassword: (() { final guardedValue = map['adminPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      computerName: (() { final guardedValue = map['computerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
