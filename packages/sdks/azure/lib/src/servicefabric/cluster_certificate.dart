// ignore_for_file: unused_element, unnecessary_cast


class ClusterCertificate {
  /// The Thumbprint of the Certificate.
  final String thumbprint;
  /// The Secondary Thumbprint of the Certificate.
  final String? thumbprintSecondary;
  /// The X509 Store where the Certificate Exists, such as `My`.
  final String x509StoreName;

  /// Creates a new [ClusterCertificate].
  /// [thumbprint] The Thumbprint of the Certificate.
  /// [thumbprintSecondary] The Secondary Thumbprint of the Certificate.
  /// [x509StoreName] The X509 Store where the Certificate Exists, such as `My`.
  ClusterCertificate({
    required this.thumbprint,
    this.thumbprintSecondary,
    required this.x509StoreName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'thumbprint': thumbprint,
      'thumbprintSecondary': ?thumbprintSecondary,
      'x509StoreName': x509StoreName,
    };
  }

  factory ClusterCertificate.fromMap(Map<String, dynamic> map) {
    return ClusterCertificate(
      thumbprint: map['thumbprint'] as String,
      thumbprintSecondary: map['thumbprintSecondary'] == null ? null : map['thumbprintSecondary'] as String,
      x509StoreName: map['x509StoreName'] as String,
    );
  }
}

