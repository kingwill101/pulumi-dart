// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of Radius Server root certificate of VpnServerConfiguration.
class VpnServerConfigRadiusServerRootCertificateResponse {
  /// The certificate name.
  final pulumi.Input<String>? name;

  /// The certificate public data.
  final pulumi.Input<String>? publicCertData;

  /// Creates a new [VpnServerConfigRadiusServerRootCertificateResponse].
  /// [name] The certificate name.
  /// [publicCertData] The certificate public data.
  VpnServerConfigRadiusServerRootCertificateResponse({
    this.name,
    this.publicCertData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'publicCertData': ?publicCertData};
  }

  factory VpnServerConfigRadiusServerRootCertificateResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return VpnServerConfigRadiusServerRootCertificateResponse(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publicCertData: (() {
        final guardedValue = map['publicCertData'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
