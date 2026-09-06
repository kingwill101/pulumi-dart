// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assigned_assessment_item_response.dart';

/// Additional data about assignment that has Exempt effect
class StandardAssignmentPropertiesExemptionDataResponse {
  /// Component item with key as applied to this standard assignment over the given scope
  final pulumi.Input<AssignedAssessmentItemResponse?>? assignedAssessment;
  /// Exemption category of this assignment
  final pulumi.Input<String?>? exemptionCategory;

  /// Creates a new [StandardAssignmentPropertiesExemptionDataResponse].
  /// [assignedAssessment] Component item with key as applied to this standard assignment over the given scope
  /// [exemptionCategory] Exemption category of this assignment
  const StandardAssignmentPropertiesExemptionDataResponse({
    this.assignedAssessment,
    this.exemptionCategory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignedAssessment': ?pulumi.Input.mapOptionalInputValue<AssignedAssessmentItemResponse, Map<String, dynamic>>(assignedAssessment, (value) => value.toMap()),
      'exemptionCategory': ?exemptionCategory,
    };
  }

  factory StandardAssignmentPropertiesExemptionDataResponse.fromMap(Map<String, dynamic> map) {
    return StandardAssignmentPropertiesExemptionDataResponse(
      assignedAssessment: (() { final guardedValue = map['assignedAssessment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AssignedAssessmentItemResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      exemptionCategory: (() { final guardedValue = map['exemptionCategory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
