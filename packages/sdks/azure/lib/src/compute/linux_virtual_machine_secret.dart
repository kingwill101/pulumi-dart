// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_virtual_machine_secret_certificate.dart';

class LinuxVirtualMachineSecret {
  /// One or more `certificate` blocks as defined above.
  final List<LinuxVirtualMachineSecretCertificate> certificates;
  /// The ID of the Key Vault from which all Secrets should be sourced.
  final String keyVaultId;

  /// Creates a new [LinuxVirtualMachineSecret].
  /// [certificates] One or more `certificate` blocks as defined above.
  /// [keyVaultId] The ID of the Key Vault from which all Secrets should be sourced.
  LinuxVirtualMachineSecret({
    required this.certificates,
    required this.keyVaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificates': pulumi.Input.encodeList<LinuxVirtualMachineSecretCertificate, Map<String, dynamic>>(certificates, (value) => value.toMap()),
      'keyVaultId': keyVaultId,
    };
  }

  factory LinuxVirtualMachineSecret.fromMap(Map<String, dynamic> map) {
    return LinuxVirtualMachineSecret(
      certificates: pulumi.Input.decodeList<LinuxVirtualMachineSecretCertificate>(map['certificates'], (value) => LinuxVirtualMachineSecretCertificate.fromMap((value as Map).cast<String, dynamic>())),
      keyVaultId: map['keyVaultId'] as String,
    );
  }
}

