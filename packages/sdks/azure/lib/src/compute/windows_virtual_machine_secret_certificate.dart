// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsVirtualMachineSecretCertificate {
  /// The certificate store on the Virtual Machine where the certificate should be added.
  final pulumi.Input<String> store;
  /// The Secret URL of a Key Vault Certificate.
  ///
  /// &gt; **NOTE:** This can be sourced from the `secret_id` field within the `azure.keyvault.Certificate` Resource.
  final pulumi.Input<String> url;

  /// Creates a new [WindowsVirtualMachineSecretCertificate].
  /// [store] The certificate store on the Virtual Machine where the certificate should be added.
  /// [url] The Secret URL of a Key Vault Certificate.
  WindowsVirtualMachineSecretCertificate({
    required this.store,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'store': store,
      'url': url,
    };
  }

  factory WindowsVirtualMachineSecretCertificate.fromMap(Map<String, dynamic> map) {
    return WindowsVirtualMachineSecretCertificate(
      store: pulumi.Input.fromValue(map['store'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}

