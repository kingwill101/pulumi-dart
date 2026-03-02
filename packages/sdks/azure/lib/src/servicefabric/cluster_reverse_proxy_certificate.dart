// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterReverseProxyCertificate {
  /// The Thumbprint of the Certificate.
  final pulumi.Input<String> thumbprint;
  /// The Secondary Thumbprint of the Certificate.
  final pulumi.Input<String>? thumbprintSecondary;
  /// The X509 Store where the Certificate Exists, such as `My`.
  final pulumi.Input<String> x509StoreName;

  /// Creates a new [ClusterReverseProxyCertificate].
  /// [thumbprint] The Thumbprint of the Certificate.
  /// [thumbprintSecondary] The Secondary Thumbprint of the Certificate.
  /// [x509StoreName] The X509 Store where the Certificate Exists, such as `My`.
  ClusterReverseProxyCertificate({
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

  factory ClusterReverseProxyCertificate.fromMap(Map<String, dynamic> map) {
    return ClusterReverseProxyCertificate(
      thumbprint: (map['thumbprint'] as String).input(),
      thumbprintSecondary: map['thumbprintSecondary'] == null ? null : (map['thumbprintSecondary'] as String).input(),
      x509StoreName: (map['x509StoreName'] as String).input(),
    );
  }
}

