// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/condition_patch.dart';
import 'type_checking_patch.dart';

/// ValidatingAdmissionPolicyStatus represents the status of an admission validation policy.
class ValidatingAdmissionPolicyStatusPatch {
  /// The conditions represent the latest available observations of a policy's current state.
  final pulumi.Input<List<ConditionPatch>>? conditions;
  /// The generation observed by the controller.
  final pulumi.Input<int>? observedGeneration;
  /// The results of type checking for each expression. Presence of this field indicates the completion of the type checking.
  final pulumi.Input<TypeCheckingPatch>? typeChecking;

  /// Creates a new [ValidatingAdmissionPolicyStatusPatch].
  /// [conditions] The conditions represent the latest available observations of a policy's current state.
  /// [observedGeneration] The generation observed by the controller.
  /// [typeChecking] The results of type checking for each expression. Presence of this field indicates the completion of the type checking.
  ValidatingAdmissionPolicyStatusPatch({
    this.conditions,
    this.observedGeneration,
    this.typeChecking,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<ConditionPatch>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<ConditionPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'observedGeneration': ?observedGeneration,
      'typeChecking': ?pulumi.Input.mapOptionalInputValue<TypeCheckingPatch, Map<String, dynamic>>(typeChecking, (value) => value.toMap()),
    };
  }

  factory ValidatingAdmissionPolicyStatusPatch.fromMap(Map<String, dynamic> map) {
    return ValidatingAdmissionPolicyStatusPatch(
      conditions: map['conditions'] == null ? null : (pulumi.Input.decodeList<ConditionPatch>(map['conditions']!, (value) => ConditionPatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
      observedGeneration: map['observedGeneration'] == null ? null : (map['observedGeneration']! as int).input(),
      typeChecking: map['typeChecking'] == null ? null : (TypeCheckingPatch.fromMap((map['typeChecking']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

