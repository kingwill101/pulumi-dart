// ignore_for_file: unused_element, unnecessary_cast


class WindowsVirtualMachineScaleSetSecretCertificate {
  /// The certificate store on the Virtual Machine where the certificate should be added.
  final String store;
  /// The Secret URL of a Key Vault Certificate.
  ///
  /// > **Note:** This can be sourced from the `secret_id` field within the `azure.keyvault.Certificate` Resource.
  final String url;

  /// Creates a new [WindowsVirtualMachineScaleSetSecretCertificate].
  /// [store] The certificate store on the Virtual Machine where the certificate should be added.
  /// [url] The Secret URL of a Key Vault Certificate.
  WindowsVirtualMachineScaleSetSecretCertificate({
    required this.store,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'store': store,
      'url': url,
    };
  }

  factory WindowsVirtualMachineScaleSetSecretCertificate.fromMap(Map<String, dynamic> map) {
    return WindowsVirtualMachineScaleSetSecretCertificate(
      store: map['store'] as String,
      url: map['url'] as String,
    );
  }
}

