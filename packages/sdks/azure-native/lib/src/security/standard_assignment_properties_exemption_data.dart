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
  const StandardAssignmentPropertiesExemptionData({
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
      assignedAssessment: (() { final guardedValue = map['assignedAssessment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AssignedAssessmentItem.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      exemptionCategory: (() { final guardedValue = map['exemptionCategory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

