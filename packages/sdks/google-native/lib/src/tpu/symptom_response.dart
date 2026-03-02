// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A Symptom instance.
class SymptomResponse {
  /// Timestamp when the Symptom is created.
  final pulumi.Input<String> createTime;
  /// Detailed information of the current Symptom.
  final pulumi.Input<String> details;
  /// Type of the Symptom.
  final pulumi.Input<String> symptomType;
  /// A string used to uniquely distinguish a worker within a TPU node.
  final pulumi.Input<String> workerId;

  /// Creates a new [SymptomResponse].
  /// [createTime] Timestamp when the Symptom is created.
  /// [details] Detailed information of the current Symptom.
  /// [symptomType] Type of the Symptom.
  /// [workerId] A string used to uniquely distinguish a worker within a TPU node.
  SymptomResponse({
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

  factory SymptomResponse.fromMap(Map<String, dynamic> map) {
    return SymptomResponse(
      createTime: (map['createTime'] as String).input(),
      details: (map['details'] as String).input(),
      symptomType: (map['symptomType'] as String).input(),
      workerId: (map['workerId'] as String).input(),
    );
  }
}

