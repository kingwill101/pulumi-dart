// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackendServiceFabricClusterServerX509Name {
  /// The thumbprint for the issuer of the certificate.
  final pulumi.Input<String> issuerCertificateThumbprint;

  /// The common name of the certificate.
  final pulumi.Input<String> name;

  /// Creates a new [BackendServiceFabricClusterServerX509Name].
  /// [issuerCertificateThumbprint] The thumbprint for the issuer of the certificate.
  /// [name] The common name of the certificate.
  BackendServiceFabricClusterServerX509Name({
    required this.issuerCertificateThumbprint,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issuerCertificateThumbprint': issuerCertificateThumbprint,
      'name': name,
    };
  }

  factory BackendServiceFabricClusterServerX509Name.fromMap(
    Map<String, dynamic> map,
  ) {
    return BackendServiceFabricClusterServerX509Name(
      issuerCertificateThumbprint: pulumi.Input.fromValue(
        map['issuerCertificateThumbprint'] as String,
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
