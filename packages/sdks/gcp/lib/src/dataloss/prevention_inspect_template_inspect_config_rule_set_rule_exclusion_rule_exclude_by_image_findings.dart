// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_inspect_template_inspect_config_rule_set_rule_exclusion_rule_exclude_by_image_findings_image_containment_type.dart';
import 'prevention_inspect_template_inspect_config_rule_set_rule_exclusion_rule_exclude_by_image_findings_info_type.dart';

class PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindings {
  /// Specifies the required spatial relationship between the bounding boxes of the target finding and the context infoType findings.
  /// Structure is documented below.
  final pulumi.Input<PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindingsImageContainmentType?>? imageContainmentType;
  /// A list of image-supported infoTypes to be used as context for the exclusion rule.
  /// Structure is documented below.
  final pulumi.Input<List<PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindingsInfoType>> infoTypes;

  /// Creates a new [PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindings].
  /// [imageContainmentType] Specifies the required spatial relationship between the bounding boxes of the target finding and the context infoType findings.
  /// [infoTypes] A list of image-supported infoTypes to be used as context for the exclusion rule.
  const PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindings({
    this.imageContainmentType,
    required this.infoTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageContainmentType': ?pulumi.Input.mapOptionalInputValue<PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindingsImageContainmentType, Map<String, dynamic>>(imageContainmentType, (value) => value.toMap()),
      'infoTypes': pulumi.Input.mapInputValue<List<PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindingsInfoType>, List<Map<String, dynamic>>>(infoTypes, (value) => pulumi.Input.encodeList<PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindingsInfoType, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindings.fromMap(Map<String, dynamic> map) {
    return PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindings(
      imageContainmentType: (() { final guardedValue = map['imageContainmentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindingsImageContainmentType.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      infoTypes: pulumi.Input.fromValue(pulumi.Input.decodeList<PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindingsInfoType>(map['infoTypes']!, (value) => PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindingsInfoType.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
