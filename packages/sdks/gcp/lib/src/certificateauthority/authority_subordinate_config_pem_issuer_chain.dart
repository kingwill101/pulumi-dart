// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AuthoritySubordinateConfigPemIssuerChain {
  /// Expected to be in leaf-to-root order according to RFC 5246.
  final pulumi.Input<List<String>>? pemCertificates;

  /// Creates a new [AuthoritySubordinateConfigPemIssuerChain].
  /// [pemCertificates] Expected to be in leaf-to-root order according to RFC 5246.
  const AuthoritySubordinateConfigPemIssuerChain({
    this.pemCertificates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pemCertificates': ?pemCertificates,
    };
  }

  factory AuthoritySubordinateConfigPemIssuerChain.fromMap(Map<String, dynamic> map) {
    return AuthoritySubordinateConfigPemIssuerChain(
      pemCertificates: (() { final guardedValue = map['pemCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
