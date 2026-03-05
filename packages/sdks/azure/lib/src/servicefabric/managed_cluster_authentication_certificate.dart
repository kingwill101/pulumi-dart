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
      commonName: (() { final guardedValue = map['commonName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      thumbprint: pulumi.Input.fromValue(map['thumbprint'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

