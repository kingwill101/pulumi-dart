// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_job_trigger_inspect_job_inspect_config_rule_set_rule_exclusion_rule_exclude_info_types_info_type.dart';

class PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypes {
  /// If a finding is matched by any of the infoType detectors listed here, the finding will be excluded from the scan results.
  /// Structure is documented below.
  final pulumi.Input<
    List<
      PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypesInfoType
    >
  >
  infoTypes;

  /// Creates a new [PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypes].
  /// [infoTypes] If a finding is matched by any of the infoType detectors listed here, the finding will be excluded from the scan results.
  PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypes({
    required this.infoTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infoTypes':
          pulumi.Input.mapInputValue<
            List<
              PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypesInfoType
            >,
            List<Map<String, dynamic>>
          >(
            infoTypes,
            (value) =>
                pulumi.Input.encodeList<
                  PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypesInfoType,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypes.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypes(
      infoTypes: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypesInfoType
        >(
          map['infoTypes']!,
          (value) =>
              PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypesInfoType.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
    );
  }
}
