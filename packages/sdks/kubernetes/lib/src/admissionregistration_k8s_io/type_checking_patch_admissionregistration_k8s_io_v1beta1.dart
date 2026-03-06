// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'expression_warning_patch_admissionregistration_k8s_io_v1beta1.dart';

/// TypeChecking contains results of type checking the expressions in the ValidatingAdmissionPolicy
class TypeCheckingPatchAdmissionregistrationK8sIoV1beta1 {
  /// The type checking warnings for each expression.
  final pulumi.Input<List<ExpressionWarningPatchAdmissionregistrationK8sIoV1beta1>>? expressionWarnings;

  /// Creates a new [TypeCheckingPatchAdmissionregistrationK8sIoV1beta1].
  /// [expressionWarnings] The type checking warnings for each expression.
  const TypeCheckingPatchAdmissionregistrationK8sIoV1beta1({
    this.expressionWarnings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expressionWarnings': ?pulumi.Input.mapOptionalInputValue<List<ExpressionWarningPatchAdmissionregistrationK8sIoV1beta1>, List<Map<String, dynamic>>>(expressionWarnings, (value) => pulumi.Input.encodeList<ExpressionWarningPatchAdmissionregistrationK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TypeCheckingPatchAdmissionregistrationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return TypeCheckingPatchAdmissionregistrationK8sIoV1beta1(
      expressionWarnings: (() { final guardedValue = map['expressionWarnings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExpressionWarningPatchAdmissionregistrationK8sIoV1beta1>(guardedValue, (value) => ExpressionWarningPatchAdmissionregistrationK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

