// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVpnServerConfigurationClientRevokedCertificate {
  /// The Name of the VPN Server Configuration.
  final pulumi.Input<String> name;
  /// The Thumbprint of the Certificate.
  final pulumi.Input<String> thumbprint;

  /// Creates a new [GetVpnServerConfigurationClientRevokedCertificate].
  /// [name] The Name of the VPN Server Configuration.
  /// [thumbprint] The Thumbprint of the Certificate.
  const GetVpnServerConfigurationClientRevokedCertificate({
    required this.name,
    required this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'thumbprint': thumbprint,
    };
  }

  factory GetVpnServerConfigurationClientRevokedCertificate.fromMap(Map<String, dynamic> map) {
    return GetVpnServerConfigurationClientRevokedCertificate(
      name: pulumi.Input.fromValue(map['name'] as String),
      thumbprint: pulumi.Input.fromValue(map['thumbprint'] as String),
    );
  }
}

