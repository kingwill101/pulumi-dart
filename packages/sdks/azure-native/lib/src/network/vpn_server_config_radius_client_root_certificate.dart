// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of the Radius client root certificate of VpnServerConfiguration.
class VpnServerConfigRadiusClientRootCertificate {
  /// The certificate name.
  final pulumi.Input<String>? name;
  /// The Radius client root certificate thumbprint.
  final pulumi.Input<String>? thumbprint;

  /// Creates a new [VpnServerConfigRadiusClientRootCertificate].
  /// [name] The certificate name.
  /// [thumbprint] The Radius client root certificate thumbprint.
  VpnServerConfigRadiusClientRootCertificate({
    this.name,
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'thumbprint': ?thumbprint,
    };
  }

  factory VpnServerConfigRadiusClientRootCertificate.fromMap(Map<String, dynamic> map) {
    return VpnServerConfigRadiusClientRootCertificate(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      thumbprint: map['thumbprint'] == null ? null : (map['thumbprint'] as String).input(),
    );
  }
}

