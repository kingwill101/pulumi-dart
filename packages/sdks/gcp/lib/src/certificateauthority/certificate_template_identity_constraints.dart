// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_template_identity_constraints_cel_expression.dart';

class CertificateTemplateIdentityConstraints {
  /// Required. If this is true, the SubjectAltNames extension may be copied from a certificate request into the signed certificate. Otherwise, the requested SubjectAltNames will be discarded.
  final pulumi.Input<bool> allowSubjectAltNamesPassthrough;

  /// Required. If this is true, the Subject field may be copied from a certificate request into the signed certificate. Otherwise, the requested Subject will be discarded.
  final pulumi.Input<bool> allowSubjectPassthrough;

  /// Optional. A CEL expression that may be used to validate the resolved X.509 Subject and/or Subject Alternative Name before a certificate is signed. To see the full allowed syntax and some examples, see https://cloud.google.com/certificate-authority-service/docs/using-cel
  /// Structure is documented below.
  final pulumi.Input<CertificateTemplateIdentityConstraintsCelExpression>?
  celExpression;

  /// Creates a new [CertificateTemplateIdentityConstraints].
  /// [allowSubjectAltNamesPassthrough] Required. If this is true, the SubjectAltNames extension may be copied from a certificate request into the signed certificate. Otherwise, the requested SubjectAltNames will be discarded.
  /// [allowSubjectPassthrough] Required. If this is true, the Subject field may be copied from a certificate request into the signed certificate. Otherwise, the requested Subject will be discarded.
  /// [celExpression] Optional. A CEL expression that may be used to validate the resolved X.509 Subject and/or Subject Alternative Name before a certificate is signed. To see the full allowed syntax and some examples, see https://cloud.google.com/certificate-authority-service/docs/using-cel
  CertificateTemplateIdentityConstraints({
    required this.allowSubjectAltNamesPassthrough,
    required this.allowSubjectPassthrough,
    this.celExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowSubjectAltNamesPassthrough': allowSubjectAltNamesPassthrough,
      'allowSubjectPassthrough': allowSubjectPassthrough,
      'celExpression':
          ?pulumi.Input.mapOptionalInputValue<
            CertificateTemplateIdentityConstraintsCelExpression,
            Map<String, dynamic>
          >(celExpression, (value) => value.toMap()),
    };
  }

  factory CertificateTemplateIdentityConstraints.fromMap(
    Map<String, dynamic> map,
  ) {
    return CertificateTemplateIdentityConstraints(
      allowSubjectAltNamesPassthrough: pulumi.Input.fromValue(
        map['allowSubjectAltNamesPassthrough'] as bool,
      ),
      allowSubjectPassthrough: pulumi.Input.fromValue(
        map['allowSubjectPassthrough'] as bool,
      ),
      celExpression: (() {
        final guardedValue = map['celExpression'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CertificateTemplateIdentityConstraintsCelExpression.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
