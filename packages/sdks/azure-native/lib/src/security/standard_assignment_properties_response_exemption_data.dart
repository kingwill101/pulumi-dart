// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assigned_assessment_item_response.dart';

/// Additional data about assignment that has Exempt effect
class StandardAssignmentPropertiesResponseExemptionData {
  /// Component item with key as applied to this standard assignment over the given scope
  final pulumi.Input<AssignedAssessmentItemResponse>? assignedAssessment;
  /// Exemption category of this assignment
  final pulumi.Input<String>? exemptionCategory;

  /// Creates a new [StandardAssignmentPropertiesResponseExemptionData].
  /// [assignedAssessment] Component item with key as applied to this standard assignment over the given scope
  /// [exemptionCategory] Exemption category of this assignment
  StandardAssignmentPropertiesResponseExemptionData({
    this.assignedAssessment,
    this.exemptionCategory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignedAssessment': ?pulumi.Input.mapOptionalInputValue<AssignedAssessmentItemResponse, Map<String, dynamic>>(assignedAssessment, (value) => value.toMap()),
      'exemptionCategory': ?exemptionCategory,
    };
  }

  factory StandardAssignmentPropertiesResponseExemptionData.fromMap(Map<String, dynamic> map) {
    return StandardAssignmentPropertiesResponseExemptionData(
      assignedAssessment: map['assignedAssessment'] == null ? null : (AssignedAssessmentItemResponse.fromMap((map['assignedAssessment'] as Map).cast<String, dynamic>())).input(),
      exemptionCategory: map['exemptionCategory'] == null ? null : (map['exemptionCategory'] as String).input(),
    );
  }
}

