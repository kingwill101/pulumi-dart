// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_job_trigger_inspect_job_action.dart';
import 'prevention_job_trigger_inspect_job_inspect_config.dart';
import 'prevention_job_trigger_inspect_job_storage_config.dart';

class PreventionJobTriggerInspectJob {
  /// Configuration block for the actions to execute on the completion of a job. Can be specified multiple times, but only one for each type. Each action block supports fields documented below. This argument is processed in attribute-as-blocks mode.
  /// Structure is documented below.
  final pulumi.Input<List<PreventionJobTriggerInspectJobAction>>? actions;
  /// The core content of the template.
  /// Structure is documented below.
  final pulumi.Input<PreventionJobTriggerInspectJobInspectConfig>? inspectConfig;
  /// The name of the template to run when this job is triggered.
  final pulumi.Input<String>? inspectTemplateName;
  /// Information on where to inspect
  /// Structure is documented below.
  final pulumi.Input<PreventionJobTriggerInspectJobStorageConfig> storageConfig;

  /// Creates a new [PreventionJobTriggerInspectJob].
  /// [actions] Configuration block for the actions to execute on the completion of a job. Can be specified multiple times, but only one for each type. Each action block supports fields documented below. This argument is processed in attribute-as-blocks mode.
  /// [inspectConfig] The core content of the template.
  /// [inspectTemplateName] The name of the template to run when this job is triggered.
  /// [storageConfig] Information on where to inspect
  PreventionJobTriggerInspectJob({
    this.actions,
    this.inspectConfig,
    this.inspectTemplateName,
    required this.storageConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?pulumi.Input.mapOptionalInputValue<List<PreventionJobTriggerInspectJobAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<PreventionJobTriggerInspectJobAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inspectConfig': ?pulumi.Input.mapOptionalInputValue<PreventionJobTriggerInspectJobInspectConfig, Map<String, dynamic>>(inspectConfig, (value) => value.toMap()),
      'inspectTemplateName': ?inspectTemplateName,
      'storageConfig': pulumi.Input.mapInputValue<PreventionJobTriggerInspectJobStorageConfig, Map<String, dynamic>>(storageConfig, (value) => value.toMap()),
    };
  }

  factory PreventionJobTriggerInspectJob.fromMap(Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJob(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PreventionJobTriggerInspectJobAction>(guardedValue, (value) => PreventionJobTriggerInspectJobAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      inspectConfig: (() { final guardedValue = map['inspectConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionJobTriggerInspectJobInspectConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inspectTemplateName: (() { final guardedValue = map['inspectTemplateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageConfig: pulumi.Input.fromValue(PreventionJobTriggerInspectJobStorageConfig.fromMap((map['storageConfig']! as Map).cast<String, dynamic>())),
    );
  }
}

