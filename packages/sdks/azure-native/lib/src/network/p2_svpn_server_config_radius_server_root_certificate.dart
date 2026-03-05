// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Radius Server root certificate of P2SVpnServerConfiguration.
class P2SVpnServerConfigRadiusServerRootCertificate {
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String>? etag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// The certificate public data.
  final pulumi.Input<String> publicCertData;

  /// Creates a new [P2SVpnServerConfigRadiusServerRootCertificate].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [publicCertData] The certificate public data.
  P2SVpnServerConfigRadiusServerRootCertificate({
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

  factory P2SVpnServerConfigRadiusServerRootCertificate.fromMap(Map<String, dynamic> map) {
    return P2SVpnServerConfigRadiusServerRootCertificate(
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicCertData: pulumi.Input.fromValue(map['publicCertData'] as String),
    );
  }
}

