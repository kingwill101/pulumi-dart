// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinuxVirtualMachineSecretCertificate {
  /// The Secret URL of a Key Vault Certificate.
  ///
  /// > **NOTE:** This can be sourced from the `secret_id` field within the `azure.keyvault.Certificate` Resource.
  final pulumi.Input<String> url;

  /// Creates a new [LinuxVirtualMachineSecretCertificate].
  /// [url] The Secret URL of a Key Vault Certificate.
  LinuxVirtualMachineSecretCertificate({
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': url,
    };
  }

  factory LinuxVirtualMachineSecretCertificate.fromMap(Map<String, dynamic> map) {
    return LinuxVirtualMachineSecretCertificate(
      url: (map['url'] as String).input(),
    );
  }
}

