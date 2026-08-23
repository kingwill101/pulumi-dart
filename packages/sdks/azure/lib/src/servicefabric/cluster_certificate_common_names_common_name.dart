// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterCertificateCommonNamesCommonName {
  /// The common or subject name of the certificate.
  final pulumi.Input<String> certificateCommonName;
  /// The Issuer Thumbprint of the Certificate.
  ///
  /// &gt; **Note:** Certificate Issuer Thumbprint may become required in the future, `https://docs.microsoft.com/azure/service-fabric/service-fabric-create-cluster-using-cert-cn#download-and-update-a-sample-template`.
  final pulumi.Input<String>? certificateIssuerThumbprint;

  /// Creates a new [ClusterCertificateCommonNamesCommonName].
  /// [certificateCommonName] The common or subject name of the certificate.
  /// [certificateIssuerThumbprint] The Issuer Thumbprint of the Certificate.
  const ClusterCertificateCommonNamesCommonName({
    required this.certificateCommonName,
    this.certificateIssuerThumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateCommonName': certificateCommonName,
      'certificateIssuerThumbprint': ?certificateIssuerThumbprint,
    };
  }

  factory ClusterCertificateCommonNamesCommonName.fromMap(Map<String, dynamic> map) {
    return ClusterCertificateCommonNamesCommonName(
      certificateCommonName: pulumi.Input.fromValue(map['certificateCommonName'] as String),
      certificateIssuerThumbprint: (() { final guardedValue = map['certificateIssuerThumbprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
