// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsVirtualMachineScaleSetSecretCertificate {
  /// The certificate store on the Virtual Machine where the certificate should be added.
  final pulumi.Input<String> store;
  /// The Secret URL of a Key Vault Certificate.
  ///
  /// &gt; **Note:** This can be sourced from the `secretId` field within the `azure.keyvault.Certificate` Resource.
  final pulumi.Input<String> url;

  /// Creates a new [WindowsVirtualMachineScaleSetSecretCertificate].
  /// [store] The certificate store on the Virtual Machine where the certificate should be added.
  /// [url] The Secret URL of a Key Vault Certificate.
  const WindowsVirtualMachineScaleSetSecretCertificate({
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
      store: pulumi.Input.fromValue(map['store'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
