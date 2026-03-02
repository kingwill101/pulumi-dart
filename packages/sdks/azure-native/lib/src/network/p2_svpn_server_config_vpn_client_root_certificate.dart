// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VPN client root certificate of P2SVpnServerConfiguration.
class P2SVpnServerConfigVpnClientRootCertificate {
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String>? etag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// The certificate public data.
  final pulumi.Input<String> publicCertData;

  /// Creates a new [P2SVpnServerConfigVpnClientRootCertificate].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [publicCertData] The certificate public data.
  P2SVpnServerConfigVpnClientRootCertificate({
    this.etag,
    this.id,
    this.name,
    required this.publicCertData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': ?etag,
      'id': ?id,
      'name': ?name,
      'publicCertData': publicCertData,
    };
  }

  factory P2SVpnServerConfigVpnClientRootCertificate.fromMap(Map<String, dynamic> map) {
    return P2SVpnServerConfigVpnClientRootCertificate(
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      publicCertData: (map['publicCertData'] as String).input(),
    );
  }
}

