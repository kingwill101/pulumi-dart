// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAuthoritySubordinateConfigPemIssuerChain {
  /// Expected to be in leaf-to-root order according to RFC 5246.
  final pulumi.Input<List<String>> pemCertificates;

  /// Creates a new [GetAuthoritySubordinateConfigPemIssuerChain].
  /// [pemCertificates] Expected to be in leaf-to-root order according to RFC 5246.
  const GetAuthoritySubordinateConfigPemIssuerChain({
    required this.pemCertificates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pemCertificates': pemCertificates,
    };
  }

  factory GetAuthoritySubordinateConfigPemIssuerChain.fromMap(Map<String, dynamic> map) {
    return GetAuthoritySubordinateConfigPemIssuerChain(
      pemCertificates: pulumi.Input.fromValue((map['pemCertificates'] as List).cast<String>()),
    );
  }
}

