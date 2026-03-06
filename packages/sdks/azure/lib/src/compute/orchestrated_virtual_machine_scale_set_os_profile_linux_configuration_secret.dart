// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'orchestrated_virtual_machine_scale_set_os_profile_linux_configuration_secret_certificate.dart';

class OrchestratedVirtualMachineScaleSetOsProfileLinuxConfigurationSecret {
  /// One or more `certificate` blocks as defined below.
  final pulumi.Input<List<OrchestratedVirtualMachineScaleSetOsProfileLinuxConfigurationSecretCertificate>> certificates;
  /// The ID of the Key Vault from which all Secrets should be sourced.
  final pulumi.Input<String> keyVaultId;

  /// Creates a new [OrchestratedVirtualMachineScaleSetOsProfileLinuxConfigurationSecret].
  /// [certificates] One or more `certificate` blocks as defined below.
  /// [keyVaultId] The ID of the Key Vault from which all Secrets should be sourced.
  const OrchestratedVirtualMachineScaleSetOsProfileLinuxConfigurationSecret({
    required this.certificates,
    required this.keyVaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificates': pulumi.Input.mapInputValue<List<OrchestratedVirtualMachineScaleSetOsProfileLinuxConfigurationSecretCertificate>, List<Map<String, dynamic>>>(certificates, (value) => pulumi.Input.encodeList<OrchestratedVirtualMachineScaleSetOsProfileLinuxConfigurationSecretCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'keyVaultId': keyVaultId,
    };
  }

  factory OrchestratedVirtualMachineScaleSetOsProfileLinuxConfigurationSecret.fromMap(Map<String, dynamic> map) {
    return OrchestratedVirtualMachineScaleSetOsProfileLinuxConfigurationSecret(
      certificates: pulumi.Input.fromValue(pulumi.Input.decodeList<OrchestratedVirtualMachineScaleSetOsProfileLinuxConfigurationSecretCertificate>(map['certificates']!, (value) => OrchestratedVirtualMachineScaleSetOsProfileLinuxConfigurationSecretCertificate.fromMap((value as Map).cast<String, dynamic>()))),
      keyVaultId: pulumi.Input.fromValue(map['keyVaultId'] as String),
    );
  }
}

