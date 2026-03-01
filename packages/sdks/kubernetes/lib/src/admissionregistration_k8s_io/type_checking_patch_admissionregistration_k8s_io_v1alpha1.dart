// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'expression_warning_patch_admissionregistration_k8s_io_v1alpha1.dart';

/// TypeChecking contains results of type checking the expressions in the ValidatingAdmissionPolicy
class TypeCheckingPatchAdmissionregistrationK8sIoV1alpha1 {
  /// The type checking warnings for each expression.
  final List<ExpressionWarningPatchAdmissionregistrationK8sIoV1alpha1>? expressionWarnings;

  /// Creates a new [TypeCheckingPatchAdmissionregistrationK8sIoV1alpha1].
  /// [expressionWarnings] The type checking warnings for each expression.
  TypeCheckingPatchAdmissionregistrationK8sIoV1alpha1({
    this.expressionWarnings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expressionWarnings': ?expressionWarnings == null ? null : pulumi.Input.encodeList<ExpressionWarningPatchAdmissionregistrationK8sIoV1alpha1, Map<String, dynamic>>(expressionWarnings!, (value) => value.toMap()),
    };
  }

  factory TypeCheckingPatchAdmissionregistrationK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return TypeCheckingPatchAdmissionregistrationK8sIoV1alpha1(
      expressionWarnings: map['expressionWarnings'] == null ? null : pulumi.Input.decodeList<ExpressionWarningPatchAdmissionregistrationK8sIoV1alpha1>(map['expressionWarnings'], (value) => ExpressionWarningPatchAdmissionregistrationK8sIoV1alpha1.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

