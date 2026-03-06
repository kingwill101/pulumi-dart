// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Additional data about the assignment
class AssignmentPropertiesResponseAdditionalData {
  /// Exemption category of this assignment
  final pulumi.Input<String>? exemptionCategory;

  /// Creates a new [AssignmentPropertiesResponseAdditionalData].
  /// [exemptionCategory] Exemption category of this assignment
  const AssignmentPropertiesResponseAdditionalData({
    this.exemptionCategory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exemptionCategory': ?exemptionCategory,
    };
  }

  factory AssignmentPropertiesResponseAdditionalData.fromMap(Map<String, dynamic> map) {
    return AssignmentPropertiesResponseAdditionalData(
      exemptionCategory: (() { final guardedValue = map['exemptionCategory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

