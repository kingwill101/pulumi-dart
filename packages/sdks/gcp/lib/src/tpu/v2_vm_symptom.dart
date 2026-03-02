// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2VmSymptom {
  /// (Output)
  /// Timestamp when the Symptom is created.
  final pulumi.Input<String>? createTime;
  /// (Output)
  /// Detailed information of the current Symptom.
  final pulumi.Input<String>? details;
  /// (Output)
  /// Type of the Symptom.
  final pulumi.Input<String>? symptomType;
  /// (Output)
  /// A string used to uniquely distinguish a worker within a TPU node.
  final pulumi.Input<String>? workerId;

  /// Creates a new [V2VmSymptom].
  /// [createTime] (Output)
  /// [details] (Output)
  /// [symptomType] (Output)
  /// [workerId] (Output)
  V2VmSymptom({
    this.createTime,
    this.details,
    this.symptomType,
    this.workerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'details': ?details,
      'symptomType': ?symptomType,
      'workerId': ?workerId,
    };
  }

  factory V2VmSymptom.fromMap(Map<String, dynamic> map) {
    return V2VmSymptom(
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      details: map['details'] == null ? null : (map['details']! as String).input(),
      symptomType: map['symptomType'] == null ? null : (map['symptomType']! as String).input(),
      workerId: map['workerId'] == null ? null : (map['workerId']! as String).input(),
    );
  }
}

