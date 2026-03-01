// ignore_for_file: unused_element, unnecessary_cast


class ClusterClientCertificateCommonName {
  /// The common or subject name of the certificate.
  final String commonName;
  /// Does the Client Certificate have Admin Access to the cluster? Non-admin clients can only perform read only operations on the cluster.
  final bool isAdmin;
  /// The Issuer Thumbprint of the Certificate.
  ///
  /// > **Note:** Certificate Issuer Thumbprint may become required in the future, `https://docs.microsoft.com/azure/service-fabric/service-fabric-create-cluster-using-cert-cn#download-and-update-a-sample-template`.
  final String? issuerThumbprint;

  /// Creates a new [ClusterClientCertificateCommonName].
  /// [commonName] The common or subject name of the certificate.
  /// [isAdmin] Does the Client Certificate have Admin Access to the cluster? Non-admin clients can only perform read only operations on the cluster.
  /// [issuerThumbprint] The Issuer Thumbprint of the Certificate.
  ClusterClientCertificateCommonName({
    required this.commonName,
    required this.isAdmin,
    this.issuerThumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonName': commonName,
      'isAdmin': isAdmin,
      'issuerThumbprint': ?issuerThumbprint,
    };
  }

  factory ClusterClientCertificateCommonName.fromMap(Map<String, dynamic> map) {
    return ClusterClientCertificateCommonName(
      commonName: map['commonName'] as String,
      isAdmin: map['isAdmin'] as bool,
      issuerThumbprint: map['issuerThumbprint'] == null ? null : map['issuerThumbprint'] as String,
    );
  }
}

