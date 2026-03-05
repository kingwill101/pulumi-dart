// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceHostnameConfigurationManagement {
  /// The Hostname used for the SCM URL.
  final pulumi.Input<String> hostName;
  /// The ID of the Key Vault Secret which contains the SSL Certificate.
  final pulumi.Input<String> keyVaultCertificateId;
  final pulumi.Input<String> keyVaultId;
  /// Is Client Certificate Negotiation enabled?
  final pulumi.Input<bool> negotiateClientCertificate;

  /// Creates a new [GetServiceHostnameConfigurationManagement].
  /// [hostName] The Hostname used for the SCM URL.
  /// [keyVaultCertificateId] The ID of the Key Vault Secret which contains the SSL Certificate.
  /// [keyVaultId] Required.
  /// [negotiateClientCertificate] Is Client Certificate Negotiation enabled?
  GetServiceHostnameConfigurationManagement({
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

  factory GetServiceHostnameConfigurationManagement.fromMap(Map<String, dynamic> map) {
    return GetServiceHostnameConfigurationManagement(
      hostName: pulumi.Input.fromValue(map['hostName'] as String),
      keyVaultCertificateId: pulumi.Input.fromValue(map['keyVaultCertificateId'] as String),
      keyVaultId: pulumi.Input.fromValue(map['keyVaultId'] as String),
      negotiateClientCertificate: pulumi.Input.fromValue(map['negotiateClientCertificate'] as bool),
    );
  }
}

