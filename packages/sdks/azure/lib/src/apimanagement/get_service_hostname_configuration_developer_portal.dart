// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceHostnameConfigurationDeveloperPortal {
  /// The Hostname used for the SCM URL.
  final pulumi.Input<String> hostName;
  /// The ID of the Key Vault Secret which contains the SSL Certificate.
  final pulumi.Input<String> keyVaultCertificateId;
  final pulumi.Input<String> keyVaultId;
  /// Is Client Certificate Negotiation enabled?
  final pulumi.Input<bool> negotiateClientCertificate;

  /// Creates a new [GetServiceHostnameConfigurationDeveloperPortal].
  /// [hostName] The Hostname used for the SCM URL.
  /// [keyVaultCertificateId] The ID of the Key Vault Secret which contains the SSL Certificate.
  /// [keyVaultId] Required.
  /// [negotiateClientCertificate] Is Client Certificate Negotiation enabled?
  GetServiceHostnameConfigurationDeveloperPortal({
    required this.hostName,
    required this.keyVaultCertificateId,
    required this.keyVaultId,
    required this.negotiateClientCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostName': hostName,
      'keyVaultCertificateId': keyVaultCertificateId,
      'keyVaultId': keyVaultId,
      'negotiateClientCertificate': negotiateClientCertificate,
    };
  }

  factory GetServiceHostnameConfigurationDeveloperPortal.fromMap(Map<String, dynamic> map) {
    return GetServiceHostnameConfigurationDeveloperPortal(
      hostName: (map['hostName'] as String).input(),
      keyVaultCertificateId: (map['keyVaultCertificateId'] as String).input(),
      keyVaultId: (map['keyVaultId'] as String).input(),
      negotiateClientCertificate: (map['negotiateClientCertificate'] as bool).input(),
    );
  }
}

