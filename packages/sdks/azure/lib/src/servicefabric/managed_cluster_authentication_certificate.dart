// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedClusterAuthenticationCertificate {
  /// The certificate's CN.
  final pulumi.Input<String>? commonName;
  /// The thumbprint of the certificate.
  final pulumi.Input<String> thumbprint;
  /// The type of the certificate. Can be `AdminClient` or `ReadOnlyClient`.
  final pulumi.Input<String> type;

  /// Creates a new [ManagedClusterAuthenticationCertificate].
  /// [commonName] The certificate's CN.
  /// [thumbprint] The thumbprint of the certificate.
  /// [type] The type of the certificate. Can be `AdminClient` or `ReadOnlyClient`.
  ManagedClusterAuthenticationCertificate({
    this.commonName,
    required this.thumbprint,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonName': ?commonName,
      'thumbprint': thumbprint,
      'type': type,
    };
  }

  factory ManagedClusterAuthenticationCertificate.fromMap(Map<String, dynamic> map) {
    return ManagedClusterAuthenticationCertificate(
      commonName: map['commonName'] == null ? null : (map['commonName'] as String).input(),
      thumbprint: (map['thumbprint'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

