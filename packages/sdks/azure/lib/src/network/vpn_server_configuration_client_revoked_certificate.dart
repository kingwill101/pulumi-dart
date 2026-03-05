// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VpnServerConfigurationClientRevokedCertificate {
  /// A name used to uniquely identify this certificate.
  final pulumi.Input<String> name;
  /// The Thumbprint of the Certificate.
  final pulumi.Input<String> thumbprint;

  /// Creates a new [VpnServerConfigurationClientRevokedCertificate].
  /// [name] A name used to uniquely identify this certificate.
  /// [thumbprint] The Thumbprint of the Certificate.
  VpnServerConfigurationClientRevokedCertificate({
    required this.name,
    required this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'thumbprint': thumbprint,
    };
  }

  factory VpnServerConfigurationClientRevokedCertificate.fromMap(Map<String, dynamic> map) {
    return VpnServerConfigurationClientRevokedCertificate(
      name: pulumi.Input.fromValue(map['name'] as String),
      thumbprint: pulumi.Input.fromValue(map['thumbprint'] as String),
    );
  }
}

