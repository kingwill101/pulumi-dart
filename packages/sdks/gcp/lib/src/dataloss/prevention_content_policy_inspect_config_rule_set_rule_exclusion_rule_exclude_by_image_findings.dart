// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_content_policy_inspect_config_rule_set_rule_exclusion_rule_exclude_by_image_findings_image_containment_type.dart';
import 'prevention_content_policy_inspect_config_rule_set_rule_exclusion_rule_exclude_by_image_findings_info_type.dart';

class PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindings {
  /// Specifies the required spatial relationship between the bounding boxes of the target finding and the context infoType findings.
  /// Structure is documented below.
  final pulumi.Input<PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindingsImageContainmentType?>? imageContainmentType;
  /// A list of image-supported infoTypes to be used as context for the exclusion rule.
  /// Structure is documented below.
  final pulumi.Input<List<PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindingsInfoType>> infoTypes;

  /// Creates a new [PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindings].
  /// [imageContainmentType] Specifies the required spatial relationship between the bounding boxes of the target finding and the context infoType findings.
  /// [infoTypes] A list of image-supported infoTypes to be used as context for the exclusion rule.
  const PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindings({
    this.imageContainmentType,
    required this.infoTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageContainmentType': ?pulumi.Input.mapOptionalInputValue<PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindingsImageContainmentType, Map<String, dynamic>>(imageContainmentType, (value) => value.toMap()),
      'infoTypes': pulumi.Input.mapInputValue<List<PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindingsInfoType>, List<Map<String, dynamic>>>(infoTypes, (value) => pulumi.Input.encodeList<PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindingsInfoType, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindings.fromMap(Map<String, dynamic> map) {
    return PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindings(
      imageContainmentType: (() { final guardedValue = map['imageContainmentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindingsImageContainmentType.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      infoTypes: pulumi.Input.fromValue(pulumi.Input.decodeList<PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindingsInfoType>(map['infoTypes']!, (value) => PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindingsInfoType.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
