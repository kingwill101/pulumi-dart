// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualMachineOsProfileWindowsConfigWinrm {
  /// The ID of the Key Vault Secret which contains the encrypted Certificate which should be installed on the Virtual Machine. This certificate must also be specified in the `vault_certificates` block within the `os_profile_secrets` block.
  ///
  /// > **NOTE:** This can be sourced from the `secret_id` field on the `azure.keyvault.Certificate` resource.
  final pulumi.Input<String>? certificateUrl;
  /// Specifies the protocol of listener. Possible values are `HTTP` or `HTTPS`.
  final pulumi.Input<String> protocol;

  /// Creates a new [VirtualMachineOsProfileWindowsConfigWinrm].
  /// [certificateUrl] The ID of the Key Vault Secret which contains the encrypted Certificate which should be installed on the Virtual Machine. This certificate must also be specified in the `vault_certificates` block within the `os_profile_secrets` block.
  /// [protocol] Specifies the protocol of listener. Possible values are `HTTP` or `HTTPS`.
  VirtualMachineOsProfileWindowsConfigWinrm({
    this.certificateUrl,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateUrl': ?certificateUrl,
      'protocol': protocol,
    };
  }

  factory VirtualMachineOsProfileWindowsConfigWinrm.fromMap(Map<String, dynamic> map) {
    return VirtualMachineOsProfileWindowsConfigWinrm(
      certificateUrl: map['certificateUrl'] == null ? null : (map['certificateUrl']! as String).input(),
      protocol: (map['protocol'] as String).input(),
    );
  }
}

