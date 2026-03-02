// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Client certificate definition.
class ClientCertificateResponse {
  /// Certificate common name.
  final pulumi.Input<String>? commonName;
  /// Indicates if the client certificate has admin access to the cluster. Non admin clients can perform only read only operations on the cluster.
  final pulumi.Input<bool> isAdmin;
  /// Issuer thumbprint for the certificate. Only used together with CommonName.
  final pulumi.Input<String>? issuerThumbprint;
  /// Certificate thumbprint.
  final pulumi.Input<String>? thumbprint;

  /// Creates a new [ClientCertificateResponse].
  /// [commonName] Certificate common name.
  /// [isAdmin] Indicates if the client certificate has admin access to the cluster. Non admin clients can perform only read only operations on the cluster.
  /// [issuerThumbprint] Issuer thumbprint for the certificate. Only used together with CommonName.
  /// [thumbprint] Certificate thumbprint.
  ClientCertificateResponse({
    this.commonName,
    required this.isAdmin,
    this.issuerThumbprint,
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonName': ?commonName,
      'isAdmin': isAdmin,
      'issuerThumbprint': ?issuerThumbprint,
      'thumbprint': ?thumbprint,
    };
  }

  factory ClientCertificateResponse.fromMap(Map<String, dynamic> map) {
    return ClientCertificateResponse(
      commonName: map['commonName'] == null ? null : (map['commonName']! as String).input(),
      isAdmin: (map['isAdmin'] as bool).input(),
      issuerThumbprint: map['issuerThumbprint'] == null ? null : (map['issuerThumbprint']! as String).input(),
      thumbprint: map['thumbprint'] == null ? null : (map['thumbprint']! as String).input(),
    );
  }
}

