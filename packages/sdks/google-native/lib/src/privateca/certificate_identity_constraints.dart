// ignore_for_file: unused_element, unnecessary_cast

import 'expr.dart';

/// Describes constraints on a Certificate's Subject and SubjectAltNames.
class CertificateIdentityConstraints {
  /// If this is true, the SubjectAltNames extension may be copied from a certificate request into the signed certificate. Otherwise, the requested SubjectAltNames will be discarded.
  final bool allowSubjectAltNamesPassthrough;
  /// If this is true, the Subject field may be copied from a certificate request into the signed certificate. Otherwise, the requested Subject will be discarded.
  final bool allowSubjectPassthrough;
  /// Optional. A CEL expression that may be used to validate the resolved X.509 Subject and/or Subject Alternative Name before a certificate is signed. To see the full allowed syntax and some examples, see https://cloud.google.com/certificate-authority-service/docs/using-cel
  final Expr? celExpression;

  /// Creates a new [CertificateIdentityConstraints].
  /// [allowSubjectAltNamesPassthrough] If this is true, the SubjectAltNames extension may be copied from a certificate request into the signed certificate. Otherwise, the requested SubjectAltNames will be discarded.
  /// [allowSubjectPassthrough] If this is true, the Subject field may be copied from a certificate request into the signed certificate. Otherwise, the requested Subject will be discarded.
  /// [celExpression] Optional. A CEL expression that may be used to validate the resolved X.509 Subject and/or Subject Alternative Name before a certificate is signed. To see the full allowed syntax and some examples, see https://cloud.google.com/certificate-authority-service/docs/using-cel
  CertificateIdentityConstraints({
    required this.allowSubjectAltNamesPassthrough,
    required this.allowSubjectPassthrough,
    this.celExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowSubjectAltNamesPassthrough': allowSubjectAltNamesPassthrough,
      'allowSubjectPassthrough': allowSubjectPassthrough,
      'celExpression': ?celExpression == null ? null : celExpression!.toMap(),
    };
  }

  factory CertificateIdentityConstraints.fromMap(Map<String, dynamic> map) {
    return CertificateIdentityConstraints(
      allowSubjectAltNamesPassthrough: map['allowSubjectAltNamesPassthrough'] as bool,
      allowSubjectPassthrough: map['allowSubjectPassthrough'] as bool,
      celExpression: map['celExpression'] == null ? null : Expr.fromMap((map['celExpression'] as Map).cast<String, dynamic>()),
    );
  }
}

