// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_job_trigger_inspect_job_inspect_config_limits_max_findings_per_info_type_info_type.dart';

class PreventionJobTriggerInspectJobInspectConfigLimitsMaxFindingsPerInfoType {
  /// Type of information the findings limit applies to. Only one limit per infoType should be provided. If InfoTypeLimit does
  /// not have an infoType, the DLP API applies the limit against all infoTypes that are found but not
  /// specified in another InfoTypeLimit.
  /// Structure is documented below.
  final pulumi.Input<PreventionJobTriggerInspectJobInspectConfigLimitsMaxFindingsPerInfoTypeInfoType>? infoType;
  /// Max findings limit for the given infoType.
  final pulumi.Input<int>? maxFindings;

  /// Creates a new [PreventionJobTriggerInspectJobInspectConfigLimitsMaxFindingsPerInfoType].
  /// [infoType] Type of information the findings limit applies to. Only one limit per infoType should be provided. If InfoTypeLimit does
  /// [maxFindings] Max findings limit for the given infoType.
  PreventionJobTriggerInspectJobInspectConfigLimitsMaxFindingsPerInfoType({
    this.infoType,
    this.maxFindings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infoType': ?pulumi.Input.mapOptionalInputValue<PreventionJobTriggerInspectJobInspectConfigLimitsMaxFindingsPerInfoTypeInfoType, Map<String, dynamic>>(infoType, (value) => value.toMap()),
      'maxFindings': ?maxFindings,
    };
  }

  factory PreventionJobTriggerInspectJobInspectConfigLimitsMaxFindingsPerInfoType.fromMap(Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobInspectConfigLimitsMaxFindingsPerInfoType(
      infoType: (() { final guardedValue = map['infoType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionJobTriggerInspectJobInspectConfigLimitsMaxFindingsPerInfoTypeInfoType.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxFindings: (() { final guardedValue = map['maxFindings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

