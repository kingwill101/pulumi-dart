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
  BigIpLicenseState({
    pulumi.Output<String>? command,
    pulumi.Output<String>? registrationKey,
  }) :
      command = pulumi.Input.asOptionalInput<String>(command),
      registrationKey = pulumi.Input.asOptionalInput<String>(registrationKey);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'command': ?command,
      'registrationKey': ?registrationKey,
    };
  }

  factory BigIpLicenseState.fromMap(Map<String, dynamic> map) {
    return BigIpLicenseState(
      command: map['command'] == null ? null : pulumi.Output.create<String>(map['command'] as String),
      registrationKey: map['registrationKey'] == null ? null : pulumi.Output.create<String>(map['registrationKey'] as String),
    );
  }
}

