// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'expression_warning_admissionregistration_k8s_io_v1beta1.dart';

/// TypeChecking contains results of type checking the expressions in the ValidatingAdmissionPolicy
class TypeCheckingAdmissionregistrationK8sIoV1beta1 {
  /// The type checking warnings for each expression.
  final List<ExpressionWarningAdmissionregistrationK8sIoV1beta1>? expressionWarnings;

  /// Creates a new [TypeCheckingAdmissionregistrationK8sIoV1beta1].
  /// [expressionWarnings] The type checking warnings for each expression.
  TypeCheckingAdmissionregistrationK8sIoV1beta1({
    this.expressionWarnings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expressionWarnings': ?expressionWarnings == null ? null : pulumi.Input.encodeList<ExpressionWarningAdmissionregistrationK8sIoV1beta1, Map<String, dynamic>>(expressionWarnings!, (value) => value.toMap()),
    };
  }

  factory TypeCheckingAdmissionregistrationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return TypeCheckingAdmissionregistrationK8sIoV1beta1(
      expressionWarnings: map['expressionWarnings'] == null ? null : pulumi.Input.decodeList<ExpressionWarningAdmissionregistrationK8sIoV1beta1>(map['expressionWarnings'], (value) => ExpressionWarningAdmissionregistrationK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

