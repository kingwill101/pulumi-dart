// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VmwareSourceDetails message describes a specific source details for the vmware source type.
class VmwareSourceDetailsVmmigrationV1alpha1 {
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

  /// Creates a new [VmwareSourceDetailsVmmigrationV1alpha1].
  /// [password] Input only. The credentials password. This is write only and can not be read in a GET operation.
  /// [resolvedVcenterHost] The hostname of the vcenter.
  /// [thumbprint] The thumbprint representing the certificate for the vcenter.
  /// [username] The credentials username.
  /// [vcenterIp] The ip address of the vcenter this Source represents.
  VmwareSourceDetailsVmmigrationV1alpha1({
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

  factory VmwareSourceDetailsVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return VmwareSourceDetailsVmmigrationV1alpha1(
      password: map['password'] == null ? null : (map['password'] as String).input(),
      resolvedVcenterHost: map['resolvedVcenterHost'] == null ? null : (map['resolvedVcenterHost'] as String).input(),
      thumbprint: map['thumbprint'] == null ? null : (map['thumbprint'] as String).input(),
      username: map['username'] == null ? null : (map['username'] as String).input(),
      vcenterIp: map['vcenterIp'] == null ? null : (map['vcenterIp'] as String).input(),
    );
  }
}

