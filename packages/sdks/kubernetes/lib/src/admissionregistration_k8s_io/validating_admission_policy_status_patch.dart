// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/condition_patch.dart';
import 'type_checking_patch.dart';

/// ValidatingAdmissionPolicyStatus represents the status of an admission validation policy.
class ValidatingAdmissionPolicyStatusPatch {
  /// The conditions represent the latest available observations of a policy's current state.
  final List<ConditionPatch>? conditions;
  /// The generation observed by the controller.
  final int? observedGeneration;
  /// The results of type checking for each expression. Presence of this field indicates the completion of the type checking.
  final TypeCheckingPatch? typeChecking;

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
      'conditions': ?conditions == null ? null : pulumi.Input.encodeList<ConditionPatch, Map<String, dynamic>>(conditions!, (value) => value.toMap()),
      'observedGeneration': ?observedGeneration,
      'typeChecking': ?typeChecking == null ? null : typeChecking!.toMap(),
    };
  }

  factory ValidatingAdmissionPolicyStatusPatch.fromMap(Map<String, dynamic> map) {
    return ValidatingAdmissionPolicyStatusPatch(
      conditions: map['conditions'] == null ? null : pulumi.Input.decodeList<ConditionPatch>(map['conditions'], (value) => ConditionPatch.fromMap((value as Map).cast<String, dynamic>())),
      observedGeneration: map['observedGeneration'] == null ? null : map['observedGeneration'] as int,
      typeChecking: map['typeChecking'] == null ? null : TypeCheckingPatch.fromMap((map['typeChecking'] as Map).cast<String, dynamic>()),
    );
  }
}

