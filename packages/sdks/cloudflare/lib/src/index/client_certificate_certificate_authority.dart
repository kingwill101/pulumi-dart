// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClientCertificateCertificateAuthority {
  final pulumi.Input<String?>? id;
  final pulumi.Input<String?>? name;

  /// Creates a new [ClientCertificateCertificateAuthority].
  /// [id] Optional.
  /// [name] Optional.
  const ClientCertificateCertificateAuthority({
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
    };
  }

  factory ClientCertificateCertificateAuthority.fromMap(Map<String, dynamic> map) {
    return ClientCertificateCertificateAuthority(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
