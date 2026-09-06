// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VPN client root certificate of virtual network gateway.
class VpnClientRootCertificate {
  /// Resource ID.
  final pulumi.Input<String?>? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String?>? name;
  /// The certificate public data.
  final pulumi.Input<String> publicCertData;

  /// Creates a new [VpnClientRootCertificate].
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [publicCertData] The certificate public data.
  const VpnClientRootCertificate({
    this.id,
    this.name,
    required this.publicCertData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'publicCertData': publicCertData,
    };
  }

  factory VpnClientRootCertificate.fromMap(Map<String, dynamic> map) {
    return VpnClientRootCertificate(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicCertData: pulumi.Input.fromValue(map['publicCertData'] as String),
    );
  }
}
