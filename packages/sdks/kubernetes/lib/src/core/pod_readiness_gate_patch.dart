// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PodReadinessGate contains the reference to a pod condition
class PodReadinessGatePatch {
  /// ConditionType refers to a condition in the pod's condition list with matching type.
  final pulumi.Input<String?>? conditionType;

  /// Creates a new [PodReadinessGatePatch].
  /// [conditionType] ConditionType refers to a condition in the pod's condition list with matching type.
  const PodReadinessGatePatch({
    this.conditionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditionType': ?conditionType,
    };
  }

  factory PodReadinessGatePatch.fromMap(Map<String, dynamic> map) {
    return PodReadinessGatePatch(
      conditionType: (() { final guardedValue = map['conditionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
