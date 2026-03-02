// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrontdoorSecretSecretCustomerCertificate {
  /// The ID of the Key Vault certificate resource to use. Changing this forces a new Front Door Secret to be created.
  ///
  /// > **Note:** If you would like to use the **latest version** of the Key Vault Certificate use the Key Vault Certificates `versionless_id` attribute as the `key_vault_certificate_id` fields value(e.g. `key_vault_certificate_id = azurerm_key_vault_certificate.example.versionless_id`).
  final pulumi.Input<String> keyVaultCertificateId;
  /// One or more `subject alternative names` contained within the key vault certificate.
  final pulumi.Input<List<String>>? subjectAlternativeNames;

  /// Creates a new [FrontdoorSecretSecretCustomerCertificate].
  /// [keyVaultCertificateId] The ID of the Key Vault certificate resource to use. Changing this forces a new Front Door Secret to be created.
  /// [subjectAlternativeNames] One or more `subject alternative names` contained within the key vault certificate.
  FrontdoorSecretSecretCustomerCertificate({
    required this.keyVaultCertificateId,
    this.subjectAlternativeNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultCertificateId': keyVaultCertificateId,
      'subjectAlternativeNames': ?subjectAlternativeNames,
    };
  }

  factory FrontdoorSecretSecretCustomerCertificate.fromMap(Map<String, dynamic> map) {
    return FrontdoorSecretSecretCustomerCertificate(
      keyVaultCertificateId: (map['keyVaultCertificateId'] as String).input(),
      subjectAlternativeNames: map['subjectAlternativeNames'] == null ? null : ((map['subjectAlternativeNames']! as List).cast<String>()).input(),
    );
  }
}

