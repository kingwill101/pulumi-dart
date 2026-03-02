// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScaleSetOsProfileSecretVaultCertificate {
  /// (Required, on windows machines) Specifies the certificate store on the Virtual Machine where the certificate should be added to.
  final pulumi.Input<String>? certificateStore;
  /// It is the Base64 encoding of a JSON Object that which is encoded in UTF-8 of which the contents need to be `data`, `dataType` and `password`.
  final pulumi.Input<String> certificateUrl;

  /// Creates a new [ScaleSetOsProfileSecretVaultCertificate].
  /// [certificateStore] (Required, on windows machines) Specifies the certificate store on the Virtual Machine where the certificate should be added to.
  /// [certificateUrl] It is the Base64 encoding of a JSON Object that which is encoded in UTF-8 of which the contents need to be `data`, `dataType` and `password`.
  ScaleSetOsProfileSecretVaultCertificate({
    this.certificateStore,
    required this.certificateUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateStore': ?certificateStore,
      'certificateUrl': certificateUrl,
    };
  }

  factory ScaleSetOsProfileSecretVaultCertificate.fromMap(Map<String, dynamic> map) {
    return ScaleSetOsProfileSecretVaultCertificate(
      certificateStore: map['certificateStore'] == null ? null : (map['certificateStore'] as String).input(),
      certificateUrl: (map['certificateUrl'] as String).input(),
    );
  }
}

