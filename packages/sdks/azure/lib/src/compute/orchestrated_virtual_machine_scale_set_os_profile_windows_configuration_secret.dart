// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'orchestrated_virtual_machine_scale_set_os_profile_windows_configuration_secret_certificate.dart';

class OrchestratedVirtualMachineScaleSetOsProfileWindowsConfigurationSecret {
  /// One or more `certificate` blocks as defined below.
  final List<OrchestratedVirtualMachineScaleSetOsProfileWindowsConfigurationSecretCertificate> certificates;
  /// The ID of the Key Vault from which all Secrets should be sourced.
  final String keyVaultId;

  /// Creates a new [OrchestratedVirtualMachineScaleSetOsProfileWindowsConfigurationSecret].
  /// [certificates] One or more `certificate` blocks as defined below.
  /// [keyVaultId] The ID of the Key Vault from which all Secrets should be sourced.
  OrchestratedVirtualMachineScaleSetOsProfileWindowsConfigurationSecret({
    required this.certificates,
    required this.keyVaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificates': pulumi.Input.encodeList<OrchestratedVirtualMachineScaleSetOsProfileWindowsConfigurationSecretCertificate, Map<String, dynamic>>(certificates, (value) => value.toMap()),
      'keyVaultId': keyVaultId,
    };
  }

  factory OrchestratedVirtualMachineScaleSetOsProfileWindowsConfigurationSecret.fromMap(Map<String, dynamic> map) {
    return OrchestratedVirtualMachineScaleSetOsProfileWindowsConfigurationSecret(
      certificates: pulumi.Input.decodeList<OrchestratedVirtualMachineScaleSetOsProfileWindowsConfigurationSecretCertificate>(map['certificates'], (value) => OrchestratedVirtualMachineScaleSetOsProfileWindowsConfigurationSecretCertificate.fromMap((value as Map).cast<String, dynamic>())),
      keyVaultId: map['keyVaultId'] as String,
    );
  }
}

