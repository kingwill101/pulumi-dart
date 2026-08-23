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
  const VpnServerConfigRadiusClientRootCertificate({
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
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      thumbprint: (() { final guardedValue = map['thumbprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
