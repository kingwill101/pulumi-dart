// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BigIpLicense resources.
class BigIpLicenseState {
  /// Tmsh command to execute tmsh commands like install
  final pulumi.Input<String>? command;

  /// A unique Key F5 provides for Licensing BIG-IP
  final pulumi.Input<String>? registrationKey;

  /// Creates a new [BigIpLicenseState].
  /// [command] Tmsh command to execute tmsh commands like install
  /// [registrationKey] A unique Key F5 provides for Licensing BIG-IP
  BigIpLicenseState({this.command, this.registrationKey});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'command': ?command,
      'registrationKey': ?registrationKey,
    };
  }

  factory BigIpLicenseState.fromMap(Map<String, dynamic> map) {
    return BigIpLicenseState(
      command: (() {
        final guardedValue = map['command'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      registrationKey: (() {
        final guardedValue = map['registrationKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
