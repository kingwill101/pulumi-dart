// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/condition_patch.dart';
import 'type_checking_patch_admissionregistration_k8s_io_v1alpha1.dart';

/// ValidatingAdmissionPolicyStatus represents the status of a ValidatingAdmissionPolicy.
class ValidatingAdmissionPolicyStatusPatchAdmissionregistrationK8sIoV1alpha1 {
  /// The conditions represent the latest available observations of a policy's current state.
  final pulumi.Input<List<ConditionPatch>>? conditions;
  /// The generation observed by the controller.
  final pulumi.Input<int>? observedGeneration;
  /// The results of type checking for each expression. Presence of this field indicates the completion of the type checking.
  final pulumi.Input<TypeCheckingPatchAdmissionregistrationK8sIoV1alpha1>? typeChecking;

  /// Creates a new [ValidatingAdmissionPolicyStatusPatchAdmissionregistrationK8sIoV1alpha1].
  /// [conditions] The conditions represent the latest available observations of a policy's current state.
  /// [observedGeneration] The generation observed by the controller.
  /// [typeChecking] The results of type checking for each expression. Presence of this field indicates the completion of the type checking.
  ValidatingAdmissionPolicyStatusPatchAdmissionregistrationK8sIoV1alpha1({
    this.conditions,
    this.observedGeneration,
    this.typeChecking,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<ConditionPatch>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<ConditionPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'observedGeneration': ?observedGeneration,
      'typeChecking': ?pulumi.Input.mapOptionalInputValue<TypeCheckingPatchAdmissionregistrationK8sIoV1alpha1, Map<String, dynamic>>(typeChecking, (value) => value.toMap()),
    };
  }

  factory ValidatingAdmissionPolicyStatusPatchAdmissionregistrationK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return ValidatingAdmissionPolicyStatusPatchAdmissionregistrationK8sIoV1alpha1(
      conditions: map['conditions'] == null ? null : (pulumi.Input.decodeList<ConditionPatch>(map['conditions']!, (value) => ConditionPatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
      observedGeneration: map['observedGeneration'] == null ? null : (map['observedGeneration']! as int).input(),
      typeChecking: map['typeChecking'] == null ? null : (TypeCheckingPatchAdmissionregistrationK8sIoV1alpha1.fromMap((map['typeChecking']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

