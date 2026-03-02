// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/condition.dart';
import 'type_checking_admissionregistration_k8s_io_v1beta1.dart';

/// ValidatingAdmissionPolicyStatus represents the status of an admission validation policy.
class ValidatingAdmissionPolicyStatusAdmissionregistrationK8sIoV1beta1 {
  /// The conditions represent the latest available observations of a policy's current state.
  final pulumi.Input<List<Condition>>? conditions;
  /// The generation observed by the controller.
  final pulumi.Input<int>? observedGeneration;
  /// The results of type checking for each expression. Presence of this field indicates the completion of the type checking.
  final pulumi.Input<TypeCheckingAdmissionregistrationK8sIoV1beta1>? typeChecking;

  /// Creates a new [ValidatingAdmissionPolicyStatusAdmissionregistrationK8sIoV1beta1].
  /// [conditions] The conditions represent the latest available observations of a policy's current state.
  /// [observedGeneration] The generation observed by the controller.
  /// [typeChecking] The results of type checking for each expression. Presence of this field indicates the completion of the type checking.
  ValidatingAdmissionPolicyStatusAdmissionregistrationK8sIoV1beta1({
    this.conditions,
    this.observedGeneration,
    this.typeChecking,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<Condition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<Condition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'observedGeneration': ?observedGeneration,
      'typeChecking': ?pulumi.Input.mapOptionalInputValue<TypeCheckingAdmissionregistrationK8sIoV1beta1, Map<String, dynamic>>(typeChecking, (value) => value.toMap()),
    };
  }

  factory ValidatingAdmissionPolicyStatusAdmissionregistrationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return ValidatingAdmissionPolicyStatusAdmissionregistrationK8sIoV1beta1(
      conditions: map['conditions'] == null ? null : (pulumi.Input.decodeList<Condition>(map['conditions'], (value) => Condition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      observedGeneration: map['observedGeneration'] == null ? null : (map['observedGeneration'] as int).input(),
      typeChecking: map['typeChecking'] == null ? null : (TypeCheckingAdmissionregistrationK8sIoV1beta1.fromMap((map['typeChecking'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

