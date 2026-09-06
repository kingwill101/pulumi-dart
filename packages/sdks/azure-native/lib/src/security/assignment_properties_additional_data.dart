// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Additional data about the assignment
class AssignmentPropertiesAdditionalData {
  /// Exemption category of this assignment
  final pulumi.Input<String?>? exemptionCategory;

  /// Creates a new [AssignmentPropertiesAdditionalData].
  /// [exemptionCategory] Exemption category of this assignment
  const AssignmentPropertiesAdditionalData({
    this.exemptionCategory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exemptionCategory': ?exemptionCategory,
    };
  }

  factory AssignmentPropertiesAdditionalData.fromMap(Map<String, dynamic> map) {
    return AssignmentPropertiesAdditionalData(
      exemptionCategory: (() { final guardedValue = map['exemptionCategory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
