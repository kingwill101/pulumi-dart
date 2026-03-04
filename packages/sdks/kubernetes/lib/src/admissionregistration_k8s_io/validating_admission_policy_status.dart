// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/condition.dart';
import 'type_checking.dart';

/// ValidatingAdmissionPolicyStatus represents the status of an admission validation policy.
class ValidatingAdmissionPolicyStatus {
  /// The conditions represent the latest available observations of a policy's current state.
  final pulumi.Input<List<Condition>>? conditions;

  /// The generation observed by the controller.
  final pulumi.Input<int>? observedGeneration;

  /// The results of type checking for each expression. Presence of this field indicates the completion of the type checking.
  final pulumi.Input<TypeChecking>? typeChecking;

  /// Creates a new [ValidatingAdmissionPolicyStatus].
  /// [conditions] The conditions represent the latest available observations of a policy's current state.
  /// [observedGeneration] The generation observed by the controller.
  /// [typeChecking] The results of type checking for each expression. Presence of this field indicates the completion of the type checking.
  ValidatingAdmissionPolicyStatus({
    this.conditions,
    this.observedGeneration,
    this.typeChecking,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions':
          ?pulumi.Input.mapOptionalInputValue<
            List<Condition>,
            List<Map<String, dynamic>>
          >(
            conditions,
            (value) => pulumi.Input.encodeList<Condition, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
      'observedGeneration': ?observedGeneration,
      'typeChecking':
          ?pulumi.Input.mapOptionalInputValue<
            TypeChecking,
            Map<String, dynamic>
          >(typeChecking, (value) => value.toMap()),
    };
  }

  factory ValidatingAdmissionPolicyStatus.fromMap(Map<String, dynamic> map) {
    return ValidatingAdmissionPolicyStatus(
      conditions: (() {
        final guardedValue = map['conditions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<Condition>(
            guardedValue,
            (value) =>
                Condition.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      observedGeneration: (() {
        final guardedValue = map['observedGeneration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      typeChecking: (() {
        final guardedValue = map['typeChecking'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          TypeChecking.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
    );
  }
}
