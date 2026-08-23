// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Additional data about the assignment
class AssignmentPropertiesAdditionalDataResponse {
  /// Exemption category of this assignment
  final pulumi.Input<String>? exemptionCategory;

  /// Creates a new [AssignmentPropertiesAdditionalDataResponse].
  /// [exemptionCategory] Exemption category of this assignment
  const AssignmentPropertiesAdditionalDataResponse({
    this.exemptionCategory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exemptionCategory': ?exemptionCategory,
    };
  }

  factory AssignmentPropertiesAdditionalDataResponse.fromMap(Map<String, dynamic> map) {
    return AssignmentPropertiesAdditionalDataResponse(
      exemptionCategory: (() { final guardedValue = map['exemptionCategory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
