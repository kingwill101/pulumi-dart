// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Client certificate definition.
class ClientCertificate {
  /// Certificate common name.
  final pulumi.Input<String>? commonName;
  /// Indicates if the client certificate has admin access to the cluster. Non admin clients can perform only read only operations on the cluster.
  final pulumi.Input<bool> isAdmin;
  /// Issuer thumbprint for the certificate. Only used together with CommonName.
  final pulumi.Input<String>? issuerThumbprint;
  /// Certificate thumbprint.
  final pulumi.Input<String>? thumbprint;

  /// Creates a new [ClientCertificate].
  /// [commonName] Certificate common name.
  /// [isAdmin] Indicates if the client certificate has admin access to the cluster. Non admin clients can perform only read only operations on the cluster.
  /// [issuerThumbprint] Issuer thumbprint for the certificate. Only used together with CommonName.
  /// [thumbprint] Certificate thumbprint.
  const ClientCertificate({
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

  factory ClientCertificate.fromMap(Map<String, dynamic> map) {
    return ClientCertificate(
      commonName: (() { final guardedValue = map['commonName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isAdmin: pulumi.Input.fromValue(map['isAdmin'] as bool),
      issuerThumbprint: (() { final guardedValue = map['issuerThumbprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      thumbprint: (() { final guardedValue = map['thumbprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
