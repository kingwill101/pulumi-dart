// ignore_for_file: unused_element, unnecessary_cast


class ClusterCertificateCommonNamesCommonName {
  /// The common or subject name of the certificate.
  final String certificateCommonName;
  /// The Issuer Thumbprint of the Certificate.
  ///
  /// > **Note:** Certificate Issuer Thumbprint may become required in the future, `https://docs.microsoft.com/azure/service-fabric/service-fabric-create-cluster-using-cert-cn#download-and-update-a-sample-template`.
  final String? certificateIssuerThumbprint;

  /// Creates a new [ClusterCertificateCommonNamesCommonName].
  /// [certificateCommonName] The common or subject name of the certificate.
  /// [certificateIssuerThumbprint] The Issuer Thumbprint of the Certificate.
  ClusterCertificateCommonNamesCommonName({
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
      certificateCommonName: map['certificateCommonName'] as String,
      certificateIssuerThumbprint: map['certificateIssuerThumbprint'] == null ? null : map['certificateIssuerThumbprint'] as String,
    );
  }
}

