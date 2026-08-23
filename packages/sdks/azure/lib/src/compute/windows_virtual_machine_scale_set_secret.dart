// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_virtual_machine_scale_set_secret_certificate.dart';

class WindowsVirtualMachineScaleSetSecret {
  /// One or more `certificate` blocks as defined above.
  final pulumi.Input<List<WindowsVirtualMachineScaleSetSecretCertificate>> certificates;
  /// The ID of the Key Vault from which all Secrets should be sourced.
  final pulumi.Input<String> keyVaultId;

  /// Creates a new [WindowsVirtualMachineScaleSetSecret].
  /// [certificates] One or more `certificate` blocks as defined above.
  /// [keyVaultId] The ID of the Key Vault from which all Secrets should be sourced.
  const WindowsVirtualMachineScaleSetSecret({
    required this.certificates,
    required this.keyVaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificates': pulumi.Input.mapInputValue<List<WindowsVirtualMachineScaleSetSecretCertificate>, List<Map<String, dynamic>>>(certificates, (value) => pulumi.Input.encodeList<WindowsVirtualMachineScaleSetSecretCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'keyVaultId': keyVaultId,
    };
  }

  factory WindowsVirtualMachineScaleSetSecret.fromMap(Map<String, dynamic> map) {
    return WindowsVirtualMachineScaleSetSecret(
      certificates: pulumi.Input.fromValue(pulumi.Input.decodeList<WindowsVirtualMachineScaleSetSecretCertificate>(map['certificates']!, (value) => WindowsVirtualMachineScaleSetSecretCertificate.fromMap((value as Map).cast<String, dynamic>()))),
      keyVaultId: pulumi.Input.fromValue(map['keyVaultId'] as String),
    );
  }
}
