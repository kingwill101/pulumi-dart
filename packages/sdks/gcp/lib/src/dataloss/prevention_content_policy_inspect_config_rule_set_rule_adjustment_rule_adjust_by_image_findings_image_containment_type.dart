// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByImageFindingsImageContainmentType {
  /// Defines a condition where one bounding box encloses another.
  final pulumi.Input<Map<String, dynamic>?>? encloses;
  /// Defines a condition where one bounding box is fully inside another.
  final pulumi.Input<Map<String, dynamic>?>? fullyInside;
  /// Defines a condition for overlapping bounding boxes.
  final pulumi.Input<Map<String, dynamic>?>? overlaps;

  /// Creates a new [PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByImageFindingsImageContainmentType].
  /// [encloses] Defines a condition where one bounding box encloses another.
  /// [fullyInside] Defines a condition where one bounding box is fully inside another.
  /// [overlaps] Defines a condition for overlapping bounding boxes.
  const PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByImageFindingsImageContainmentType({
    this.encloses,
    this.fullyInside,
    this.overlaps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encloses': ?encloses,
      'fullyInside': ?fullyInside,
      'overlaps': ?overlaps,
    };
  }

  factory PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByImageFindingsImageContainmentType.fromMap(Map<String, dynamic> map) {
    return PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByImageFindingsImageContainmentType(
      encloses: (() { final guardedValue = map['encloses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      fullyInside: (() { final guardedValue = map['fullyInside']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      overlaps: (() { final guardedValue = map['overlaps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
