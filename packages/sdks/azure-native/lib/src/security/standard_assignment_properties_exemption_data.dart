// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assigned_assessment_item.dart';

/// Additional data about assignment that has Exempt effect
class StandardAssignmentPropertiesExemptionData {
  /// Component item with key as applied to this standard assignment over the given scope
  final pulumi.Input<AssignedAssessmentItem>? assignedAssessment;
  /// Exemption category of this assignment
  final pulumi.Input<String>? exemptionCategory;

  /// Creates a new [StandardAssignmentPropertiesExemptionData].
  /// [assignedAssessment] Component item with key as applied to this standard assignment over the given scope
  /// [exemptionCategory] Exemption category of this assignment
  StandardAssignmentPropertiesExemptionData({
    this.assignedAssessment,
    this.exemptionCategory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignedAssessment': ?pulumi.Input.mapOptionalInputValue<AssignedAssessmentItem, Map<String, dynamic>>(assignedAssessment, (value) => value.toMap()),
      'exemptionCategory': ?exemptionCategory,
    };
  }

  factory StandardAssignmentPropertiesExemptionData.fromMap(Map<String, dynamic> map) {
    return StandardAssignmentPropertiesExemptionData(
      assignedAssessment: map['assignedAssessment'] == null ? null : (AssignedAssessmentItem.fromMap((map['assignedAssessment']! as Map).cast<String, dynamic>())).input(),
      exemptionCategory: map['exemptionCategory'] == null ? null : (map['exemptionCategory']! as String).input(),
    );
  }
}

