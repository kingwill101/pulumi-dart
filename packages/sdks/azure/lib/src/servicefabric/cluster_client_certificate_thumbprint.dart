// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterClientCertificateThumbprint {
  /// Does the Client Certificate have Admin Access to the cluster? Non-admin clients can only perform read only operations on the cluster.
  final pulumi.Input<bool> isAdmin;
  /// The Thumbprint associated with the Client Certificate.
  final pulumi.Input<String> thumbprint;

  /// Creates a new [ClusterClientCertificateThumbprint].
  /// [isAdmin] Does the Client Certificate have Admin Access to the cluster? Non-admin clients can only perform read only operations on the cluster.
  /// [thumbprint] The Thumbprint associated with the Client Certificate.
  const ClusterClientCertificateThumbprint({
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
      isAdmin: pulumi.Input.fromValue(map['isAdmin'] as bool),
      thumbprint: pulumi.Input.fromValue(map['thumbprint'] as String),
    );
  }
}
