// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of Radius Server root certificate of VpnServerConfiguration.
class VpnServerConfigRadiusServerRootCertificate {
  /// The certificate name.
  final pulumi.Input<String>? name;
  /// The certificate public data.
  final pulumi.Input<String>? publicCertData;

  /// Creates a new [VpnServerConfigRadiusServerRootCertificate].
  /// [name] The certificate name.
  /// [publicCertData] The certificate public data.
  const VpnServerConfigRadiusServerRootCertificate({
    this.name,
    this.publicCertData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'publicCertData': ?publicCertData,
    };
  }

  factory VpnServerConfigRadiusServerRootCertificate.fromMap(Map<String, dynamic> map) {
    return VpnServerConfigRadiusServerRootCertificate(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicCertData: (() { final guardedValue = map['publicCertData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
