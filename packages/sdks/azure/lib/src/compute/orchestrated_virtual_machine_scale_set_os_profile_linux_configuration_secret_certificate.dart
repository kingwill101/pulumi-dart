// ignore_for_file: unused_element, unnecessary_cast


class OrchestratedVirtualMachineScaleSetOsProfileLinuxConfigurationSecretCertificate {
  /// The Secret URL of a Key Vault Certificate.
  ///
  /// > **Note:** This can be sourced from the `secret_id` field within the `azure.keyvault.Certificate` Resource.
  final String url;

  /// Creates a new [OrchestratedVirtualMachineScaleSetOsProfileLinuxConfigurationSecretCertificate].
  /// [url] The Secret URL of a Key Vault Certificate.
  OrchestratedVirtualMachineScaleSetOsProfileLinuxConfigurationSecretCertificate({
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': url,
    };
  }

  factory OrchestratedVirtualMachineScaleSetOsProfileLinuxConfigurationSecretCertificate.fromMap(Map<String, dynamic> map) {
    return OrchestratedVirtualMachineScaleSetOsProfileLinuxConfigurationSecretCertificate(
      url: map['url'] as String,
    );
  }
}

