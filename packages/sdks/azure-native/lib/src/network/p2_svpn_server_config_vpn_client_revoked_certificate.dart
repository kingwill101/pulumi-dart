// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VPN client revoked certificate of P2SVpnServerConfiguration.
class P2SVpnServerConfigVpnClientRevokedCertificate {
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String>? etag;

  /// Resource ID.
  final pulumi.Input<String>? id;

  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;

  /// The revoked VPN client certificate thumbprint.
  final pulumi.Input<String>? thumbprint;

  /// Creates a new [P2SVpnServerConfigVpnClientRevokedCertificate].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [thumbprint] The revoked VPN client certificate thumbprint.
  P2SVpnServerConfigVpnClientRevokedCertificate({
    this.etag,
    this.id,
    this.name,
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': ?etag,
      'id': ?id,
      'name': ?name,
      'thumbprint': ?thumbprint,
    };
  }

  factory P2SVpnServerConfigVpnClientRevokedCertificate.fromMap(
    Map<String, dynamic> map,
  ) {
    return P2SVpnServerConfigVpnClientRevokedCertificate(
      etag: (() {
        final guardedValue = map['etag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      thumbprint: (() {
        final guardedValue = map['thumbprint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
