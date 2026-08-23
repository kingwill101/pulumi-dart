// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VmwareSourceDetails message describes a specific source details for the vmware source type.
class VmwareSourceDetails {
  /// Input only. The credentials password. This is write only and can not be read in a GET operation.
  final pulumi.Input<String>? password;
  /// The hostname of the vcenter.
  final pulumi.Input<String>? resolvedVcenterHost;
  /// The thumbprint representing the certificate for the vcenter.
  final pulumi.Input<String>? thumbprint;
  /// The credentials username.
  final pulumi.Input<String>? username;
  /// The ip address of the vcenter this Source represents.
  final pulumi.Input<String>? vcenterIp;

  /// Creates a new [VmwareSourceDetails].
  /// [password] Input only. The credentials password. This is write only and can not be read in a GET operation.
  /// [resolvedVcenterHost] The hostname of the vcenter.
  /// [thumbprint] The thumbprint representing the certificate for the vcenter.
  /// [username] The credentials username.
  /// [vcenterIp] The ip address of the vcenter this Source represents.
  const VmwareSourceDetails({
    this.password,
    this.resolvedVcenterHost,
    this.thumbprint,
    this.username,
    this.vcenterIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'resolvedVcenterHost': ?resolvedVcenterHost,
      'thumbprint': ?thumbprint,
      'username': ?username,
      'vcenterIp': ?vcenterIp,
    };
  }

  factory VmwareSourceDetails.fromMap(Map<String, dynamic> map) {
    return VmwareSourceDetails(
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resolvedVcenterHost: (() { final guardedValue = map['resolvedVcenterHost']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      thumbprint: (() { final guardedValue = map['thumbprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vcenterIp: (() { final guardedValue = map['vcenterIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
