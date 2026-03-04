// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterCertificate {
  /// The Thumbprint of the Certificate.
  final pulumi.Input<String> thumbprint;

  /// The Secondary Thumbprint of the Certificate.
  final pulumi.Input<String>? thumbprintSecondary;

  /// The X509 Store where the Certificate Exists, such as `My`.
  final pulumi.Input<String> x509StoreName;

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
      thumbprint: pulumi.Input.fromValue(map['thumbprint'] as String),
      thumbprintSecondary: (() {
        final guardedValue = map['thumbprintSecondary'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      x509StoreName: pulumi.Input.fromValue(map['x509StoreName'] as String),
    );
  }
}
