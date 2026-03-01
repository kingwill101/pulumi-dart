// ignore_for_file: unused_element, unnecessary_cast


class ClusterClientCertificateThumbprint {
  /// Does the Client Certificate have Admin Access to the cluster? Non-admin clients can only perform read only operations on the cluster.
  final bool isAdmin;
  /// The Thumbprint associated with the Client Certificate.
  final String thumbprint;

  /// Creates a new [ClusterClientCertificateThumbprint].
  /// [isAdmin] Does the Client Certificate have Admin Access to the cluster? Non-admin clients can only perform read only operations on the cluster.
  /// [thumbprint] The Thumbprint associated with the Client Certificate.
  ClusterClientCertificateThumbprint({
    required this.isAdmin,
    required this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isAdmin': isAdmin,
      'thumbprint': thumbprint,
    };
  }

  factory ClusterClientCertificateThumbprint.fromMap(Map<String, dynamic> map) {
    return ClusterClientCertificateThumbprint(
      isAdmin: map['isAdmin'] as bool,
      thumbprint: map['thumbprint'] as String,
    );
  }
}

