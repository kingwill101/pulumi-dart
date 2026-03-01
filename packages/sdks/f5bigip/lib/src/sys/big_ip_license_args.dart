// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sys_big_ip_license_big_ip_license_args_doc}
/// The set of arguments for BigIpLicense.
/// {@endtemplate}
/// {@macro pulumi_sys_big_ip_license_big_ip_license_args_doc}
class BigIpLicenseArgs {
  /// Tmsh command to execute tmsh commands like install
  final pulumi.Input<String> command;
  /// A unique Key F5 provides for Licensing BIG-IP
  final pulumi.Input<String> registrationKey;

  /// Creates a new [BigIpLicenseArgs].
  /// [command] Tmsh command to execute tmsh commands like install
  /// [registrationKey] A unique Key F5 provides for Licensing BIG-IP
  BigIpLicenseArgs({
    required pulumi.Output<String> command,
    required pulumi.Output<String> registrationKey,
  }) :
      command = pulumi.Input.asInput<String>(command),
      registrationKey = pulumi.Input.asInput<String>(registrationKey);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'command': command,
      'registrationKey': registrationKey,
    };
  }

  factory BigIpLicenseArgs.fromMap(Map<String, dynamic> map) {
    return BigIpLicenseArgs(
      command: pulumi.Output.create<String>(map['command'] as String),
      registrationKey: pulumi.Output.create<String>(map['registrationKey'] as String),
    );
  }
}

