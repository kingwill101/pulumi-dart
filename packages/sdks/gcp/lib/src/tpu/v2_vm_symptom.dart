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
  const V2VmSymptom({
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
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      details: (() { final guardedValue = map['details']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      symptomType: (() { final guardedValue = map['symptomType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workerId: (() { final guardedValue = map['workerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
