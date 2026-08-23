// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_virtual_machine_scale_set_secret_certificate.dart';

class LinuxVirtualMachineScaleSetSecret {
  /// One or more `certificate` blocks as defined above.
  final pulumi.Input<List<LinuxVirtualMachineScaleSetSecretCertificate>> certificates;
  /// The ID of the Key Vault from which all Secrets should be sourced.
  final pulumi.Input<String> keyVaultId;

  /// Creates a new [LinuxVirtualMachineScaleSetSecret].
  /// [certificates] One or more `certificate` blocks as defined above.
  /// [keyVaultId] The ID of the Key Vault from which all Secrets should be sourced.
  const LinuxVirtualMachineScaleSetSecret({
    required this.certificates,
    required this.keyVaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificates': pulumi.Input.mapInputValue<List<LinuxVirtualMachineScaleSetSecretCertificate>, List<Map<String, dynamic>>>(certificates, (value) => pulumi.Input.encodeList<LinuxVirtualMachineScaleSetSecretCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'keyVaultId': keyVaultId,
    };
  }

  factory LinuxVirtualMachineScaleSetSecret.fromMap(Map<String, dynamic> map) {
    return LinuxVirtualMachineScaleSetSecret(
      certificates: pulumi.Input.fromValue(pulumi.Input.decodeList<LinuxVirtualMachineScaleSetSecretCertificate>(map['certificates']!, (value) => LinuxVirtualMachineScaleSetSecretCertificate.fromMap((value as Map).cast<String, dynamic>()))),
      keyVaultId: pulumi.Input.fromValue(map['keyVaultId'] as String),
    );
  }
}
