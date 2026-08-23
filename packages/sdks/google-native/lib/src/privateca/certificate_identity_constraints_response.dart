// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'expr_response.dart';

/// Describes constraints on a Certificate's Subject and SubjectAltNames.
class CertificateIdentityConstraintsResponse {
  /// If this is true, the SubjectAltNames extension may be copied from a certificate request into the signed certificate. Otherwise, the requested SubjectAltNames will be discarded.
  final pulumi.Input<bool> allowSubjectAltNamesPassthrough;
  /// If this is true, the Subject field may be copied from a certificate request into the signed certificate. Otherwise, the requested Subject will be discarded.
  final pulumi.Input<bool> allowSubjectPassthrough;
  /// Optional. A CEL expression that may be used to validate the resolved X.509 Subject and/or Subject Alternative Name before a certificate is signed. To see the full allowed syntax and some examples, see https://cloud.google.com/certificate-authority-service/docs/using-cel
  final pulumi.Input<ExprResponse> celExpression;

  /// Creates a new [CertificateIdentityConstraintsResponse].
  /// [allowSubjectAltNamesPassthrough] If this is true, the SubjectAltNames extension may be copied from a certificate request into the signed certificate. Otherwise, the requested SubjectAltNames will be discarded.
  /// [allowSubjectPassthrough] If this is true, the Subject field may be copied from a certificate request into the signed certificate. Otherwise, the requested Subject will be discarded.
  /// [celExpression] Optional. A CEL expression that may be used to validate the resolved X.509 Subject and/or Subject Alternative Name before a certificate is signed. To see the full allowed syntax and some examples, see https://cloud.google.com/certificate-authority-service/docs/using-cel
  const CertificateIdentityConstraintsResponse({
    required this.allowSubjectAltNamesPassthrough,
    required this.allowSubjectPassthrough,
    required this.celExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowSubjectAltNamesPassthrough': allowSubjectAltNamesPassthrough,
      'allowSubjectPassthrough': allowSubjectPassthrough,
      'celExpression': pulumi.Input.mapInputValue<ExprResponse, Map<String, dynamic>>(celExpression, (value) => value.toMap()),
    };
  }

  factory CertificateIdentityConstraintsResponse.fromMap(Map<String, dynamic> map) {
    return CertificateIdentityConstraintsResponse(
      allowSubjectAltNamesPassthrough: pulumi.Input.fromValue(map['allowSubjectAltNamesPassthrough'] as bool),
      allowSubjectPassthrough: pulumi.Input.fromValue(map['allowSubjectPassthrough'] as bool),
      celExpression: pulumi.Input.fromValue(ExprResponse.fromMap((map['celExpression']! as Map).cast<String, dynamic>())),
    );
  }
}
