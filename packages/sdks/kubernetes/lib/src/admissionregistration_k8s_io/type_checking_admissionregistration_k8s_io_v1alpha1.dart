// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'expression_warning_admissionregistration_k8s_io_v1alpha1.dart';

/// TypeChecking contains results of type checking the expressions in the ValidatingAdmissionPolicy
class TypeCheckingAdmissionregistrationK8sIoV1alpha1 {
  /// The type checking warnings for each expression.
  final pulumi.Input<List<ExpressionWarningAdmissionregistrationK8sIoV1alpha1>>? expressionWarnings;

  /// Creates a new [TypeCheckingAdmissionregistrationK8sIoV1alpha1].
  /// [expressionWarnings] The type checking warnings for each expression.
  const TypeCheckingAdmissionregistrationK8sIoV1alpha1({
    this.expressionWarnings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expressionWarnings': ?pulumi.Input.mapOptionalInputValue<List<ExpressionWarningAdmissionregistrationK8sIoV1alpha1>, List<Map<String, dynamic>>>(expressionWarnings, (value) => pulumi.Input.encodeList<ExpressionWarningAdmissionregistrationK8sIoV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TypeCheckingAdmissionregistrationK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return TypeCheckingAdmissionregistrationK8sIoV1alpha1(
      expressionWarnings: (() { final guardedValue = map['expressionWarnings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExpressionWarningAdmissionregistrationK8sIoV1alpha1>(guardedValue, (value) => ExpressionWarningAdmissionregistrationK8sIoV1alpha1.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
