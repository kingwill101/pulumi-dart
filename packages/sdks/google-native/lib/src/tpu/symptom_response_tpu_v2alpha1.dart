// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A Symptom instance.
class SymptomResponseTpuV2alpha1 {
  /// Timestamp when the Symptom is created.
  final pulumi.Input<String> createTime;
  /// Detailed information of the current Symptom.
  final pulumi.Input<String> details;
  /// Type of the Symptom.
  final pulumi.Input<String> symptomType;
  /// A string used to uniquely distinguish a worker within a TPU node.
  final pulumi.Input<String> workerId;

  /// Creates a new [SymptomResponseTpuV2alpha1].
  /// [createTime] Timestamp when the Symptom is created.
  /// [details] Detailed information of the current Symptom.
  /// [symptomType] Type of the Symptom.
  /// [workerId] A string used to uniquely distinguish a worker within a TPU node.
  SymptomResponseTpuV2alpha1({
    required this.createTime,
    required this.details,
    required this.symptomType,
    required this.workerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'details': details,
      'symptomType': symptomType,
      'workerId': workerId,
    };
  }

  factory SymptomResponseTpuV2alpha1.fromMap(Map<String, dynamic> map) {
    return SymptomResponseTpuV2alpha1(
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      details: pulumi.Input.fromValue(map['details'] as String),
      symptomType: pulumi.Input.fromValue(map['symptomType'] as String),
      workerId: pulumi.Input.fromValue(map['workerId'] as String),
    );
  }
}

