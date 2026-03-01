// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_inspect_template_inspect_config_rule_set_rule_exclusion_rule_exclude_info_types_info_type.dart';

class PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypes {
  /// If a finding is matched by any of the infoType detectors listed here, the finding will be excluded from the scan results.
  /// Structure is documented below.
  final List<PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypesInfoType> infoTypes;

  /// Creates a new [PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypes].
  /// [infoTypes] If a finding is matched by any of the infoType detectors listed here, the finding will be excluded from the scan results.
  PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypes({
    required this.infoTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infoTypes': pulumi.Input.encodeList<PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypesInfoType, Map<String, dynamic>>(infoTypes, (value) => value.toMap()),
    };
  }

  factory PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypes.fromMap(Map<String, dynamic> map) {
    return PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypes(
      infoTypes: pulumi.Input.decodeList<PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypesInfoType>(map['infoTypes'], (value) => PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypesInfoType.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

