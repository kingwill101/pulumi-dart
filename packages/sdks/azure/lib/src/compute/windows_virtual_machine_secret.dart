// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_virtual_machine_secret_certificate.dart';

class WindowsVirtualMachineSecret {
  /// One or more `certificate` blocks as defined above.
  final pulumi.Input<List<WindowsVirtualMachineSecretCertificate>> certificates;
  /// The ID of the Key Vault from which all Secrets should be sourced.
  final pulumi.Input<String> keyVaultId;

  /// Creates a new [WindowsVirtualMachineSecret].
  /// [certificates] One or more `certificate` blocks as defined above.
  /// [keyVaultId] The ID of the Key Vault from which all Secrets should be sourced.
  const WindowsVirtualMachineSecret({
    required this.certificates,
    required this.keyVaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificates': pulumi.Input.mapInputValue<List<WindowsVirtualMachineSecretCertificate>, List<Map<String, dynamic>>>(certificates, (value) => pulumi.Input.encodeList<WindowsVirtualMachineSecretCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'keyVaultId': keyVaultId,
    };
  }

  factory WindowsVirtualMachineSecret.fromMap(Map<String, dynamic> map) {
    return WindowsVirtualMachineSecret(
      certificates: pulumi.Input.fromValue(pulumi.Input.decodeList<WindowsVirtualMachineSecretCertificate>(map['certificates']!, (value) => WindowsVirtualMachineSecretCertificate.fromMap((value as Map).cast<String, dynamic>()))),
      keyVaultId: pulumi.Input.fromValue(map['keyVaultId'] as String),
    );
  }
}
