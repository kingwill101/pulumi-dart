// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_content_policy_inspect_config_rule_set_rule_exclusion_rule_exclude_info_types_info_type.dart';

class PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypes {
  /// If a finding is matched by any of the infoType detectors listed here, the finding will be excluded from the scan results.
  /// Structure is documented below.
  final pulumi.Input<List<PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypesInfoType>> infoTypes;

  /// Creates a new [PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypes].
  /// [infoTypes] If a finding is matched by any of the infoType detectors listed here, the finding will be excluded from the scan results.
  const PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypes({
    required this.infoTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infoTypes': pulumi.Input.mapInputValue<List<PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypesInfoType>, List<Map<String, dynamic>>>(infoTypes, (value) => pulumi.Input.encodeList<PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypesInfoType, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypes.fromMap(Map<String, dynamic> map) {
    return PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypes(
      infoTypes: pulumi.Input.fromValue(pulumi.Input.decodeList<PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypesInfoType>(map['infoTypes']!, (value) => PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypesInfoType.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
