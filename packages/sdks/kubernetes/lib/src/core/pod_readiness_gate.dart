// ignore_for_file: unused_element, unnecessary_cast


/// PodReadinessGate contains the reference to a pod condition
class PodReadinessGate {
  /// ConditionType refers to a condition in the pod's condition list with matching type.
  final String conditionType;

  /// Creates a new [PodReadinessGate].
  /// [conditionType] ConditionType refers to a condition in the pod's condition list with matching type.
  PodReadinessGate({
    required this.conditionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditionType': conditionType,
    };
  }

  factory PodReadinessGate.fromMap(Map<String, dynamic> map) {
    return PodReadinessGate(
      conditionType: map['conditionType'] as String,
    );
  }
}

