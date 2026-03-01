// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_virtual_machine_secret_certificate.dart';

class WindowsVirtualMachineSecret {
  /// One or more `certificate` blocks as defined above.
  final List<WindowsVirtualMachineSecretCertificate> certificates;
  /// The ID of the Key Vault from which all Secrets should be sourced.
  final String keyVaultId;

  /// Creates a new [WindowsVirtualMachineSecret].
  /// [certificates] One or more `certificate` blocks as defined above.
  /// [keyVaultId] The ID of the Key Vault from which all Secrets should be sourced.
  WindowsVirtualMachineSecret({
    required this.certificates,
    required this.keyVaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificates': pulumi.Input.encodeList<WindowsVirtualMachineSecretCertificate, Map<String, dynamic>>(certificates, (value) => value.toMap()),
      'keyVaultId': keyVaultId,
    };
  }

  factory WindowsVirtualMachineSecret.fromMap(Map<String, dynamic> map) {
    return WindowsVirtualMachineSecret(
      certificates: pulumi.Input.decodeList<WindowsVirtualMachineSecretCertificate>(map['certificates'], (value) => WindowsVirtualMachineSecretCertificate.fromMap((value as Map).cast<String, dynamic>())),
      keyVaultId: map['keyVaultId'] as String,
    );
  }
}

