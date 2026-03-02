// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_job_trigger_inspect_job_inspect_config_limits_max_findings_per_info_type.dart';

class PreventionJobTriggerInspectJobInspectConfigLimits {
  /// Configuration of findings limit given for specified infoTypes.
  /// Structure is documented below.
  final pulumi.Input<List<PreventionJobTriggerInspectJobInspectConfigLimitsMaxFindingsPerInfoType>>? maxFindingsPerInfoTypes;
  /// Max number of findings that will be returned for each item scanned. The maximum returned is 2000.
  final pulumi.Input<int>? maxFindingsPerItem;
  /// Max number of findings that will be returned per request/job. The maximum returned is 2000.
  final pulumi.Input<int>? maxFindingsPerRequest;

  /// Creates a new [PreventionJobTriggerInspectJobInspectConfigLimits].
  /// [maxFindingsPerInfoTypes] Configuration of findings limit given for specified infoTypes.
  /// [maxFindingsPerItem] Max number of findings that will be returned for each item scanned. The maximum returned is 2000.
  /// [maxFindingsPerRequest] Max number of findings that will be returned per request/job. The maximum returned is 2000.
  PreventionJobTriggerInspectJobInspectConfigLimits({
    this.maxFindingsPerInfoTypes,
    this.maxFindingsPerItem,
    this.maxFindingsPerRequest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxFindingsPerInfoTypes': ?pulumi.Input.mapOptionalInputValue<List<PreventionJobTriggerInspectJobInspectConfigLimitsMaxFindingsPerInfoType>, List<Map<String, dynamic>>>(maxFindingsPerInfoTypes, (value) => pulumi.Input.encodeList<PreventionJobTriggerInspectJobInspectConfigLimitsMaxFindingsPerInfoType, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxFindingsPerItem': ?maxFindingsPerItem,
      'maxFindingsPerRequest': ?maxFindingsPerRequest,
    };
  }

  factory PreventionJobTriggerInspectJobInspectConfigLimits.fromMap(Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobInspectConfigLimits(
      maxFindingsPerInfoTypes: map['maxFindingsPerInfoTypes'] == null ? null : (pulumi.Input.decodeList<PreventionJobTriggerInspectJobInspectConfigLimitsMaxFindingsPerInfoType>(map['maxFindingsPerInfoTypes'], (value) => PreventionJobTriggerInspectJobInspectConfigLimitsMaxFindingsPerInfoType.fromMap((value as Map).cast<String, dynamic>()))).input(),
      maxFindingsPerItem: map['maxFindingsPerItem'] == null ? null : (map['maxFindingsPerItem'] as int).input(),
      maxFindingsPerRequest: map['maxFindingsPerRequest'] == null ? null : (map['maxFindingsPerRequest'] as int).input(),
    );
  }
}

