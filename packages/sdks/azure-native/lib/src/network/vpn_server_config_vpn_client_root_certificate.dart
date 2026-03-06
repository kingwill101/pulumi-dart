// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of VPN client root certificate of VpnServerConfiguration.
class VpnServerConfigVpnClientRootCertificate {
  /// The certificate name.
  final pulumi.Input<String>? name;
  /// The certificate public data.
  final pulumi.Input<String>? publicCertData;

  /// Creates a new [VpnServerConfigVpnClientRootCertificate].
  /// [name] The certificate name.
  /// [publicCertData] The certificate public data.
  const VpnServerConfigVpnClientRootCertificate({
    this.name,
    this.publicCertData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'publicCertData': ?publicCertData,
    };
  }

  factory VpnServerConfigVpnClientRootCertificate.fromMap(Map<String, dynamic> map) {
    return VpnServerConfigVpnClientRootCertificate(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicCertData: (() { final guardedValue = map['publicCertData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

