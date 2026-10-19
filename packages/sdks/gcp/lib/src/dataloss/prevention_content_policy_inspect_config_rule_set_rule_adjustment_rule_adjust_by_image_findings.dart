// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_content_policy_inspect_config_rule_set_rule_adjustment_rule_adjust_by_image_findings_image_containment_type.dart';
import 'prevention_content_policy_inspect_config_rule_set_rule_adjustment_rule_adjust_by_image_findings_info_type.dart';

class PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByImageFindings {
  /// Specifies the required spatial relationship between the bounding boxes of the target finding and the context infoType findings.
  /// Structure is documented below.
  final pulumi.Input<PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByImageFindingsImageContainmentType?>? imageContainmentType;
  /// A list of image-supported infoTypes to be used as context for the adjustment rule.
  /// Structure is documented below.
  final pulumi.Input<List<PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByImageFindingsInfoType>> infoTypes;
  /// Minimum likelihood of the adjustByImageFindings infoTypes finding.
  /// Possible values are: `VERY_UNLIKELY`, `UNLIKELY`, `POSSIBLE`, `LIKELY`, `VERY_LIKELY`.
  final pulumi.Input<String> minLikelihood;

  /// Creates a new [PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByImageFindings].
  /// [imageContainmentType] Specifies the required spatial relationship between the bounding boxes of the target finding and the context infoType findings.
  /// [infoTypes] A list of image-supported infoTypes to be used as context for the adjustment rule.
  /// [minLikelihood] Minimum likelihood of the adjustByImageFindings infoTypes finding.
  const PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByImageFindings({
    this.imageContainmentType,
    required this.infoTypes,
    required this.minLikelihood,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageContainmentType': ?pulumi.Input.mapOptionalInputValue<PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByImageFindingsImageContainmentType, Map<String, dynamic>>(imageContainmentType, (value) => value.toMap()),
      'infoTypes': pulumi.Input.mapInputValue<List<PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByImageFindingsInfoType>, List<Map<String, dynamic>>>(infoTypes, (value) => pulumi.Input.encodeList<PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByImageFindingsInfoType, Map<String, dynamic>>(value, (value) => value.toMap())),
      'minLikelihood': minLikelihood,
    };
  }

  factory PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByImageFindings.fromMap(Map<String, dynamic> map) {
    return PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByImageFindings(
      imageContainmentType: (() { final guardedValue = map['imageContainmentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByImageFindingsImageContainmentType.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      infoTypes: pulumi.Input.fromValue(pulumi.Input.decodeList<PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByImageFindingsInfoType>(map['infoTypes']!, (value) => PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByImageFindingsInfoType.fromMap((value as Map).cast<String, dynamic>()))),
      minLikelihood: pulumi.Input.fromValue(map['minLikelihood'] as String),
    );
  }
}
