// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceHostnameConfigurationProxy {
  /// Is this the default SSL Binding?
  final pulumi.Input<bool> defaultSslBinding;
  /// The Hostname used for the SCM URL.
  final pulumi.Input<String> hostName;
  /// The ID of the Key Vault Secret which contains the SSL Certificate.
  final pulumi.Input<String> keyVaultCertificateId;
  final pulumi.Input<String> keyVaultId;
  /// Is Client Certificate Negotiation enabled?
  final pulumi.Input<bool> negotiateClientCertificate;

  /// Creates a new [GetServiceHostnameConfigurationProxy].
  /// [defaultSslBinding] Is this the default SSL Binding?
  /// [hostName] The Hostname used for the SCM URL.
  /// [keyVaultCertificateId] The ID of the Key Vault Secret which contains the SSL Certificate.
  /// [keyVaultId] Required.
  /// [negotiateClientCertificate] Is Client Certificate Negotiation enabled?
  GetServiceHostnameConfigurationProxy({
    required this.defaultSslBinding,
    required this.hostName,
    required this.keyVaultCertificateId,
    required this.keyVaultId,
    required this.negotiateClientCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultSslBinding': defaultSslBinding,
      'hostName': hostName,
      'keyVaultCertificateId': keyVaultCertificateId,
      'keyVaultId': keyVaultId,
      'negotiateClientCertificate': negotiateClientCertificate,
    };
  }

  factory GetServiceHostnameConfigurationProxy.fromMap(Map<String, dynamic> map) {
    return GetServiceHostnameConfigurationProxy(
      defaultSslBinding: (map['defaultSslBinding'] as bool).input(),
      hostName: (map['hostName'] as String).input(),
      keyVaultCertificateId: (map['keyVaultCertificateId'] as String).input(),
      keyVaultId: (map['keyVaultId'] as String).input(),
      negotiateClientCertificate: (map['negotiateClientCertificate'] as bool).input(),
    );
  }
}

